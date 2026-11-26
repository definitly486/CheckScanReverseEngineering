package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class c62 implements NavArgs {
    public final d62 a;

    public c62(d62 d62Var) {
        d62Var.getClass();
        this.a = d62Var;
    }

    public static final c62 fromBundle(Bundle bundle) {
        d62 d62Var;
        if (!c9.j(bundle, "fromType", c62.class)) {
            d62Var = d62.Default;
        } else {
            if (!Parcelable.class.isAssignableFrom(d62.class) && !Serializable.class.isAssignableFrom(d62.class)) {
                n1.e(d62.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            d62Var = (d62) bundle.get("fromType");
            if (d62Var == null) {
                fg.c("Argument \"fromType\" is marked as non-null but was passed a null value.");
                return null;
            }
        }
        return new c62(d62Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c62) && this.a == ((c62) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CreateCardFragmentArgs(fromType=" + this.a + ")";
    }

    public c62() {
        this(d62.Default);
    }
}
