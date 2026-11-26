package defpackage;

import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class wh1 extends gh4 implements ll3<j59> {
    public final /* synthetic */ ChequesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wh1(ChequesFragment chequesFragment) {
        super(0);
        this.f = chequesFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onGetMoreCheques();
        return j59.a;
    }
}
