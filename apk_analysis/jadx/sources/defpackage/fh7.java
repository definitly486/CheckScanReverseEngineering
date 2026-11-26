package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class fh7 implements lk3 {
    public final boolean a;

    public fh7(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CardOfferLandingFragment cardOfferLandingFragment = new CardOfferLandingFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromDeeplink", this.a);
        cardOfferLandingFragment.setArguments(bundle);
        return cardOfferLandingFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return fh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fh7) && this.a == ((fh7) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("OfferCard(fromDeeplink=", ")", this.a);
    }

    public fh7() {
        this(false);
    }
}
