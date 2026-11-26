package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class vd7 implements NavArgs {
    public final vg7 a;
    public final long b;
    public final String c;

    public vd7(vg7 vg7Var, long j, String str) {
        this.a = vg7Var;
        this.b = j;
        this.c = str;
    }

    public static final vd7 fromBundle(Bundle bundle) {
        String string;
        if (!c9.j(bundle, "fromWeb", vd7.class)) {
            fg.c("Required argument \"fromWeb\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(vg7.class) && !Serializable.class.isAssignableFrom(vg7.class)) {
            n1.e(vg7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        vg7 vg7Var = (vg7) bundle.get("fromWeb");
        if (vg7Var == null) {
            fg.c("Argument \"fromWeb\" is marked as non-null but was passed a null value.");
            return null;
        }
        long j = bundle.containsKey("from_id") ? bundle.getLong("from_id") : -1L;
        if (bundle.containsKey("from_type")) {
            string = bundle.getString("from_type");
            if (string == null) {
                fg.c("Argument \"from_type\" is marked as non-null but was passed a null value.");
                return null;
            }
        } else {
            string = "";
        }
        return new vd7(vg7Var, j, string);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vd7)) {
            return false;
        }
        vd7 vd7Var = (vd7) obj;
        return this.a == vd7Var.a && this.b == vd7Var.b && this.c.equals(vd7Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + vg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ScannerFragmentArgs(fromWeb=");
        sb.append(this.a);
        sb.append(", fromId=");
        sb.append(this.b);
        return kh.c(sb, ", fromType=", this.c, ")");
    }
}
