package defpackage;

import com.warefly.checkscan.presentation.bonuses.promocodes.view.PromocodesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class nr6 extends gh4 implements ll3<j59> {
    public final /* synthetic */ PromocodesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nr6(PromocodesFragment promocodesFragment) {
        super(0);
        this.f = promocodesFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.n().loadMorePromocodes();
        return j59.a;
    }
}
