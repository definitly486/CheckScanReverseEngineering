package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import com.warefly.checkscan.presentation.favorite.presenter.FavoritePresenter;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class t53 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ FavoriteFragment a;

    public t53(FavoriteFragment favoriteFragment) {
        this.a = favoriteFragment;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        FavoriteFragment favoriteFragment = this.a;
        FavoritePresenter favoritePresenterO = favoriteFragment.o();
        eu1 eu1Var = favoriteFragment.k;
        return favoritePresenterO.getSpanCount(eu1Var != null ? eu1Var.i.c(i) : 0);
    }
}
