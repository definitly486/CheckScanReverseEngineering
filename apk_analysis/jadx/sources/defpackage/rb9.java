package defpackage;

import coil3.request.NullRequestDataException;

/* JADX INFO: loaded from: classes3.dex */
public final class rb9 {

    public static final class a implements nl3 {
        public static final a b = new a();

        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            return null;
        }
    }

    public static final u03 a(b24 b24Var, Throwable th) {
        x04 x04VarInvoke;
        if (th instanceof NullRequestDataException) {
            nl3<b24, x04> nl3Var = b24Var.n;
            b24.b bVar = b24Var.t;
            x04VarInvoke = nl3Var.invoke(b24Var);
            if (x04VarInvoke == null) {
                x04VarInvoke = bVar.j.invoke(b24Var);
            }
            if (x04VarInvoke == null && (x04VarInvoke = b24Var.m.invoke(b24Var)) == null) {
                x04VarInvoke = bVar.i.invoke(b24Var);
            }
        } else {
            x04VarInvoke = b24Var.m.invoke(b24Var);
            if (x04VarInvoke == null) {
                x04VarInvoke = b24Var.t.i.invoke(b24Var);
            }
        }
        return new u03(x04VarInvoke, b24Var, th);
    }
}
