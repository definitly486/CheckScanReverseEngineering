package defpackage;

import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class u53 extends gh4 implements bm3<Integer, Boolean, j59> {
    public final /* synthetic */ FavoriteFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u53(FavoriteFragment favoriteFragment) {
        super(2);
        this.f = favoriteFragment;
    }

    @Override // defpackage.bm3
    public final j59 invoke(Integer num, Boolean bool) {
        this.f.o().onFavoritePromocode(num.intValue(), bool.booleanValue());
        return j59.a;
    }
}
