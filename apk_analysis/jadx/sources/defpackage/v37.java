package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class v37 implements NavArgs {
    public final String a;
    public final vg7 b;
    public final boolean c;
    public final long d;
    public final String e;

    public v37(String str, vg7 vg7Var, boolean z, long j, String str2) {
        this.a = str;
        this.b = vg7Var;
        this.c = z;
        this.d = j;
        this.e = str2;
    }

    public static final v37 fromBundle(Bundle bundle) {
        String string;
        if (!c9.j(bundle, "qrCode", v37.class)) {
            fg.c("Required argument \"qrCode\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string2 = bundle.getString("qrCode");
        boolean z = bundle.containsKey("scan") ? bundle.getBoolean("scan") : false;
        if (!bundle.containsKey("web")) {
            fg.c("Required argument \"web\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(vg7.class) && !Serializable.class.isAssignableFrom(vg7.class)) {
            n1.e(vg7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        vg7 vg7Var = (vg7) bundle.get("web");
        if (vg7Var == null) {
            fg.c("Argument \"web\" is marked as non-null but was passed a null value.");
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
        return new v37(string2, vg7Var, z, j, string);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v37)) {
            return false;
        }
        v37 v37Var = (v37) obj;
        return aa4.e(this.a, v37Var.a) && this.b == v37Var.b && this.c == v37Var.c && this.d == v37Var.d && this.e.equals(v37Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        return this.e.hashCode() + vg.b(tg.c((this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31, 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RequestsFlowFragmentArgs(qrCode=");
        sb.append(this.a);
        sb.append(", web=");
        sb.append(this.b);
        sb.append(", scan=");
        sb.append(this.c);
        sb.append(", fromId=");
        sb.append(this.d);
        return kh.c(sb, ", fromType=", this.e, ")");
    }
}
