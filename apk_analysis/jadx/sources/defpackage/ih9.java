package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.warefly.checkscan.presentation.Deeplink;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ih9 implements NavArgs {
    public final Deeplink.Webview a;

    public ih9(Deeplink.Webview webview) {
        this.a = webview;
    }

    public static final ih9 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "deeplink", ih9.class)) {
            fg.c("Required argument \"deeplink\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(Deeplink.Webview.class) && !Serializable.class.isAssignableFrom(Deeplink.Webview.class)) {
            n1.e(Deeplink.Webview.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        Deeplink.Webview webview = (Deeplink.Webview) bundle.get("deeplink");
        if (webview != null) {
            return new ih9(webview);
        }
        fg.c("Argument \"deeplink\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ih9) && this.a.equals(((ih9) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "WebviewFlowFragmentArgs(deeplink=" + this.a + ")";
    }
}
