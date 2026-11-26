package io.appmetrica.analytics.push.coreutils.internal;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import io.appmetrica.analytics.push.coreutils.internal.commands.PushTokenCommandInfo;
import io.appmetrica.analytics.push.coreutils.internal.commands.SystemInfoCommandInfo;
import io.appmetrica.analytics.push.coreutils.internal.model.ServiceType;
import io.appmetrica.analytics.push.coreutils.internal.model.TransportPushMessage;

/* JADX INFO: loaded from: classes5.dex */
public final class PushServiceFacade {
    public static final PushServiceFacade INSTANCE = new PushServiceFacade();
    private static CommandServiceWrapper a = new CommandServiceWrapper();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServiceType.values().length];
            try {
                iArr[ServiceType.PROVIDER_SERVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServiceType.APPMETRICA_PUSH_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServiceType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PushServiceFacade() {
    }

    public static final void initPushService(Context context) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.InitPushService.COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        CommandServiceWrapper.startCommand$default(a, context, bundle, false, 4, null);
    }

    public static final void initToken(Context context, String str) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.SendPushToken.INIT_PUSH_TOKEN_COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle.putBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO", new PushTokenCommandInfo.Builder(str).build().toBundle());
        CommandServiceWrapper.startCommand$default(a, context, bundle, false, 4, null);
    }

    public static final void processPush(Context context, Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        INSTANCE.getClass();
        bundle2.putString(Commands.EXTRA_COMMAND, Commands.ProcessPush.COMMAND_ACTION);
        bundle2.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle2.putAll(bundle);
        bundle2.putString(CoreConstants.EXTRA_TRANSPORT, str);
        TransportPushMessage transportPushMessage = new TransportPushMessage(bundle2);
        Long processingMinTime = transportPushMessage.getProcessingMinTime();
        if (processingMinTime != null) {
            bundle2.putLong(CoreConstants.MIN_PROCESSING_DELAY, processingMinTime.longValue());
        }
        if (transportPushMessage.isOwnPush()) {
            a.startCommand(context, bundle2, WhenMappings.$EnumSwitchMapping$0[transportPushMessage.getServiceType().ordinal()] != 1);
        }
    }

    public static final void sendSystemInfo(Context context, Long l) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.UpdateSystemInfo.COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle.putBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO", new SystemInfoCommandInfo.Builder().withStatusChangeTime(l).build().toBundle());
        CommandServiceWrapper.startCommand$default(a, context, bundle, false, 4, null);
    }

    public static final void sendToken(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.SendPushToken.UPDATE_PUSH_TOKEN_COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle.putBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO", new PushTokenCommandInfo.Builder(str).withToken(str2).build().toBundle());
        a.startCommand(context, bundle, false);
    }

    public static final void sendTokenManually(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.SendPushToken.SEND_PUSH_TOKEN_MANUALLY_COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle.putBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO", new PushTokenCommandInfo.Builder(str).withToken(str2).build().toBundle());
        a.startCommand(context, bundle, false);
    }

    public static final void sendTokenOnRefresh(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        INSTANCE.getClass();
        bundle.putString(Commands.EXTRA_COMMAND, Commands.SendPushToken.SEND_PUSH_TOKEN_ON_REFRESH_COMMAND_ACTION);
        bundle.putLong(Commands.EXTRA_COMMAND_RECEIVED_TIME, System.currentTimeMillis());
        bundle.putBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO", new PushTokenCommandInfo.Builder(str).withToken(str2).build().toBundle());
        a.startCommand(context, bundle, false);
    }

    public static final void setJobIntentServiceWrapper(CommandServiceWrapper commandServiceWrapper) {
        a = commandServiceWrapper;
    }
}
