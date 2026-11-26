package yads;

import android.net.Uri;
import android.webkit.URLUtil;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b56 {
    public static String a(String str) {
        Object aVar;
        try {
            aVar = Uri.parse(b(str)).getHost();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (String) aVar;
    }

    public static String b(String str) {
        return (URLUtil.isHttpUrl(str) || URLUtil.isHttpsUrl(str)) ? str : defpackage.bj.c("https://", str);
    }
}
