package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ki8 implements NavArgs {
    public final ri8 a;
    public final String b;
    public final Deeplink.Desktop c;

    public ki8(ri8 ri8Var, String str, Deeplink.Desktop desktop) {
        this.a = ri8Var;
        this.b = str;
        this.c = desktop;
    }

    public static final ki8 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "tabName", ki8.class)) {
            fg.c("Required argument \"tabName\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(ri8.class) && !Serializable.class.isAssignableFrom(ri8.class)) {
            n1.e(ri8.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        ri8 ri8Var = (ri8) bundle.get("tabName");
        if (ri8Var == null) {
            fg.c("Argument \"tabName\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey("after_event")) {
            fg.c("Required argument \"after_event\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("after_event");
        if (string == null) {
            fg.c("Argument \"after_event\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey("deeplink")) {
            fg.c("Required argument \"deeplink\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (Parcelable.class.isAssignableFrom(Deeplink.Desktop.class) || Serializable.class.isAssignableFrom(Deeplink.Desktop.class)) {
            return new ki8(ri8Var, string, (Deeplink.Desktop) bundle.get("deeplink"));
        }
        n1.e(Deeplink.Desktop.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ki8)) {
            return false;
        }
        ki8 ki8Var = (ki8) obj;
        return this.a == ki8Var.a && this.b.equals(ki8Var.b) && aa4.e(this.c, ki8Var.c);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        Deeplink.Desktop desktop = this.c;
        return iB + (desktop == null ? 0 : desktop.hashCode());
    }

    public final String toString() {
        return "TabContainerFragmentArgs(tabName=" + this.a + ", afterEvent=" + this.b + ", deeplink=" + this.c + ")";
    }
}
