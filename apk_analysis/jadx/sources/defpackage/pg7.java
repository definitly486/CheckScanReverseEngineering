package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pg7 implements lk3 {
    public final int a;
    public final String b;

    public pg7(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        FavoritePreviewsFragment favoritePreviewsFragment = new FavoritePreviewsFragment();
        String str = this.b;
        str.getClass();
        Bundle bundle = new Bundle();
        bundle.putString(TJAdUnitConstants.String.TOOLBAR, str);
        bundle.putInt(TtmlNode.ATTR_ID, this.a);
        favoritePreviewsFragment.setArguments(bundle);
        return favoritePreviewsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return pg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pg7)) {
            return false;
        }
        pg7 pg7Var = (pg7) obj;
        return this.a == pg7Var.a && aa4.e(this.b, pg7Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return c9.d(this.a, "FavoritePreviews(shopsId=", ", toolbarTitle=", this.b, ")");
    }
}
