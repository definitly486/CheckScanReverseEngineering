package yads;

import android.util.Base64;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class xo {
    public static String a(byte[] bArr) {
        Object aVar;
        try {
            aVar = Base64.encodeToString(bArr, 2);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (String) aVar;
    }

    public static String a(String str) {
        byte[] bytes = str.getBytes(defpackage.ha1.b);
        bytes.getClass();
        return a(bytes);
    }
}
