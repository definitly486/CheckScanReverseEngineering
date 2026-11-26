package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class t66 extends u66 {
    public final String b;
    public Uri c;

    public t66(Uri uri, String str) {
        this.b = str;
        this.c = uri;
    }

    public final void a(Uri uri) {
        b(uri);
    }

    public final void b(Uri uri) {
        if (defpackage.aa4.e(this.c, uri)) {
            return;
        }
        this.c = uri;
        a((u66) this);
    }

    public final Uri c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
