package defpackage;

import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zr0 extends gh4 implements ll3<j59> {
    public final /* synthetic */ BonusesSearchFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zr0(BonusesSearchFragment bonusesSearchFragment) {
        super(0);
        this.f = bonusesSearchFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().loadNext();
        return j59.a;
    }
}
