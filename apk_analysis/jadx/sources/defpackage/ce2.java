package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ce2 {
    public final ie2 a;

    public ce2(ie2 ie2Var) {
        this.a = ie2Var;
    }

    public final Deeplink a(Uri uri) {
        uri.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (he2 he2Var : this.a.a) {
            linkedHashMap.put(he2Var.c(), he2Var);
            String strB = he2Var.b();
            if (strB != null) {
                linkedHashMap.put(strB, he2Var);
            }
        }
        he2 he2Var2 = (he2) linkedHashMap.get(uri.getHost());
        if (he2Var2 != null) {
            return he2Var2.a(uri);
        }
        return null;
    }
}
