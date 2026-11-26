package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class NavAction {
    private Bundle defaultArguments;
    private final int destinationId;
    private NavOptions navOptions;

    public /* synthetic */ NavAction(int i, NavOptions navOptions, Bundle bundle, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : navOptions, (i2 & 4) != 0 ? null : bundle);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavAction)) {
            return false;
        }
        NavAction navAction = (NavAction) obj;
        if (this.destinationId != navAction.destinationId || !aa4.e(this.navOptions, navAction.navOptions)) {
            return false;
        }
        Bundle bundle = this.defaultArguments;
        Bundle bundle2 = navAction.defaultArguments;
        if (aa4.e(bundle, bundle2)) {
            return true;
        }
        return (bundle == null || bundle2 == null || !SavedStateReader.m9372contentDeepEqualsimpl(SavedStateReader.m9370constructorimpl(bundle), bundle2)) ? false : true;
    }

    public final Bundle getDefaultArguments() {
        return this.defaultArguments;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final NavOptions getNavOptions() {
        return this.navOptions;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.destinationId) * 31;
        NavOptions navOptions = this.navOptions;
        int iHashCode2 = iHashCode + (navOptions != null ? navOptions.hashCode() : 0);
        Bundle bundle = this.defaultArguments;
        if (bundle != null) {
            return SavedStateReader.m9373contentDeepHashCodeimpl(SavedStateReader.m9370constructorimpl(bundle)) + (iHashCode2 * 31);
        }
        return iHashCode2;
    }

    public final void setDefaultArguments(Bundle bundle) {
        this.defaultArguments = bundle;
    }

    public final void setNavOptions(NavOptions navOptions) {
        this.navOptions = navOptions;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavAction(0x");
        sb.append(Integer.toHexString(this.destinationId));
        sb.append(")");
        if (this.navOptions != null) {
            sb.append(" navOptions=");
            sb.append(this.navOptions);
        }
        return sb.toString();
    }

    public NavAction(int i, NavOptions navOptions) {
        this(i, navOptions, null, 4, null);
    }

    public NavAction(int i, NavOptions navOptions, Bundle bundle) {
        this.destinationId = i;
        this.navOptions = navOptions;
        this.defaultArguments = bundle;
    }

    public NavAction(int i) {
        this(i, null, null, 6, null);
    }
}
