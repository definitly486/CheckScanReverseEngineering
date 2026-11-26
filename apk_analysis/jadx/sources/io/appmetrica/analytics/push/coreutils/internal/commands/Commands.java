package io.appmetrica.analytics.push.coreutils.internal.commands;

/* JADX INFO: loaded from: classes5.dex */
public final class Commands {
    public static final String EXTRA_COMMAND = "io.appmetrica.analytics.push.extra.COMMAND";
    public static final String EXTRA_COMMAND_RECEIVED_TIME = "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME";
    public static final Commands INSTANCE = new Commands();

    public static final class InitPushService {
        public static final String COMMAND_ACTION = "io.appmetrica.analytics.push.command.INIT_PUSH_SERVICE";
        public static final InitPushService INSTANCE = new InitPushService();

        private InitPushService() {
        }
    }

    public static final class ProcessPush {
        public static final String COMMAND_ACTION = "io.appmetrica.analytics.push.command.PROCESS_PUSH";
        public static final ProcessPush INSTANCE = new ProcessPush();

        private ProcessPush() {
        }
    }

    public static final class SendPushToken {
        public static final String EXTRA_INFO = "io.appmetrica.analytics.push.extra.EXTRA_INFO";
        public static final String INIT_PUSH_TOKEN_COMMAND_ACTION = "io.appmetrica.analytics.push.command.INIT_PUSH_TOKEN";
        public static final SendPushToken INSTANCE = new SendPushToken();
        public static final String SEND_PUSH_TOKEN_MANUALLY_COMMAND_ACTION = "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_MANUALLY";
        public static final String SEND_PUSH_TOKEN_ON_REFRESH_COMMAND_ACTION = "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_ON_REFRESH";
        public static final String UPDATE_PUSH_TOKEN_COMMAND_ACTION = "io.appmetrica.analytics.push.command.UPDATE_PUSH_TOKEN";

        private SendPushToken() {
        }
    }

    public static final class UpdateSystemInfo {
        public static final String COMMAND_ACTION = "io.appmetrica.analytics.push.command.UPDATE_SYSTEM_INFO";
        public static final String EXTRA_INFO = "io.appmetrica.analytics.push.extra.EXTRA_INFO";
        public static final UpdateSystemInfo INSTANCE = new UpdateSystemInfo();

        private UpdateSystemInfo() {
        }
    }

    private Commands() {
    }
}
