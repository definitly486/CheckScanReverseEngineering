package defpackage;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class rf3 implements NavDirections {
    public final boolean a;
    public final int b = R.id.action_favorites;

    public rf3(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rf3) && this.a == ((rf3) obj).a;
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return this.b;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isFavorite", this.a);
        return bundle;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("ActionFavorites(isFavorite=", ")", this.a);
    }
}
