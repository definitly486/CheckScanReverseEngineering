package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class tr6 implements NavArgs {
    public final int a;

    public tr6(int i) {
        this.a = i;
    }

    public static final tr6 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "promotionId", tr6.class)) {
            return new tr6(bundle.getInt("promotionId"));
        }
        fg.c("Required argument \"promotionId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tr6) && this.a == ((tr6) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "PromotionFlowFragmentArgs(promotionId=", ")");
    }
}
