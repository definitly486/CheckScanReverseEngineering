package defpackage;

import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zh1 extends gh4 implements ll3<j59> {
    public final /* synthetic */ ChequesFragment f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zh1(ChequesFragment chequesFragment, int i) {
        super(0);
        this.f = chequesFragment;
        this.g = i;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onDeleteCheque(this.g);
        return j59.a;
    }
}
