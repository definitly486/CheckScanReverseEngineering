package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class xq5 implements tq5 {
    public final /* synthetic */ nl3 a;

    public xq5(nl3 nl3Var) {
        this.a = nl3Var;
    }

    @Override // yads.tq5
    public final void a(z00 z00Var) {
        s45 s45VarA = z00Var.a("SELECT * FROM raw_json", new String[0]);
        try {
            this.a.invoke(s45VarA);
            defpackage.m96.c(s45VarA, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                defpackage.m96.c(s45VarA, th);
                throw th2;
            }
        }
    }

    public final String toString() {
        return "Selecting all raw jsons";
    }
}
