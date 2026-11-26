package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class kc9 implements NavArgs {
    public final String a;
    public final gl3 b;
    public final int c;

    public kc9(String str, gl3 gl3Var, int i) {
        this.a = str;
        this.b = gl3Var;
        this.c = i;
    }

    public static final kc9 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "phone", kc9.class)) {
            fg.c("Required argument \"phone\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("phone");
        if (string == null) {
            fg.c("Argument \"phone\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey("fromType")) {
            fg.c("Required argument \"fromType\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(gl3.class) && !Serializable.class.isAssignableFrom(gl3.class)) {
            n1.e(gl3.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        gl3 gl3Var = (gl3) bundle.get("fromType");
        if (gl3Var == null) {
            fg.c("Argument \"fromType\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (bundle.containsKey("codeLength")) {
            return new kc9(string, gl3Var, bundle.getInt("codeLength"));
        }
        fg.c("Required argument \"codeLength\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kc9)) {
            return false;
        }
        kc9 kc9Var = (kc9) obj;
        return this.a.equals(kc9Var.a) && this.b == kc9Var.b && this.c == kc9Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VerificationCardPhoneFragmentArgs(phone=");
        sb.append(this.a);
        sb.append(", fromType=");
        sb.append(this.b);
        sb.append(", codeLength=");
        return l2.e(sb, ")", this.c);
    }
}
