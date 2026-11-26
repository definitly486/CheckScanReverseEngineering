package defpackage;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class ev3 implements f94 {
    public final String a;
    public final String b;

    public ev3() {
        this.a = ta8.D("ruStore", "huawei", false) ? "HUAWEI" : "ANDROID";
        this.b = ta8.D("ruStore", "huawei", false) ? "HU" : ta8.D("ruStore", "xiaomi", false) ? "XI" : ta8.D("ruStore", "play", false) ? "GP" : ta8.D("ruStore", "ruStore", false) ? "RU" : "android";
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        b37 b37VarA = ez6Var.e;
        if (ta8.D(b37VarA.a.d, "checkscan.org", false)) {
            b37.a aVarA = b37VarA.a();
            aVarA.b("X-TZ-OFFSET", String.valueOf(TimeZone.getDefault().getRawOffset()));
            aVarA.b("Os", this.a);
            aVarA.b("store", this.b);
            aVarA.b("App-version", "2.14.5.79");
            x17.a.getClass();
            aVarA.b("Test-group-id", CommonUrlParts.Values.FALSE_INTEGER);
            b37VarA = aVarA.a();
        }
        return ez6Var.b(b37VarA);
    }
}
