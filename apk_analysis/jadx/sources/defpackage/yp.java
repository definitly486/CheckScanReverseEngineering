package defpackage;

import android.util.Log;
import io.appmetrica.analytics.AppMetrica;

/* JADX INFO: loaded from: classes5.dex */
public final class yp {

    @bq7("name")
    private final String a;

    @bq7("attributes")
    private final String b;

    public yp(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final void a() {
        try {
            AppMetrica.reportEvent(this.a, this.b);
            String str = this.a;
            String str2 = this.b;
            fh8 fh8Var = ht3.a;
            str2.getClass();
            Log.d("AnalyticsEvent", "EventName: " + str + ", attributes: " + ht3.c().j(str2));
        } catch (Throwable unused) {
        }
    }
}
