package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ng7 implements lk3 {
    public final boolean a;

    public ng7(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        FavoriteFragment favoriteFragment = new FavoriteFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isFavorite", this.a);
        favoriteFragment.setArguments(bundle);
        return favoriteFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ng7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ng7) && this.a == ((ng7) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("Favorite(isFavorite=", ")", this.a);
    }
}
