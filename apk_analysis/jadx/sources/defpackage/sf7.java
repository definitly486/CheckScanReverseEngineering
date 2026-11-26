package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.google.android.gms.actions.SearchIntents;
import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sf7 implements lk3 {
    public final String a;

    public sf7(String str) {
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BonusesSearchFragment bonusesSearchFragment = new BonusesSearchFragment();
        Bundle bundle = new Bundle();
        bundle.putString(SearchIntents.EXTRA_QUERY, this.a);
        bonusesSearchFragment.setArguments(bundle);
        return bonusesSearchFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return sf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sf7) && aa4.e(this.a, ((sf7) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("BonusesSearch(query=", this.a, ")");
    }
}
