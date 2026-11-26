package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class ca0 {
    public final pb0 a;
    public final j5 b;
    public final s47 c;
    public final ct6<Boolean> d = new ct6<>();

    public ca0(pb0 pb0Var, j5 j5Var, s47 s47Var) {
        this.a = pb0Var;
        this.b = j5Var;
        this.c = s47Var;
    }

    public final p08 a() {
        mz7<d41> mz7VarA = this.a.a();
        q9 q9Var = new q9(new he1(this), 1);
        mz7VarA.getClass();
        return new p08(mz7VarA, q9Var);
    }

    public final e08 b(String str, cw1 cw1Var) {
        str.getClass();
        cw1Var.getClass();
        Pattern patternCompile = Pattern.compile("\\s");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        mz7<a57<bw1>> mz7VarH = this.a.h(new r76(cw1Var, qc9.ACCOUNT, strReplaceAll));
        w90 w90Var = new w90(z90.f);
        mz7VarH.getClass();
        return new e08(mz7VarH, w90Var);
    }

    public final void c(String str) {
        str.getClass();
        this.a.f().onNext(str);
    }
}
