package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavArgs;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class c63 implements NavArgs {
    public final String a;
    public final int b;

    public c63(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static final c63 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, TJAdUnitConstants.String.TOOLBAR, c63.class)) {
            fg.c("Required argument \"toolbar\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString(TJAdUnitConstants.String.TOOLBAR);
        if (string == null) {
            fg.c("Argument \"toolbar\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (bundle.containsKey(TtmlNode.ATTR_ID)) {
            return new c63(string, bundle.getInt(TtmlNode.ATTR_ID));
        }
        fg.c("Required argument \"id\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c63)) {
            return false;
        }
        c63 c63Var = (c63) obj;
        return this.a.equals(c63Var.a) && this.b == c63Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return hg.d(this.b, "FavoritePreviewsFragmentArgs(toolbar=", this.a, ", id=", ")");
    }
}
