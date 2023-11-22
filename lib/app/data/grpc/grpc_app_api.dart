import 'package:grpc/grpc.dart';

import 'generated/auth.pbgrpc.dart';

class UserRepo {
  late AuthRpcClient authRpcClient;
  late final ClientChannel channel;

  UserRepo() {
    channel = ClientChannel(
      '10.0.2.2',
      port: 4400,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(seconds: 10),
        ),
    );
    authRpcClient = AuthRpcClient(channel);
  }

/*  Future<TokensDto> getUser() async {
    final user = await authRpcClient
        .signIn(UserDto(email: 'test5@mail.ru', password: 'test5'));
    return user;
  }*/
}
