package io.appmetrica.analytics.push.internal.service;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.impl.C;
import io.appmetrica.analytics.push.impl.D;
import io.appmetrica.analytics.push.impl.F;
import io.appmetrica.analytics.push.impl.G2;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public final class FakeService {
    public static final FakeService INSTANCE = new FakeService();
    private static final D a = new D();
    private static final ExecutorService b = Executors.newSingleThreadExecutor();

    private FakeService() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C c, Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        extras.getClass();
        c.a(context, extras);
    }

    public static final void onStartCommand(final Context context, final Intent intent) {
        try {
            String stringExtra = intent.getStringExtra(Commands.EXTRA_COMMAND);
            long longExtra = intent.getLongExtra(Commands.EXTRA_COMMAND_RECEIVED_TIME, -1L);
            Bundle extras = intent.getExtras();
            extras.getClass();
            F.a(stringExtra, longExtra, G2.a(extras), "FakeService");
            final C c = (C) a.a.get(stringExtra);
            if (c != null) {
                b.execute(new Runnable() { // from class: io.appmetrica.analytics.push.internal.service.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        FakeService.a(c, context, intent);
                    }
                });
            }
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Failed to handle command ", th);
            PublicLogger.INSTANCE.error(th, "An unexpected error occurred while running the AppMetrica Push SDK. You can report it via https://appmetrica.io/docs/troubleshooting/other.html", new Object[0]);
        }
    }
}
