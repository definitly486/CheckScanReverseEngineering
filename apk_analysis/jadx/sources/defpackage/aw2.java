package defpackage;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class aw2 implements xv2 {
    public final ov2 a;

    public aw2(ov2 ov2Var) {
        this.a = ov2Var;
    }

    @Override // defpackage.xv2
    public final mz7<Boolean> a() {
        return this.a.a();
    }

    @Override // defpackage.xv2
    public final mz7 b(ArrayList arrayList) {
        return this.a.c(arrayList);
    }

    @Override // defpackage.xv2
    public final pr5 c(oz6 oz6Var, String str) {
        tq5<hl3.a> tq5VarB = this.a.b(new mf4(oz6Var.f()), str);
        up0 up0Var = new up0(new zv2(oz6Var), 2);
        tq5VarB.getClass();
        return new pr5(tq5VarB, up0Var);
    }

    @Override // defpackage.xv2
    public final mz7 d(String str, String str2, String str3) {
        return this.a.e(new yb7(Integer.parseInt("1000"), Integer.parseInt(CommonUrlParts.Values.FALSE_INTEGER), str, str2, "RECEIVE_DATE:DESC"), str3);
    }

    @Override // defpackage.xv2
    public final p08 e(String str) {
        mz7<n37> mz7VarD = this.a.d(new u99(str));
        tp0 tp0Var = new tp0(yv2.f, 1);
        mz7VarD.getClass();
        return new p08(mz7VarD, tp0Var);
    }

    @Override // defpackage.xv2
    public final mz7<String> getUrl() {
        return this.a.getUrl();
    }
}
