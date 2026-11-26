package defpackage;

import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class v53 extends gh4 implements ll3<j59> {
    public final /* synthetic */ FavoriteFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v53(FavoriteFragment favoriteFragment) {
        super(0);
        this.f = favoriteFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onMorePromocodes();
        return j59.a;
    }
}
