package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationManagerCompat;
import io.appmetrica.analytics.push.coreutils.internal.commands.SystemInfoCommandInfo;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class D2 implements C {
    public final C1522x0 a;
    public final C1519w0 b;

    public D2(C1522x0 c1522x0, C1519w0 c1519w0) {
        this.a = c1522x0;
        this.b = c1519w0;
    }

    @Override // io.appmetrica.analytics.push.impl.C
    public final void a(Context context, Bundle bundle) {
        Long statusChangeTime;
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.info("Update system info", new Object[0]);
        if (!r.a(context).g()) {
            publicLogger.warning("Failed to update system info. AppMetricaPush is not activated", new Object[0]);
            TrackersHub.getInstance().reportEvent("Failed to update system info. AppMetricaPush is not activated");
            return;
        }
        this.a.getClass();
        C1515v c1515v = r.a(context).f;
        if (c1515v.j == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.j == null) {
                        Context context2 = c1515v.p;
                        c1515v.j = new C1529z1((NotificationManager) context2.getSystemService("notification"), NotificationManagerCompat.from(context2), new L1(context2, ".NOTIFICATION_STATUS"));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C1508s1 c1508s1A = c1515v.j.c.a();
        Bundle bundle2 = bundle.getBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO");
        SystemInfoCommandInfo systemInfoCommandInfoFromBundle = bundle2 != null ? SystemInfoCommandInfo.Companion.fromBundle(bundle2) : null;
        if (systemInfoCommandInfoFromBundle != null && (statusChangeTime = systemInfoCommandInfoFromBundle.getStatusChangeTime()) != null) {
            c1508s1A.e = Long.valueOf(statusChangeTime.longValue());
        }
        q2 q2Var = new q2(c1508s1A);
        publicLogger.info("System info event: " + q2Var.a(), new Object[0]);
        this.b.getClass();
        X1.b.a(q2Var.a().toString());
    }
}
