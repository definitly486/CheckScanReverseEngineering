package io.appmetrica.analytics.push.coreutils.internal.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.internal.service.FakeService;

/* JADX INFO: loaded from: classes5.dex */
public final class NoServiceController implements PushServiceCommandLauncher {
    private final Context a;

    public NoServiceController(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.coreutils.internal.service.PushServiceCommandLauncher
    public void launchService(Bundle bundle) {
        Intent intentPutExtras = new Intent().setComponent(new ComponentName(this.a.getPackageName(), "io.appmetrica.analytics.push.internal.service.FakeService")).putExtras(bundle);
        try {
            FakeService fakeService = FakeService.INSTANCE;
            FakeService.class.getMethod("onStartCommand", Context.class, Intent.class).invoke(null, this.a, intentPutExtras);
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Calling FakeService for command " + bundle.getString(Commands.EXTRA_COMMAND) + " failed", th);
        }
    }
}
