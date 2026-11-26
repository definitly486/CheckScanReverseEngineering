package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class gh7 implements lk3 {
    public final String a;

    public gh7(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        OfferLandingFragment offerLandingFragment = new OfferLandingFragment();
        String str = this.a;
        str.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("partnerId", str);
        offerLandingFragment.setArguments(bundle);
        return offerLandingFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return gh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gh7) && aa4.e(this.a, ((gh7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("OfferLanding(partnerId=", this.a, ")");
    }
}
