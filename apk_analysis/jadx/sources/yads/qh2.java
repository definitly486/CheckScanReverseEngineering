package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import defpackage.xp9;
import java.util.Iterator;
import yads.qh2;

/* JADX INFO: loaded from: classes6.dex */
public final class qh2 extends dj2 {
    public final Context a;
    public final qg6 b;
    public final kf2 c;

    public qh2(Context context, qg6 qg6Var, kf2 kf2Var, rg6 rg6Var) {
        this.a = context;
        this.b = qg6Var;
        this.c = kf2Var;
        qg6Var.a("DIV2.TEXT_VIEW", new gg6() { // from class: p6a
            @Override // yads.gg6
            public final View a() {
                return qh2.a(this.a);
            }
        }, rg6Var.a.a);
        qg6Var.a("DIV2.IMAGE_VIEW", new xp9(this, 1), rg6Var.b.a);
        qg6Var.a("DIV2.IMAGE_GIF_VIEW", new gg6() { // from class: q6a
            @Override // yads.gg6
            public final View a() {
                return qh2.k(this.a);
            }
        }, rg6Var.c.a);
        qg6Var.a("DIV2.OVERLAP_CONTAINER_VIEW", new gg6() { // from class: r6a
            @Override // yads.gg6
            public final View a() {
                return qh2.l(this.a);
            }
        }, rg6Var.d.a);
        qg6Var.a("DIV2.LINEAR_CONTAINER_VIEW", new gg6() { // from class: s6a
            @Override // yads.gg6
            public final View a() {
                return qh2.m(this.a);
            }
        }, rg6Var.e.a);
        qg6Var.a("DIV2.WRAP_CONTAINER_VIEW", new gg6() { // from class: t6a
            @Override // yads.gg6
            public final View a() {
                return qh2.n(this.a);
            }
        }, rg6Var.f.a);
        qg6Var.a("DIV2.GRID_VIEW", new gg6() { // from class: u6a
            @Override // yads.gg6
            public final View a() {
                return qh2.o(this.a);
            }
        }, rg6Var.g.a);
        qg6Var.a("DIV2.GALLERY_VIEW", new gg6() { // from class: v6a
            @Override // yads.gg6
            public final View a() {
                return qh2.p(this.a);
            }
        }, rg6Var.h.a);
        qg6Var.a("DIV2.PAGER_VIEW", new gg6() { // from class: w6a
            @Override // yads.gg6
            public final View a() {
                return qh2.q(this.a);
            }
        }, rg6Var.i.a);
        qg6Var.a("DIV2.TAB_VIEW", new gg6() { // from class: x6a
            @Override // yads.gg6
            public final View a() {
                return qh2.r(this.a);
            }
        }, rg6Var.j.a);
        qg6Var.a("DIV2.STATE", new gg6() { // from class: y6a
            @Override // yads.gg6
            public final View a() {
                return qh2.c(this.a);
            }
        }, rg6Var.k.a);
        qg6Var.a("DIV2.CUSTOM", new gg6() { // from class: z6a
            @Override // yads.gg6
            public final View a() {
                return qh2.d(this.a);
            }
        }, rg6Var.l.a);
        qg6Var.a("DIV2.INDICATOR", new gg6() { // from class: a7a
            @Override // yads.gg6
            public final View a() {
                return qh2.e(this.a);
            }
        }, rg6Var.m.a);
        qg6Var.a("DIV2.SLIDER", new gg6() { // from class: b7a
            @Override // yads.gg6
            public final View a() {
                return qh2.f(this.a);
            }
        }, rg6Var.n.a);
        qg6Var.a("DIV2.INPUT", new gg6() { // from class: c7a
            @Override // yads.gg6
            public final View a() {
                return qh2.g(this.a);
            }
        }, rg6Var.o.a);
        qg6Var.a("DIV2.SELECT", new gg6() { // from class: d7a
            @Override // yads.gg6
            public final View a() {
                return qh2.h(this.a);
            }
        }, rg6Var.p.a);
        qg6Var.a("DIV2.VIDEO", new gg6() { // from class: e7a
            @Override // yads.gg6
            public final View a() {
                return qh2.i(this.a);
            }
        }, rg6Var.q.a);
        qg6Var.a("DIV2.SWITCH", new gg6() { // from class: f7a
            @Override // yads.gg6
            public final View a() {
                return qh2.j(this.a);
            }
        }, rg6Var.r.a);
    }

    public static final yi1 b(qh2 qh2Var) {
        return new yi1(qh2Var.a, null, 6, 0);
    }

    public static final ds1 e(qh2 qh2Var) {
        return new ds1(qh2Var.a, null, 6, 0);
    }

    public static final s22 f(qh2 qh2Var) {
        return new s22(qh2Var.a, null, 0);
    }

    public static final bn1 g(qh2 qh2Var) {
        return new bn1(qh2Var.a, null, 6, 0);
    }

    public static final gz1 h(qh2 qh2Var) {
        return new gz1(qh2Var.a);
    }

    public static final mh2 i(qh2 qh2Var) {
        return new mh2(qh2Var.a, null, 6, 0);
    }

    public static final s52 j(qh2 qh2Var) {
        return new s52(qh2Var.a);
    }

    public static final nh1 k(qh2 qh2Var) {
        return new nh1(qh2Var.a, null, 6, 0);
    }

    public static final uf1 l(qh2 qh2Var) {
        return new uf1(qh2Var.a, null, 6, 0);
    }

    public static final op1 m(qh2 qh2Var) {
        return new op1(qh2Var.a, null, 6, 0);
    }

    public static final jj2 n(qh2 qh2Var) {
        return new jj2(qh2Var.a);
    }

    public static final uh1 o(qh2 qh2Var) {
        return new uh1(qh2Var.a, null, 6, 0);
    }

    public static final cy1 p(qh2 qh2Var) {
        return new cy1(qh2Var.a, null, 6, 0);
    }

    public static final et1 q(qh2 qh2Var) {
        return new et1(qh2Var.a, null, 6, 0);
    }

    public static final m62 r(qh2 qh2Var) {
        return new m62(qh2Var.a, null);
    }

    @Override // yads.dj2
    public final Object a(yp0 yp0Var, fs2 fs2Var) {
        View viewA = a(yp0Var, fs2Var);
        viewA.getClass();
        ViewGroup viewGroup = (ViewGroup) viewA;
        Iterable iterable = yp0Var.a.y;
        if (iterable == null) {
            iterable = defpackage.kx2.b;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            viewGroup.addView(c((br0) it.next(), fs2Var));
        }
        return viewGroup;
    }

    public final View c(br0 br0Var, fs2 fs2Var) {
        if (!((Boolean) this.c.b(br0Var, fs2Var)).booleanValue()) {
            return new Space(this.a);
        }
        View view = (View) b(br0Var, fs2Var);
        view.setBackground(eo4.a);
        return view;
    }

    @Override // yads.dj2
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final View a(br0 br0Var, fs2 fs2Var) {
        String str;
        qg6 qg6Var = this.b;
        if (br0Var instanceof up0) {
            up0 up0Var = (up0) br0Var;
            if (jf2.a(up0Var.a, fs2Var)) {
                str = "DIV2.WRAP_CONTAINER_VIEW";
            } else {
                str = up0Var.a.I.a(fs2Var) == h81.OVERLAP ? "DIV2.OVERLAP_CONTAINER_VIEW" : "DIV2.LINEAR_CONTAINER_VIEW";
            }
        } else if (br0Var instanceof vp0) {
            str = "DIV2.CUSTOM";
        } else if (br0Var instanceof wp0) {
            str = "DIV2.GALLERY_VIEW";
        } else if (br0Var instanceof xp0) {
            str = "DIV2.IMAGE_GIF_VIEW";
        } else if (br0Var instanceof yp0) {
            str = "DIV2.GRID_VIEW";
        } else if (br0Var instanceof zp0) {
            str = "DIV2.IMAGE_VIEW";
        } else if (br0Var instanceof aq0) {
            str = "DIV2.INDICATOR";
        } else if (br0Var instanceof bq0) {
            str = "DIV2.INPUT";
        } else if (br0Var instanceof cq0) {
            str = "DIV2.PAGER_VIEW";
        } else if (br0Var instanceof dq0) {
            str = "DIV2.SELECT";
        } else if (br0Var instanceof fq0) {
            str = "DIV2.SLIDER";
        } else if (br0Var instanceof hq0) {
            str = "DIV2.SWITCH";
        } else if (br0Var instanceof gq0) {
            str = "DIV2.STATE";
        } else if (br0Var instanceof iq0) {
            str = "DIV2.TAB_VIEW";
        } else if (br0Var instanceof jq0) {
            str = "DIV2.TEXT_VIEW";
        } else if (br0Var instanceof kq0) {
            str = "DIV2.VIDEO";
        } else {
            if (!(br0Var instanceof eq0)) {
                defpackage.me0.e();
                return null;
            }
            str = "";
        }
        return qg6Var.a(str);
    }

    public static final k32 c(qh2 qh2Var) {
        return new k32(qh2Var.a, null, 6, 0);
    }

    public static final zo1 a(qh2 qh2Var) {
        return new zo1(qh2Var.a, null, 6, 0);
    }

    @Override // yads.dj2
    public final Object a(eq0 eq0Var, fs2 fs2Var) {
        return new wz1(this.a, null, 6, 0);
    }

    public static final bb1 d(qh2 qh2Var) {
        return new bb1(qh2Var.a, null, 6, 0);
    }
}
