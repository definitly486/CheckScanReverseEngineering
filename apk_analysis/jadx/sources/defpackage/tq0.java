package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class tq0 implements NavDirections {
    public final d62 a;
    public final int b;

    public tq0(d62 d62Var) {
        d62Var.getClass();
        this.a = d62Var;
        this.b = R.id.action_create_card_fragment;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tq0) && this.a == ((tq0) obj).a;
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return this.b;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(d62.class);
        Serializable serializable = this.a;
        if (zIsAssignableFrom) {
            serializable.getClass();
            bundle.putParcelable("fromType", (Parcelable) serializable);
            return bundle;
        }
        if (Serializable.class.isAssignableFrom(d62.class)) {
            serializable.getClass();
            bundle.putSerializable("fromType", serializable);
        }
        return bundle;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ActionCreateCardFragment(fromType=" + this.a + ")";
    }
}
