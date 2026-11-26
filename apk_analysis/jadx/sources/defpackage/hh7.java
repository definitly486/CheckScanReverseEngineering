package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.offerLanding.OfferLandingReason;
import com.warefly.checkscan.presentation.flows.offerLanding.view.OfferLandingFlowFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class hh7 implements lk3 {
    public final OfferLandingReason.Landing a;

    public hh7(OfferLandingReason.Landing landing) {
        this.a = landing;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        OfferLandingFlowFragment offerLandingFlowFragment = new OfferLandingFlowFragment();
        Bundle bundle = new Bundle();
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(OfferLandingReason.class);
        Parcelable parcelable = this.a;
        if (zIsAssignableFrom) {
            bundle.putParcelable("reason", parcelable);
        } else {
            if (!Serializable.class.isAssignableFrom(OfferLandingReason.class)) {
                n1.e(OfferLandingReason.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("reason", (Serializable) parcelable);
        }
        offerLandingFlowFragment.setArguments(bundle);
        return offerLandingFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return hh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hh7) && this.a.equals(((hh7) obj).a);
    }

    public final int hashCode() {
        return this.a.b.hashCode();
    }

    public final String toString() {
        return "OfferLandingFlow(reason=" + this.a + ")";
    }
}
