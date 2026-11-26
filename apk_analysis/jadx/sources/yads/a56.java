package yads;

import defpackage.k57;
import defpackage.ta8;
import java.net.URI;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a56 {
    public static String a(String str) {
        Object aVar;
        String str2;
        if (str == null) {
            aVar = "bad_url";
        } else {
            try {
                boolean zD = ta8.D(str, "://", false);
                if (!zD) {
                    str = b(str);
                }
                URI uri = new URI(str);
                if (zD) {
                    str2 = uri.getScheme() + "://";
                } else {
                    str2 = "";
                }
                aVar = str2 + uri.getHost();
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
        }
        return (String) (aVar instanceof k57.a ? "bad_url" : aVar);
    }

    public static String b(String str) {
        return defpackage.bj.c("stub://", str);
    }
}
