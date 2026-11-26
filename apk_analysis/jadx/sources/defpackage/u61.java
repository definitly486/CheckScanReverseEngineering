package defpackage;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class u61 implements NavDirections {
    public final long a;
    public final int b = R.id.action_catalog_card_operations;

    public u61(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u61) && this.a == ((u61) obj).a;
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return this.b;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        bundle.putLong("cardId", this.a);
        return bundle;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "ActionCatalogCardOperations(cardId=", ")");
    }
}
