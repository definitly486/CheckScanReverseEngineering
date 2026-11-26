package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class yl2 implements NavArgs {
    public final Deeplink.Desktop a;

    public yl2(Deeplink.Desktop desktop) {
        this.a = desktop;
    }

    public static final yl2 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "deeplink", yl2.class)) {
            fg.c("Required argument \"deeplink\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(Deeplink.Desktop.class) && !Serializable.class.isAssignableFrom(Deeplink.Desktop.class)) {
            n1.e(Deeplink.Desktop.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        Deeplink.Desktop desktop = (Deeplink.Desktop) bundle.get("deeplink");
        if (desktop != null) {
            return new yl2(desktop);
        }
        fg.c("Argument \"deeplink\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yl2) && this.a.equals(((yl2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DesktopFlowFragmentArgs(deeplink=" + this.a + ")";
    }
}
