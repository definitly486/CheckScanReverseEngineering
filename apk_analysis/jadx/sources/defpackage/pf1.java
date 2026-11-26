package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pf1 extends gh4 implements nl3<List<? extends ld1>, x75<? extends kd1>> {
    public static final pf1 f = new pf1(1);

    @Override // defpackage.nl3
    public final x75<? extends kd1> invoke(List<? extends ld1> list) {
        List<? extends ld1> list2 = list;
        list2.getClass();
        ld1 ld1Var = (ld1) qn1.V(list2);
        return ld1Var != null ? a75.b(new kd1(ld1Var.b(), ld1Var.a().a(), ld1Var.a().b())) : g75.b;
    }
}
