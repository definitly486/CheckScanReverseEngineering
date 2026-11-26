package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;
import com.my.target.w1;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.TJUser;
import java.util.List;
import yads.wn;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fp implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fp(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x008f, code lost:
    
        if (r9.n <= 0) goto L46;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AppCompatDelegate.lambda$syncRequestedAndStoredLocales$1((Context) obj);
                break;
            case 1:
                TJUser.a((TJSetUserIDListener) obj);
                break;
            case 2:
                w1 w1Var = (w1) obj;
                List list = w1Var.f;
                if (w1Var.E()) {
                    if (w1Var.q == 1 && !w1Var.D() && list.size() > w1Var.t) {
                        w1Var.u -= 200;
                    }
                    if (w1Var.u <= 0) {
                        kha khaVar = w1Var.e;
                        if (khaVar == null || (!khaVar.Y && !w1Var.s)) {
                            w1Var.A();
                        } else if (w1Var.m != null) {
                            if (!w1Var.D()) {
                                w1Var.m.d();
                                w1Var.j.removeCallbacks(w1Var.o);
                            } else {
                                w1Var.m.b();
                            }
                        }
                    }
                }
                if (w1Var.C() && !w1Var.r) {
                    int i2 = w1Var.q;
                    if (i2 != 0) {
                        if (i2 == 1 && (w1Var.D() || list.size() >= w1Var.t)) {
                            w1Var.n -= 200;
                        }
                    }
                    w1Var.B();
                }
                if (w1Var.E() || (w1Var.C() && !w1Var.r)) {
                    w1Var.v();
                }
                break;
            default:
                wn.b((wn) obj);
                break;
        }
    }
}
