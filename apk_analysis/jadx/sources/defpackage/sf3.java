package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class sf3 implements NavDirections {
    public final String a;
    public final vg7 b;
    public final boolean c;
    public final long d;
    public final String e;

    public sf3(String str, vg7 vg7Var, boolean z, long j, String str2) {
        this.a = str;
        this.b = vg7Var;
        this.c = z;
        this.d = j;
        this.e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sf3)) {
            return false;
        }
        sf3 sf3Var = (sf3) obj;
        return aa4.e(this.a, sf3Var.a) && this.b == sf3Var.b && this.c == sf3Var.c && this.d == sf3Var.d && this.e.equals(sf3Var.e);
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return R.id.action_requests_flow;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        bundle.putString("qrCode", this.a);
        bundle.putBoolean("scan", this.c);
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(vg7.class);
        Serializable serializable = this.b;
        if (zIsAssignableFrom) {
            bundle.putParcelable("web", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(vg7.class)) {
                n1.e(vg7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("web", serializable);
        }
        bundle.putLong("from_id", this.d);
        bundle.putString("from_type", this.e);
        return bundle;
    }

    public final int hashCode() {
        String str = this.a;
        return this.e.hashCode() + vg.b(tg.c((this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31, 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActionRequestsFlow(qrCode=");
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
