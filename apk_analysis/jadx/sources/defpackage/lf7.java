package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class lf7 implements lk3 {
    public final long a;

    public lf7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BonusAdmitadNewFragment bonusAdmitadNewFragment = new BonusAdmitadNewFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("admitadId", this.a);
        bonusAdmitadNewFragment.setArguments(bundle);
        return bonusAdmitadNewFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return lf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lf7) && this.a == ((lf7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "AdmitadNew(admitadId=", ")");
    }
}
