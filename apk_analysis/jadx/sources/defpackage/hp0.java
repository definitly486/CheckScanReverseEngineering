package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hp0 extends gh4 implements nl3<List<? extends iq6>, qq1> {
    public final /* synthetic */ lp0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hp0(lp0 lp0Var) {
        super(1);
        this.f = lp0Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(List<? extends iq6> list) {
        List<? extends iq6> list2 = list;
        list2.getClass();
        return new dq1(new gp0(0, this.f, list2));
    }
}
