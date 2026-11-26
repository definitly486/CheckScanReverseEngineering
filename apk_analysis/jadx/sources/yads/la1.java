package yads;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import com.yandex.mobile.ads.R$id;
import defpackage.j59;
import defpackage.ws6;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class la1 extends oh2 {
    public final v41 b;
    public final oa1 c;
    public final hd1 d;
    public final ws6 e;

    public la1(v41 v41Var, oa1 oa1Var, hd1 hd1Var, ws6 ws6Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = oa1Var;
        this.d = hd1Var;
        this.e = ws6Var;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008f  */
    public final void a(tt ttVar, bb1 bb1Var, vp0 vp0Var, n32 n32Var) {
        View view;
        tt ttVar2;
        fs2 fs2Var;
        View view2 = bb1Var.getChildCount() != 0 ? ViewGroupKt.get(bb1Var, 0) : null;
        xh1 xh1Var = bb1Var.l;
        vp0 vp0Var2 = (vp0) xh1Var.c;
        vq0 vq0Var = ttVar.a;
        fs2 fs2Var2 = ttVar.b;
        if (vp0Var2 == vp0Var) {
            tq.a((w41) this.e.get(), ttVar, bb1Var);
            return;
        }
        if (view2 != null && vp0Var2 != null && (ttVar2 = xh1Var.d) != null && (fs2Var = ttVar2.b) != null) {
            this.d.a(vq0Var, fs2Var, view2, vp0Var2.a());
        }
        this.b.a(ttVar, bb1Var, vp0Var, vp0Var2);
        this.b.getClass();
        bb1Var.setTag(null);
        bb1Var.setId(-1);
        ka1 ka1Var = vp0Var.a;
        if (this.c.a(ka1Var.j)) {
            ka1 ka1Var2 = vp0Var2 != null ? vp0Var2.a : null;
            if (view2 == null) {
                View viewA = a(this, ka1Var, vq0Var, fs2Var2, n32Var);
                viewA.setTag(R$id.monetization_ads_divkit_div_custom_tag, ka1Var);
                view = viewA;
            } else {
                vp0 vp0Var3 = (vp0) bb1Var.l.c;
                if (!defpackage.aa4.e(vp0Var3 != null ? vp0Var3.a.j : null, ka1Var.j) || ka1Var2 == null) {
                    View viewA2 = a(this, ka1Var, vq0Var, fs2Var2, n32Var);
                    viewA2.setTag(R$id.monetization_ads_divkit_div_custom_tag, ka1Var);
                    view = viewA2;
                } else {
                    List list = ka1Var2.q;
                    List list2 = defpackage.kx2.b;
                    if (list == null) {
                        list = list2;
                    }
                    int size = list.size();
                    List list3 = ka1Var.q;
                    if (list3 != null) {
                        list2 = list3;
                    }
                    if (size == list2.size()) {
                        view = view2;
                    } else {
                        View viewA3 = a(this, ka1Var, vq0Var, fs2Var2, n32Var);
                        viewA3.setTag(R$id.monetization_ads_divkit_div_custom_tag, ka1Var);
                        view = viewA3;
                    }
                }
            }
            vq0 vq0Var2 = ttVar.a;
            if (!defpackage.aa4.e(view2, view)) {
                if (bb1Var.getChildCount() != 0) {
                    di2.a(vq0Var2.u(), ViewGroupKt.get(bb1Var, 0));
                    bb1Var.removeViewAt(0);
                }
                bb1Var.addView(view);
            }
            a(this, ka1Var, vq0Var, fs2Var2, n32Var, view);
            v41 v41Var = this.b;
            String str = ka1Var.p;
            v41Var.getClass();
            int iA = str != null ? vq0Var2.o.c().a(str) : -1;
            view.setTag(str);
            view.setId(iA);
            hd1 hd1Var = this.d;
            if (hd1Var.a(ka1Var)) {
                for (id1 id1Var : hd1Var.a) {
                    if (id1Var.a(ka1Var)) {
                        id1Var.a(vq0Var2, view, ka1Var);
                    }
                }
            }
        }
    }

    public static final j59 a(la1 la1Var, ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var, View view) {
        la1Var.c.getClass();
        return j59.a;
    }

    public static final View a(la1 la1Var, ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) {
        return la1Var.c.a(ka1Var, vq0Var, fs2Var, n32Var);
    }
}
