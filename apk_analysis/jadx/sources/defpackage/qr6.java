package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavArgs;
import com.google.android.gms.actions.SearchIntents;

/* JADX INFO: loaded from: classes5.dex */
public final class qr6 implements NavArgs {
    public final int a;
    public final String b;
    public final boolean c;

    public qr6(int i, String str, boolean z) {
        this.a = i;
        this.b = str;
        this.c = z;
    }

    public static final qr6 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, TtmlNode.ATTR_ID, qr6.class)) {
            fg.c("Required argument \"id\" is missing and does not have an android:defaultValue");
            return null;
        }
        int i = bundle.getInt(TtmlNode.ATTR_ID);
        if (!bundle.containsKey(SearchIntents.EXTRA_QUERY)) {
            fg.c("Required argument \"query\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString(SearchIntents.EXTRA_QUERY);
        if (string == null) {
            fg.c("Argument \"query\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (bundle.containsKey("isFavorite")) {
            return new qr6(i, string, bundle.getBoolean("isFavorite"));
        }
        fg.c("Required argument \"isFavorite\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qr6)) {
            return false;
        }
        qr6 qr6Var = (qr6) obj;
        return this.a == qr6Var.a && this.b.equals(qr6Var.b) && this.c == qr6Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return dh.e(ng.e(this.a, "PromocodesFragmentArgs(id=", ", query=", this.b, ", isFavorite="), this.c, ")");
    }
}
