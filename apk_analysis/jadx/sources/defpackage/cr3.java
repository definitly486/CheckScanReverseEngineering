package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class cr3 implements kf4 {
    public final lv3 b;
    public final URL c;
    public final String d;
    public String e;
    public URL f;
    public volatile byte[] g;
    public int h;

    public cr3(String str, lv3 lv3Var) {
        this.c = null;
        if (TextUtils.isEmpty(str)) {
            fg.c("Must not be null or empty");
            throw null;
        }
        this.d = str;
        r96.c(lv3Var, "Argument must not be null");
        this.b = lv3Var;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(kf4.a);
        }
        messageDigest.update(this.g);
    }

    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.c;
        r96.c(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        URL url = this.f;
        if (url == null) {
            if (TextUtils.isEmpty(this.e)) {
                String string = this.d;
                if (TextUtils.isEmpty(string)) {
                    URL url2 = this.c;
                    r96.c(url2, "Argument must not be null");
                    string = url2.toString();
                }
                this.e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$[]");
            }
            url = new URL(this.e);
            this.f = url;
        }
        return url;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof cr3) {
            cr3 cr3Var = (cr3) obj;
            if (c().equals(cr3Var.c()) && this.b.equals(cr3Var.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        int i = this.h;
        if (i != 0) {
            return i;
        }
        int iHashCode = c().hashCode();
        this.h = iHashCode;
        int iHashCode2 = this.b.hashCode() + (iHashCode * 31);
        this.h = iHashCode2;
        return iHashCode2;
    }

    public final String toString() {
        return c();
    }

    public cr3(URL url) {
        mm4 mm4Var = lv3.a;
        r96.c(url, "Argument must not be null");
        this.c = url;
        this.d = null;
        r96.c(mm4Var, "Argument must not be null");
        this.b = mm4Var;
    }
}
