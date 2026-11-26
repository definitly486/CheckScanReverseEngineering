package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class m61 implements NavArgs {
    public final Deeplink.Catalog a;

    public m61(Deeplink.Catalog catalog) {
        this.a = catalog;
    }

    public static final m61 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "deeplink", m61.class)) {
            fg.c("Required argument \"deeplink\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(Deeplink.Catalog.class) && !Serializable.class.isAssignableFrom(Deeplink.Catalog.class)) {
            n1.e(Deeplink.Catalog.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        Deeplink.Catalog catalog = (Deeplink.Catalog) bundle.get("deeplink");
        if (catalog != null) {
            return new m61(catalog);
        }
        fg.c("Argument \"deeplink\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m61) && this.a.equals(((m61) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CatalogFlowFragmentArgs(deeplink=" + this.a + ")";
    }
}
