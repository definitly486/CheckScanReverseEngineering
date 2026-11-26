package yads;

import defpackage.k57;
import java.net.URI;

/* JADX INFO: loaded from: classes6.dex */
public final class e56 {
    public static boolean a(String str) {
        Object aVar;
        try {
            new URI(str);
            aVar = Boolean.valueOf((str == null || str.length() == 0) ? false : true);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = Boolean.FALSE;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return ((Boolean) aVar).booleanValue();
    }
}
