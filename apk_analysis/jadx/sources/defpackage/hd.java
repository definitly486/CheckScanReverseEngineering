package defpackage;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.perf.metrics.Trace;
import com.warefly.checkscan.R;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.provider.firebase.FirebasePushServiceControllerProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class hd extends gd {
    public final void b() {
        Trace traceCreate = Trace.create("analytics_onCreate");
        traceCreate.getClass();
        traceCreate.start();
        try {
            Trace traceCreate2 = Trace.create("analytics_firebase");
            traceCreate2.getClass();
            traceCreate2.start();
            try {
                Context context = gd.c;
                if (context == null) {
                    aa4.j("appContext");
                    throw null;
                }
                FirebaseApp.initializeApp(context);
                traceCreate2.stop();
                Trace traceCreate3 = Trace.create("analytics_appmetrica");
                traceCreate3.getClass();
                traceCreate3.start();
                try {
                    gd.a();
                    j59 j59Var = j59.a;
                    traceCreate3.stop();
                    Trace traceCreate4 = Trace.create("analytics_posthog");
                    traceCreate4.getClass();
                    traceCreate4.start();
                    try {
                        Context context2 = gd.c;
                        if (context2 == null) {
                            aa4.j("appContext");
                            throw null;
                        }
                        if (context2 == null) {
                            aa4.j("appContext");
                            throw null;
                        }
                        String string = context2.getString(R.string.posthog_key);
                        string.getClass();
                        Context context3 = gd.c;
                        if (context3 == null) {
                            aa4.j("appContext");
                            throw null;
                        }
                        String string2 = context3.getString(R.string.posthog_host);
                        string2.getClass();
                        zb6.a(context2, string, string2);
                        traceCreate4.stop();
                        traceCreate.stop();
                        Context context4 = gd.c;
                        if (context4 == null) {
                            aa4.j("appContext");
                            throw null;
                        }
                        if (context4 != null) {
                            AppMetricaPush.activate(context4, new FirebasePushServiceControllerProvider(context4));
                        } else {
                            aa4.j("appContext");
                            throw null;
                        }
                    } catch (Throwable th) {
                        traceCreate4.stop();
                        throw th;
                    }
                } catch (Throwable th2) {
                    traceCreate3.stop();
                    throw th2;
                }
            } catch (Throwable th3) {
                traceCreate2.stop();
                throw th3;
            }
        } catch (Throwable th4) {
            traceCreate.stop();
            throw th4;
        }
    }
}
