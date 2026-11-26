package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.internal.AppMetricaService;

/* JADX INFO: loaded from: classes5.dex */
public final class V1 {
    public static Intent a(Context context) {
        C1184pj c1184pj;
        C1169p4.l().v.getClass();
        Intent data = new Intent(context, (Class<?>) AppMetricaService.class).setAction("io.appmetrica.analytics.IAppMetricaService").setData(new Uri.Builder().scheme(S7.b).authority(context.getPackageName()).path("client").appendQueryParameter("pid", String.valueOf(Process.myPid())).appendQueryParameter("psid", Pf.c).build());
        C1169p4 c1169p4L = C1169p4.l();
        synchronized (c1169p4L) {
            try {
                if (c1169p4L.p == null) {
                    C1184pj c1184pj2 = new C1184pj();
                    c1169p4L.p = c1184pj2;
                    c1169p4L.h.a(c1184pj2);
                }
                c1184pj = c1169p4L.p;
            } catch (Throwable th) {
                throw th;
            }
        }
        ScreenInfo screenInfoA = c1184pj.a(context);
        return data.putExtra("screen_size", screenInfoA != null ? AbstractC1305ub.a(screenInfoA) : null);
    }
}
