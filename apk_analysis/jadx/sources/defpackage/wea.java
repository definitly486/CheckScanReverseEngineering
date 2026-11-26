package defpackage;

import com.my.target.c3;
import com.my.target.hg;
import yads.v15;
import yads.wn;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wea implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wea(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((v15) obj).g();
                break;
            case 1:
                wn.c((wn) obj);
                break;
            default:
                c3 c3Var = (c3) obj;
                hg hgVar = c3Var.e;
                if (c3Var.q) {
                    c3Var.o();
                    hgVar.d(false);
                    hgVar.f();
                    c3Var.q = false;
                }
                break;
        }
    }
}
