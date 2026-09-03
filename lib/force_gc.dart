import 'dart:developer' as developer;

import 'package:vm_service/vm_service.dart';
import 'package:vm_service/vm_service_io.dart';

// Has to be run with `--enable-vm-service`.
Future<void> forceGC() async {
  // 1. Get the local VM Service WebSockets URI
  developer.ServiceProtocolInfo info = await developer.Service.getInfo();

  if (info.serverUri == null) {
    print('VM Service is not running. Start app with --enable-vm-service');
    return;
  }

  // 2. Convert http/https URI to ws/wss
  Uri uri = info.serverUri!;
  Uri wsUri = uri.replace(scheme: uri.scheme == 'https' ? 'wss' : 'ws', path: '${uri.path}ws');

  // 3. Connect to VM Service client
  VmService service = await vmServiceConnectUri(wsUri.toString());

  // 4. Find the main isolate and trigger GC
  VM vm = await service.getVM();
  String isolateId = vm.isolates!.first.id!;

  // _collectAllGarbage is a private VM RPC endpoint
  await service.callMethod('_collectAllGarbage', isolateId: isolateId);

  print('Garbage collection triggered successfully.');
  await service.dispose();
}
