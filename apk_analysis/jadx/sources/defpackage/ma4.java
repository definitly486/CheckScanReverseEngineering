package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class ma4 implements NavArgs {
    public final boolean a;

    public ma4(boolean z) {
        this.a = z;
    }

    public static final ma4 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "new_flow", ma4.class)) {
            return new ma4(bundle.getBoolean("new_flow"));
        }
        fg.c("Required argument \"new_flow\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ma4) && this.a == ((ma4) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("IssueCardFlowFragmentArgs(newFlow=", ")", this.a);
    }
}
