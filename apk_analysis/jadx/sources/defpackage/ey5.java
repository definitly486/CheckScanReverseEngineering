package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavArgs;
import com.tapjoy.TJAdUnitConstants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ey5 implements NavArgs {
    public final String a;
    public final int b;
    public final uv7 c;
    public final kd.o0 d;

    public ey5(String str, int i, uv7 uv7Var, kd.o0 o0Var) {
        this.a = str;
        this.b = i;
        this.c = uv7Var;
        this.d = o0Var;
    }

    public static final ey5 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, TJAdUnitConstants.String.TOOLBAR, ey5.class)) {
            fg.c("Required argument \"toolbar\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString(TJAdUnitConstants.String.TOOLBAR);
        if (string == null) {
            fg.c("Argument \"toolbar\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey(TtmlNode.ATTR_ID)) {
            fg.c("Required argument \"id\" is missing and does not have an android:defaultValue");
            return null;
        }
        int i = bundle.getInt(TtmlNode.ATTR_ID);
        if (!bundle.containsKey("onlineShopsReason")) {
            fg.c("Required argument \"onlineShopsReason\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(uv7.class) && !Serializable.class.isAssignableFrom(uv7.class)) {
            n1.e(uv7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        uv7 uv7Var = (uv7) bundle.get("onlineShopsReason");
        if (uv7Var == null) {
            fg.c("Argument \"onlineShopsReason\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey("selectedFrom")) {
            fg.c("Required argument \"selectedFrom\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(kd.o0.class) && !Serializable.class.isAssignableFrom(kd.o0.class)) {
            n1.e(kd.o0.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        kd.o0 o0Var = (kd.o0) bundle.get("selectedFrom");
        if (o0Var != null) {
            return new ey5(string, i, uv7Var, o0Var);
        }
        fg.c("Argument \"selectedFrom\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ey5)) {
            return false;
        }
        ey5 ey5Var = (ey5) obj;
        return this.a.equals(ey5Var.a) && this.b == ey5Var.b && this.c == ey5Var.c && this.d == ey5Var.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "OnlineShopsFragmentArgs(toolbar=", this.a, ", id=", ", onlineShopsReason=");
        sbA.append(this.c);
        sbA.append(", selectedFrom=");
        sbA.append(this.d);
        sbA.append(")");
        return sbA.toString();
    }
}
