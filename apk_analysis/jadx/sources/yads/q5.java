package yads;

import android.os.Bundle;
import java.lang.ref.WeakReference;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class q5 implements g4 {
    public final h9 a;
    public final WeakReference b;

    public q5(lf4 lf4Var) {
        h9 h9Var = new h9();
        WeakReference weakReference = new WeakReference(lf4Var);
        this.a = h9Var;
        this.b = weakReference;
        e55 e55Var = h9Var.a;
        defpackage.ze4 ze4Var = h9.b[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(this);
    }

    @Override // yads.g4
    public final void a(int i, Bundle bundle) throws JSONException {
        lf4 lf4Var = (lf4) this.b.get();
        if (lf4Var != null) {
            if (i == 19) {
                lf4Var.a.b();
                lf4Var.b.f.b.b(q1.CUSTOM);
                return;
            }
            if (i == 20) {
                lf4Var.b.f.b.a(q1.CUSTOM);
                return;
            }
            switch (i) {
                case 6:
                    lf4Var.a.b();
                    lf4Var.b.f.b.b(q1.WEBVIEW);
                    break;
                case 7:
                    lf4Var.a.b();
                    lf4Var.b.f.c();
                    break;
                case 8:
                    lf4Var.b.f.b.a(q1.WEBVIEW);
                    break;
                case 9:
                    lf4Var.b.f.a();
                    break;
            }
        }
    }
}
