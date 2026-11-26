package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class pc9 implements NavArgs {
    public final String a;
    public final gl3 b;
    public final int c;

    public pc9(String str, gl3 gl3Var, int i) {
        this.a = str;
        this.b = gl3Var;
        this.c = i;
    }

    public static final pc9 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "phone", pc9.class)) {
            fg.c("Required argument \"phone\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("phone");
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
            return new pc9(string, gl3Var, bundle.getInt("codeLength"));
        }
        fg.c("Required argument \"codeLength\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pc9)) {
            return false;
        }
        pc9 pc9Var = (pc9) obj;
        return aa4.e(this.a, pc9Var.a) && this.b == pc9Var.b && this.c == pc9Var.c;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = str == null ? 0 : str.hashCode();
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VerificationFlowFragmentArgs(phone=");
        sb.append(this.a);
        sb.append(", fromType=");
        sb.append(this.b);
        sb.append(", codeLength=");
        return l2.e(sb, ")", this.c);
    }
}
