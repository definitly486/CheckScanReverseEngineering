package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class f61 implements NavArgs {
    public final Deeplink.CashBackFlow a;

    public f61(Deeplink.CashBackFlow cashBackFlow) {
        this.a = cashBackFlow;
    }

    public static final f61 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "deeplink", f61.class)) {
            fg.c("Required argument \"deeplink\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(Deeplink.CashBackFlow.class) && !Serializable.class.isAssignableFrom(Deeplink.CashBackFlow.class)) {
            n1.e(Deeplink.CashBackFlow.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        Deeplink.CashBackFlow cashBackFlow = (Deeplink.CashBackFlow) bundle.get("deeplink");
        if (cashBackFlow != null) {
            return new f61(cashBackFlow);
        }
        fg.c("Argument \"deeplink\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f61) && this.a.equals(((f61) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CashbackFlowFragmentArgs(deeplink=" + this.a + ")";
    }
}
