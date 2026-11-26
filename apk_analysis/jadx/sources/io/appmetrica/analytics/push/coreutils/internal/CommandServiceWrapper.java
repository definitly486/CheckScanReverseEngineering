package io.appmetrica.analytics.push.coreutils.internal;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.service.PushServiceControllerProvider;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;

/* JADX INFO: loaded from: classes5.dex */
public final class CommandServiceWrapper {
    private PushServiceControllerProvider a;

    public static /* synthetic */ void startCommand$default(CommandServiceWrapper commandServiceWrapper, Context context, Bundle bundle, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        commandServiceWrapper.startCommand(context, bundle, z);
    }

    public final void setPushServiceControllerProvider(PushServiceControllerProvider pushServiceControllerProvider) {
        this.a = pushServiceControllerProvider;
    }

    public final void startCommand(Context context, Bundle bundle, boolean z) {
        PushServiceControllerProvider pushServiceControllerProvider;
        try {
            synchronized (this) {
                pushServiceControllerProvider = this.a;
                if (pushServiceControllerProvider == null) {
                    pushServiceControllerProvider = new PushServiceControllerProvider(context);
                    this.a = pushServiceControllerProvider;
                }
            }
            pushServiceControllerProvider.getPushServiceCommandLauncher(z).launchService(bundle);
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Start failed", th);
        }
    }
}
