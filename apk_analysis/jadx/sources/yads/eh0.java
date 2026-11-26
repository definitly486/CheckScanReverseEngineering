package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class eh0 implements gh0 {
    public final Uri a;

    public eh0(Uri uri) {
        this.a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eh0) && defpackage.aa4.e(this.a, ((eh0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ShareReport(reportUri=" + this.a + ")";
    }
}
