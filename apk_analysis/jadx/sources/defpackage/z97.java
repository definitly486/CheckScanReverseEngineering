package defpackage;

import android.os.Build;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class z97 implements f94 {
    public final ll3<String> a;
    public final String b;
    public final String c;

    public z97(ll3 ll3Var) {
        String str;
        ll3Var.getClass();
        this.a = ll3Var;
        String str2 = "android";
        if (ta8.D("ruStore", "huawei", false)) {
            str = "huawei";
        } else {
            String str3 = Build.MANUFACTURER;
            str3.getClass();
            str = ta8.D(str3, "xiaomi", true) ? "xiaomi" : "android";
        }
        this.b = str;
        if (ta8.D("ruStore", "huawei", false)) {
            str2 = "HU";
        } else if (ta8.D("ruStore", "xiaomi", false)) {
            str2 = "XI";
        } else if (ta8.D("ruStore", "play", false)) {
            str2 = "GP";
        } else if (ta8.D("ruStore", "ruStore", false)) {
            str2 = "RU";
        }
        this.c = str2;
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        b37 b37VarA = ez6Var.e;
        if (ta8.D(b37VarA.a.d, "checkscan.org", false)) {
            b37.a aVarA = b37VarA.a();
            aVarA.b("X-TZ-OFFSET", String.valueOf(TimeZone.getDefault().getRawOffset()));
            aVarA.b("Os", this.b);
            aVarA.b("storeName", this.c);
            aVarA.b("App-version", "2.14.5.79");
            aVarA.b("Test-group-id", this.a.invoke());
            aVarA.b("Accept", "application/json");
            aVarA.b("Accept", "text/event-stream");
            b37VarA = aVarA.a();
        }
        return ez6Var.b(b37VarA);
    }
}
