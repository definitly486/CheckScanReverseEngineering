package yads;

import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class pp2 {
    public final np2 a;

    public pp2(Handler handler) {
        this.a = new np2(handler);
    }

    public final void a(r75 r75Var, z85 z85Var, dw dwVar) {
        synchronized (r75Var.f) {
            r75Var.l = true;
        }
        r75Var.a("post-response");
        np2 np2Var = this.a;
        np2Var.a.post(new op2(r75Var, z85Var, dwVar));
    }
}
