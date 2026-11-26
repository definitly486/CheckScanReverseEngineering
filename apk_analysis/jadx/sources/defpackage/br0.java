package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavDirections;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class br0 implements NavDirections {
    public final String a;
    public final int b;
    public final uv7 c;
    public final kd.o0 d;

    public br0(String str, int i, uv7 uv7Var, kd.o0 o0Var) {
        str.getClass();
        uv7Var.getClass();
        o0Var.getClass();
        this.a = str;
        this.b = i;
        this.c = uv7Var;
        this.d = o0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof br0)) {
            return false;
        }
        br0 br0Var = (br0) obj;
        return aa4.e(this.a, br0Var.a) && this.b == br0Var.b && this.c == br0Var.c && this.d == br0Var.d;
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return R.id.action_OnlineShops;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        bundle.putString(TJAdUnitConstants.String.TOOLBAR, this.a);
        bundle.putInt(TtmlNode.ATTR_ID, this.b);
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(uv7.class);
        Serializable serializable = this.c;
        if (zIsAssignableFrom) {
            serializable.getClass();
            bundle.putParcelable("onlineShopsReason", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(uv7.class)) {
                n1.e(uv7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            serializable.getClass();
            bundle.putSerializable("onlineShopsReason", serializable);
        }
        boolean zIsAssignableFrom2 = Parcelable.class.isAssignableFrom(kd.o0.class);
        Serializable serializable2 = this.d;
        if (zIsAssignableFrom2) {
            serializable2.getClass();
            bundle.putParcelable("selectedFrom", (Parcelable) serializable2);
            return bundle;
        }
        if (!Serializable.class.isAssignableFrom(kd.o0.class)) {
            n1.e(kd.o0.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        serializable2.getClass();
        bundle.putSerializable("selectedFrom", serializable2);
        return bundle;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "ActionOnlineShops(toolbar=", this.a, ", id=", ", onlineShopsReason=");
        sbA.append(this.c);
        sbA.append(", selectedFrom=");
        sbA.append(this.d);
        sbA.append(")");
        return sbA.toString();
    }
}
