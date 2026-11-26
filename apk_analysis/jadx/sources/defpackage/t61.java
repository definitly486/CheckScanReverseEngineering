package defpackage;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class t61 implements NavDirections {
    public final String a;
    public final int b;

    public t61(String str) {
        str.getClass();
        this.a = str;
        this.b = R.id.action_bonuses;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t61) && aa4.e(this.a, ((t61) obj).a);
    }

    @Override // androidx.navigation.NavDirections
    public final int getActionId() {
        return this.b;
    }

    @Override // androidx.navigation.NavDirections
    public final Bundle getArguments() {
        Bundle bundle = new Bundle();
        bundle.putString("after_event", this.a);
        return bundle;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("ActionBonuses(afterEvent=", this.a, ")");
    }
}
