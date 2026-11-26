package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class rf7 implements lk3 {
    public final String a;

    public rf7() {
        this.a = new String();
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BonusesMainNewFragment bonusesMainNewFragment = new BonusesMainNewFragment();
        String str = this.a;
        str.getClass();
        bonusesMainNewFragment.setArguments(new t61(str).getArguments());
        return bonusesMainNewFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return rf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rf7) && aa4.e(this.a, ((rf7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("BonusesNew(afterEvent=", this.a, ")");
    }

    public rf7(String str) {
        this.a = str;
    }
}
