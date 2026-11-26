package yads;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oq {
    public final qg6 a;
    public final gq b;
    public final ld5 c;
    public final a93 d;
    public final pg6 e;
    public og6 f;
    public final String i;
    public final e62 j;
    public final eq k;
    public final ArrayMap g = new ArrayMap();
    public final ArrayMap h = new ArrayMap();
    public boolean l = false;
    public lq m = null;
    public boolean n = false;

    public oq(qg6 qg6Var, m62 m62Var, nq nqVar, a93 a93Var, pu5 pu5Var, e62 e62Var, e62 e62Var2, z52 z52Var) {
        a62 a62Var = (a62) this;
        this.k = new eq(a62Var);
        this.a = qg6Var;
        this.d = a93Var;
        this.j = e62Var2;
        hq hqVar = new hq(a62Var);
        this.i = "DIV2.TAB_ITEM_VIEW";
        int i = nqVar.a;
        KeyEvent.Callback callbackFindViewById = m62Var.findViewById(i);
        if (callbackFindViewById == null) {
            defpackage.ki0.c(m62Var.getResources().getResourceName(i), "View with id [", "] doesn't exist");
            throw null;
        }
        gq gqVar = (gq) callbackFindViewById;
        this.b = gqVar;
        gqVar.setHost(hqVar);
        gqVar.setTypefaceProvider(pu5Var.a);
        gqVar.setViewPool(qg6Var, "DIV2.TAB_HEADER_VIEW");
        int i2 = nqVar.b;
        View viewFindViewById = m62Var.findViewById(i2);
        if (viewFindViewById == null) {
            defpackage.ki0.c(m62Var.getResources().getResourceName(i2), "View with id [", "] doesn't exist");
            throw null;
        }
        ld5 ld5Var = (ld5) viewFindViewById;
        this.c = ld5Var;
        ViewCompat.setLayoutDirection(ld5Var, ld5Var.getResources().getConfiguration().getLayoutDirection());
        ld5Var.setAdapter(null);
        ld5Var.clearOnPageChangeListeners();
        ld5Var.addOnPageChangeListener(new mq(a62Var));
        uu5 uu5Var = (uu5) gqVar;
        lr lrVar = uu5Var.C;
        if (lrVar == null) {
            lrVar = new lr(uu5Var);
            uu5Var.C = lrVar;
        }
        lrVar.c = 0;
        lrVar.b = 0;
        ld5Var.addOnPageChangeListener(lrVar);
        ld5Var.addOnPageChangeListener(e62Var);
        ld5Var.addOnPageChangeListener(z52Var);
        ld5Var.setScrollEnabled(true);
        ld5Var.setEdgeScrollEnabled(false);
        ld5Var.setPageTransformer(false, new jq(a62Var));
        int i3 = nqVar.c;
        View viewFindViewById2 = m62Var.findViewById(i3);
        if (viewFindViewById2 == null) {
            defpackage.ki0.c(m62Var.getResources().getResourceName(i3), "View with id [", "] doesn't exist");
            throw null;
        }
        this.e = (pg6) viewFindViewById2;
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(ViewGroup viewGroup, int i, int i2, int i3) {
        iq iqVar;
        ViewGroup viewGroup2;
        int measuredHeight;
        lq lqVar = this.m;
        if (lqVar == null) {
            return -1;
        }
        pg6 pg6Var = this.e;
        int i4 = pg6Var != null ? pg6Var.b : 0;
        List listA = lqVar.a();
        if (i3 >= 0) {
            listA.size();
        }
        kq kqVar = (kq) listA.get(i3);
        t02 t02Var = (t02) kqVar;
        x02 height = t02Var.a.a.a().getHeight();
        Integer numValueOf = height instanceof u02 ? Integer.valueOf(jf2.a(height, t02Var.b, t02Var.c, null)) : null;
        if (numValueOf != null) {
            measuredHeight = numValueOf.intValue();
        } else {
            iq iqVar2 = (iq) this.h.get(Integer.valueOf(i3));
            if (iqVar2 == null) {
                viewGroup2 = (ViewGroup) this.a.a(this.i);
                iqVar = new iq(this, viewGroup2, kqVar, i3);
                this.h.put(Integer.valueOf(i3), iqVar);
            } else {
                iqVar = iqVar2;
                viewGroup2 = iqVar2.a;
            }
            iqVar.a();
            viewGroup2.forceLayout();
            if (jf2.a(t02Var.a.a.a().getHeight(), t02Var.b, t02Var.c, null) != -1) {
                i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            viewGroup2.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), i2);
            measuredHeight = viewGroup2.getMeasuredHeight();
        }
        return measuredHeight + i4;
    }

    public final void b() {
        if (this.e == null) {
            return;
        }
        og6 og6VarA = this.d.a((ViewGroup) this.a.a(this.i), new defpackage.wo0(this), new defpackage.jv(this, 4));
        this.f = og6VarA;
        this.e.setHeightCalculator(og6VarA);
    }

    public final int a() {
        lq lqVar = this.m;
        if (lqVar == null) {
            return 0;
        }
        return lqVar.a().size();
    }

    public final void a(lq lqVar, fs2 fs2Var, hs2 hs2Var) {
        List listA;
        kr krVar;
        int iMin = lqVar == null ? -1 : Math.min(this.c.getCurrentItem(), lqVar.a().size() - 1);
        this.h.clear();
        this.m = lqVar;
        if (this.c.getAdapter() != null) {
            this.n = true;
            try {
                this.k.notifyDataSetChanged();
                this.n = false;
            } catch (Throwable th) {
                this.n = false;
                throw th;
            }
        }
        if (lqVar == null) {
            listA = Collections.EMPTY_LIST;
        } else {
            listA = lqVar.a();
        }
        this.b.setData(listA, iMin, fs2Var, hs2Var);
        if (this.c.getAdapter() == null) {
            this.c.setAdapter(this.k);
        } else if (!listA.isEmpty() && iMin != -1) {
            this.c.setCurrentItem(iMin);
            uu5 uu5Var = (uu5) this.b;
            kr krVar2 = uu5Var.b;
            if ((krVar2 != null ? krVar2.b : -1) != iMin && (krVar = (kr) uu5Var.a.get(iMin)) != null) {
                nr nrVar = krVar.c;
                if (nrVar != null) {
                    nrVar.b(krVar, true);
                } else {
                    defpackage.fg.c("Tab not attached to a TabLayout");
                    return;
                }
            }
        }
        int i = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        og6 og6Var = this.f;
        if (og6Var != null) {
            ((cq) og6Var).d.clear();
        }
        pg6 pg6Var = this.e;
        if (pg6Var != null) {
            pg6Var.requestLayout();
        }
    }
}
