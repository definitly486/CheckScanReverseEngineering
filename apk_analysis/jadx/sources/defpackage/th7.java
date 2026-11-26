package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.actions.SearchIntents;
import com.warefly.checkscan.presentation.bonuses.promocodes.view.PromocodesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class th7 implements lk3 {
    public final int a;
    public final String b;
    public final boolean c;

    public th7(String str, int i, int i2, boolean z) {
        i = (i2 & 1) != 0 ? -1 : i;
        str = (i2 & 2) != 0 ? "" : str;
        z = (i2 & 4) != 0 ? true : z;
        this.a = i;
        this.b = str;
        this.c = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PromocodesFragment promocodesFragment = new PromocodesFragment();
        String str = this.b;
        str.getClass();
        Bundle bundle = new Bundle();
        bundle.putInt(TtmlNode.ATTR_ID, this.a);
        bundle.putString(SearchIntents.EXTRA_QUERY, str);
        bundle.putBoolean("isFavorite", this.c);
        promocodesFragment.setArguments(bundle);
        return promocodesFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return th7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof th7)) {
            return false;
        }
        th7 th7Var = (th7) obj;
        return this.a == th7Var.a && aa4.e(this.b, th7Var.b) && this.c == th7Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return dh.e(ng.e(this.a, "Promocodes(catId=", ", query=", this.b, ", isFavorite="), this.c, ")");
    }

    public th7() {
        this(null, 0, 7, false);
    }
}
