package defpackage;

import com.my.target.g1;
import com.my.target.w0;
import com.my.tracker.obfuscated.a2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bn9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bn9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((a2) obj).b();
                break;
            default:
                w0 w0Var = (w0) obj;
                g1.a aVar = w0Var.n;
                if (aVar != null) {
                    aVar.n(w0Var.q / 1000.0d);
                }
                long j = w0Var.q;
                if (j <= 0) {
                    w0Var.d.setCloseVisible(true);
                    g1.a aVar2 = w0Var.n;
                    if (aVar2 != null) {
                        aVar2.a(true);
                        w0Var.b.e(w0Var.c);
                    }
                } else {
                    w0Var.q = j - 200;
                }
                break;
        }
    }
}
