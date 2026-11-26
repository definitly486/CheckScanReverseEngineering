package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class zg3 implements ah3 {
    public final Uri a;

    public zg3(Uri uri) {
        this.a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zg3) && defpackage.aa4.e(this.a, ((zg3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Success(reportUri=" + this.a + ")";
    }
}
