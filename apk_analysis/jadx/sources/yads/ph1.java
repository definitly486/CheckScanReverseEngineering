package yads;

import android.view.View;
import android.view.ViewGroup;
import defpackage.j59;
import defpackage.nl3;
import defpackage.q5a;
import defpackage.ws6;
import yads.ph1;

/* JADX INFO: loaded from: classes6.dex */
public final class ph1 extends oh2 {
    public final zt1 b;
    public final ws6 c;

    public ph1(v41 v41Var, zt1 zt1Var, ws6 ws6Var, ws6 ws6Var2) {
        super(v41Var);
        this.b = zt1Var;
        this.c = ws6Var;
    }

    public static void a(View view, p41 p41Var, fs2 fs2Var) {
        int i;
        as2 as2VarP = p41Var.p();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        int i2 = 1;
        if (ro1Var != null) {
            if (as2VarP != null) {
                long jLongValue = ((Number) as2VarP.a(fs2Var)).longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i = (int) jLongValue;
                } else {
                    i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
            } else {
                i = 1;
            }
            if (ro1Var.a() != i) {
                ro1Var.a(i);
                view.requestLayout();
            }
        }
        as2 as2VarX = p41Var.x();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        ro1 ro1Var2 = layoutParams2 instanceof ro1 ? (ro1) layoutParams2 : null;
        if (ro1Var2 == null) {
            return;
        }
        if (as2VarX != null) {
            long jLongValue2 = ((Number) as2VarX.a(fs2Var)).longValue();
            long j2 = jLongValue2 >> 31;
            if (j2 == 0 || j2 == -1) {
                i2 = (int) jLongValue2;
            } else {
                i2 = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        }
        if (ro1Var2.c() != i2) {
            ro1Var2.c(i2);
            view.requestLayout();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(final View view, final p41 p41Var, final fs2 fs2Var) {
        a(view, p41Var, fs2Var);
        if (view instanceof hs2) {
            nl3 nl3Var = new nl3() { // from class: p5a
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return ph1.a(this.b, view, fs2Var, p41Var, obj);
                }
            };
            hs2 hs2Var = (hs2) view;
            as2 as2VarP = p41Var.p();
            hs2Var.a(as2VarP != null ? as2VarP.a(fs2Var, nl3Var) : null);
            as2 as2VarX = p41Var.x();
            hs2Var.a(as2VarX != null ? as2VarX.a(fs2Var, nl3Var) : null);
        }
    }

    @Override // yads.oh2
    public final /* bridge */ /* synthetic */ void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        a((uh1) view, ttVar, (oh1) p41Var);
    }

    public static void a(uh1 uh1Var, as2 as2Var, as2 as2Var2, fs2 fs2Var) {
        uh1Var.setGravity(jf2.a((f11) as2Var.a(fs2Var), (h11) as2Var2.a(fs2Var)));
        q5a q5aVar = new q5a(uh1Var, as2Var, as2Var2, fs2Var);
        uh1Var.f.a(as2Var.a(fs2Var, q5aVar));
        uh1Var.f.a(as2Var2.a(fs2Var, q5aVar));
    }

    public static final j59 a(uh1 uh1Var, as2 as2Var, fs2 fs2Var, as2 as2Var2, Object obj) {
        uh1Var.setGravity(jf2.a((f11) as2Var.a(fs2Var), (h11) as2Var2.a(fs2Var)));
        return j59.a;
    }

    public static final j59 a(ph1 ph1Var, View view, fs2 fs2Var, p41 p41Var, Object obj) {
        ph1Var.getClass();
        a(view, p41Var, fs2Var);
        return j59.a;
    }

    public static void a(uh1 uh1Var, tt ttVar, oh1 oh1Var) {
        uh1Var.setReleaseViewVisitor$mobileads_externalRelease(ttVar.a.u());
        pq.a(uh1Var, ttVar, oh1Var.b, oh1Var.d, oh1Var.A, oh1Var.q, oh1Var.w, oh1Var.v, oh1Var.E, oh1Var.D, oh1Var.c, oh1Var.k);
        uh1Var.f.a(oh1Var.l.b(ttVar.b, new defpackage.gf6(uh1Var, 3)));
        a(uh1Var, oh1Var.n, oh1Var.o, ttVar.b);
    }

    public static final j59 a(uh1 uh1Var, long j) {
        int i;
        long j2 = j >> 31;
        if (j2 == 0 || j2 == -1) {
            i = (int) j;
        } else {
            i = j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        uh1Var.setColumnCount(i);
        return j59.a;
    }
}
