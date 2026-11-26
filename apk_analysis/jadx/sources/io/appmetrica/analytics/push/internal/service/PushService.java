package io.appmetrica.analytics.push.internal.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.impl.C;
import io.appmetrica.analytics.push.impl.D;
import io.appmetrica.analytics.push.impl.F;
import io.appmetrica.analytics.push.impl.G2;
import io.appmetrica.analytics.push.impl.RunnableC1446a2;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class PushService extends Service {
    private final D a = new D();
    private final ExecutorService b = Executors.newSingleThreadExecutor();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            String stringExtra = intent.getStringExtra(Commands.EXTRA_COMMAND);
            F.a(stringExtra, intent.getLongExtra(Commands.EXTRA_COMMAND_RECEIVED_TIME, -1L), G2.a(intent.getExtras()), "PushService");
            C c = (C) this.a.a.get(stringExtra);
            if (c == null) {
                return 2;
            }
            this.b.execute(new RunnableC1446a2(this, c, intent));
            return 2;
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Failed to handle command ", th);
            PublicLogger.INSTANCE.error(th, "An unexpected error occurred while running the AppMetrica Push SDK. You can report it via https://appmetrica.io/docs/troubleshooting/other.html", new Object[0]);
            return 2;
        }
    }
}
