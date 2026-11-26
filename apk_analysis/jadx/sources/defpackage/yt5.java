package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.flows.offerLanding.OfferLandingReason;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class yt5 implements NavArgs {
    public final OfferLandingReason a;

    public yt5(OfferLandingReason offerLandingReason) {
        this.a = offerLandingReason;
    }

    public static final yt5 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "reason", yt5.class)) {
            fg.c("Required argument \"reason\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(OfferLandingReason.class) && !Serializable.class.isAssignableFrom(OfferLandingReason.class)) {
            n1.e(OfferLandingReason.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        OfferLandingReason offerLandingReason = (OfferLandingReason) bundle.get("reason");
        if (offerLandingReason != null) {
            return new yt5(offerLandingReason);
        }
        fg.c("Argument \"reason\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yt5) && this.a.equals(((yt5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "OfferLandingFlowFragmentArgs(reason=" + this.a + ")";
    }
}
