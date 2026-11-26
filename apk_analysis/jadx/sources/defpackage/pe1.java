package defpackage;

import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pe1 extends gh4 implements ll3<j59> {
    public final /* synthetic */ ChequePageFragment f;
    public final /* synthetic */ vg6 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pe1(ChequePageFragment chequePageFragment, vg6 vg6Var) {
        super(0);
        this.f = chequePageFragment;
        this.g = vg6Var;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onReportProduct(this.g);
        return j59.a;
    }
}
