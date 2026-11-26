package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class yn1 {
    public final Uri a;

    public yn1(Uri uri) {
        this.a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yn1) && defpackage.aa4.e(this.a, ((yn1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DivKitClickExtensionData(url=" + this.a + ")";
    }
}
