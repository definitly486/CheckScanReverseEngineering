package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class hg7 implements lk3 {
    public final long a;

    public hg7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CouponsFragment couponsFragment = new CouponsFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("admitadId", this.a);
        couponsFragment.setArguments(bundle);
        return couponsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return hg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hg7) && this.a == ((hg7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "Coupons(admitadId=", ")");
    }
}
