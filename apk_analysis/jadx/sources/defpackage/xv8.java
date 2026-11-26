package defpackage;

import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class xv8<U, T extends U> extends af7<T> implements Runnable {
    public final long g;

    public xv8(long j, f02 f02Var) {
        super(f02Var, f02Var.getContext());
        this.g = j;
    }

    @Override // defpackage.sb4
    public final String X() {
        StringBuilder sb = new StringBuilder(super.X());
        sb.append("(timeMillis=");
        return lg.f(sb, this.g, ')');
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    @Override // java.lang.Runnable
    public final void run() {
        String strD;
        o22 o22Var = this.e;
        wk2 wk2VarC = yk2.c(o22Var);
        w22 w22Var = (w22) o22Var.get(w22.d);
        String str = w22Var != null ? w22Var.c : null;
        zk2 zk2Var = wk2VarC instanceof zk2 ? (zk2) wk2VarC : null;
        long j = this.g;
        if (zk2Var != null) {
            wt2.a aVar = wt2.c;
            yt2.f(j, au2.MILLISECONDS);
            strD = zk2Var.n();
            if (strD == null) {
                strD = bg.d(j, "Timed out waiting for ", " ms");
            }
        } else {
            strD = bg.d(j, "Timed out waiting for ", " ms");
        }
        if (str != null) {
            StringBuilder sbD = n7.d("Coroutine \"", str, "\" ");
            if (strD.length() > 0) {
                strD = Character.toLowerCase(strD.charAt(0)) + strD.substring(1);
            }
            sbD.append(strD);
            strD = sbD.toString();
        }
        w(new TimeoutCancellationException(strD, this));
    }
}
