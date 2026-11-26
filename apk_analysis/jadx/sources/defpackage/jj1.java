package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class jj1 implements NavArgs {
    public final fl3 a;

    public jj1(fl3 fl3Var) {
        this.a = fl3Var;
    }

    public static final jj1 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "fromCome", jj1.class)) {
            fg.c("Required argument \"fromCome\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(fl3.class) && !Serializable.class.isAssignableFrom(fl3.class)) {
            n1.e(fl3.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        fl3 fl3Var = (fl3) bundle.get("fromCome");
        if (fl3Var != null) {
            return new jj1(fl3Var);
        }
        fg.c("Argument \"fromCome\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jj1) && this.a == ((jj1) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ChooseRegionFragmentArgs(fromCome=" + this.a + ")";
    }
}
