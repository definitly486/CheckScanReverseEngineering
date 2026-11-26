package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.favorite.view.FavoriteFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class og7 implements lk3 {
    public final boolean a;

    public og7(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        FavoriteFlowFragment favoriteFlowFragment = new FavoriteFlowFragment();
        favoriteFlowFragment.setArguments(new rf3(this.a).getArguments());
        return favoriteFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return og7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof og7) && this.a == ((og7) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("FavoriteFlow(isFavorite=", ")", this.a);
    }
}
