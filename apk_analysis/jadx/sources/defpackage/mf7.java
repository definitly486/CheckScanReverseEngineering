package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mf7 implements lk3 {
    public final int a;
    public final int b;

    public mf7(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AffiliationCheckFragment affiliationCheckFragment = new AffiliationCheckFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("linkCheckerId", this.a);
        bundle.putInt("shopId", this.b);
        affiliationCheckFragment.setArguments(bundle);
        return affiliationCheckFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return mf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mf7)) {
            return false;
        }
        mf7 mf7Var = (mf7) obj;
        return this.a == mf7Var.a && this.b == mf7Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return ln.c(this.a, this.b, "AffiliationCheck(linkCheckerId=", ", shopId=", ")");
    }
}
