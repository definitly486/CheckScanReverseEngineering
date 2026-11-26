package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class uq0 implements NavDirections {
    public final ri8 a;
    public final String b;
    public final Deeplink.Desktop c;

    public uq0(ri8 ri8Var, String str, Deeplink.Desktop desktop) {
        ri8Var.getClass();
        this.a = ri8Var;
        this.b = str;
        this.c = desktop;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq0)) {
            return false;
        }
        uq0 uq0Var = (uq0) obj;
        return this.a == uq0Var.a && this.b.equals(uq0Var.b) && aa4.e(this.c, uq0Var.c);
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return R.id.action_Tab;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(ri8.class);
        Serializable serializable = this.a;
        if (zIsAssignableFrom) {
            serializable.getClass();
            bundle.putParcelable("tabName", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(ri8.class)) {
                n1.e(ri8.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            serializable.getClass();
            bundle.putSerializable("tabName", serializable);
        }
        bundle.putString("after_event", this.b);
        boolean zIsAssignableFrom2 = Parcelable.class.isAssignableFrom(Deeplink.Desktop.class);
        Parcelable parcelable = this.c;
        if (zIsAssignableFrom2) {
            bundle.putParcelable("deeplink", parcelable);
            return bundle;
        }
        if (Serializable.class.isAssignableFrom(Deeplink.Desktop.class)) {
            bundle.putSerializable("deeplink", (Serializable) parcelable);
            return bundle;
        }
        n1.e(Deeplink.Desktop.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
        return null;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        Deeplink.Desktop desktop = this.c;
        return iB + (desktop == null ? 0 : desktop.hashCode());
    }

    public final String toString() {
        return "ActionTab(tabName=" + this.a + ", afterEvent=" + this.b + ", deeplink=" + this.c + ")";
    }
}
