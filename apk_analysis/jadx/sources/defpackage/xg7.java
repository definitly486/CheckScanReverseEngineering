package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.landing.view.LandingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class xg7 implements lk3 {
    public final int a;

    public xg7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        LandingFragment landingFragment = new LandingFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("promotionId", this.a);
        landingFragment.setArguments(bundle);
        return landingFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return xg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xg7) && this.a == ((xg7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "Landing(landingId=", ")");
    }
}
