package yads;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u71 extends RecyclerView.ViewHolder {
    public final pi2 a;
    public final tt b;
    public final w41 c;
    public final qh2 d;
    public br0 e;

    public u71(pi2 pi2Var, tt ttVar, w41 w41Var, qh2 qh2Var) {
        super(pi2Var);
        this.a = pi2Var;
        this.b = ttVar;
        this.c = w41Var;
        this.d = qh2Var;
    }

    public abstract void a();

    /* JADX WARN: Code duplicated, block: B:23:0x003a  */
    /* JADX WARN: Code duplicated, block: B:25:0x003e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053 A[LOOP:0: B:27:0x004d->B:29:0x0053, LOOP_END] */
    public void a(tt ttVar, br0 br0Var, int i, n32 n32Var) {
        vq0 vq0Var;
        Iterator<View> it;
        View viewC;
        tt ttVarC;
        fs2 fs2Var;
        vq0 vq0Var2 = ttVar.a;
        fs2 fs2Var2 = ttVar.b;
        vq0Var2.getClass();
        View viewJ = this.a.j();
        if (viewJ != null) {
            viewC = null;
            if (this.e == null) {
                viewJ = null;
            }
            if (viewJ == null) {
                if (this.e != null) {
                    a();
                }
                pi2 pi2Var = this.a;
                vq0Var = ttVar.a;
                it = ViewGroupKt.getChildren(pi2Var).iterator();
                while (it.hasNext()) {
                    di2.a(vq0Var.u(), it.next());
                }
                pi2Var.removeAllViews();
                viewC = this.d.c(br0Var, ttVar.b);
                this.a.addView(viewC);
            } else {
                wh1 wh1Var = viewJ instanceof wh1 ? (wh1) viewJ : null;
                if (wh1Var != null && (ttVarC = wh1Var.c()) != null && (fs2Var = ttVarC.b) != null && b81.a(this.e, br0Var, fs2Var, fs2Var2)) {
                    viewC = viewJ;
                }
                if (viewC == null) {
                    if (this.e != null) {
                        a();
                    }
                    pi2 pi2Var2 = this.a;
                    vq0Var = ttVar.a;
                    it = ViewGroupKt.getChildren(pi2Var2).iterator();
                    while (it.hasNext()) {
                        di2.a(vq0Var.u(), it.next());
                    }
                    pi2Var2.removeAllViews();
                    viewC = this.d.c(br0Var, ttVar.b);
                    this.a.addView(viewC);
                }
            }
        } else {
            if (this.e != null) {
                a();
            }
            pi2 pi2Var3 = this.a;
            vq0Var = ttVar.a;
            it = ViewGroupKt.getChildren(pi2Var3).iterator();
            while (it.hasNext()) {
                di2.a(vq0Var.u(), it.next());
            }
            pi2Var3.removeAllViews();
            viewC = this.d.c(br0Var, ttVar.b);
            this.a.addView(viewC);
        }
        this.e = br0Var;
        vq0Var2.z.a(n32Var, br0Var, fs2Var2, this.b.b);
        this.c.a(ttVar, viewC, br0Var, n32Var);
        a(viewC);
        vq0Var2.z.a(br0Var.a());
    }

    public void a(View view) {
    }
}
