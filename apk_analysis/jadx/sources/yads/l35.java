package yads;

import android.net.Uri;
import defpackage.nl3;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class l35 {
    public static Uri a(Uri uri, nl3 nl3Var) {
        Map linkedHashMap;
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null) {
            int iB = defpackage.m05.b(defpackage.kn1.q(queryParameterNames, 10));
            if (iB < 16) {
                iB = 16;
            }
            linkedHashMap = new LinkedHashMap(iB);
            for (String str : queryParameterNames) {
                linkedHashMap.put(str, uri.getQueryParameter(str));
            }
        } else {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = defpackage.mx2.b;
        }
        m35 m35Var = (m35) nl3Var.invoke(new m35(linkedHashMap));
        Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
        for (Map.Entry entry : m35Var.a.entrySet()) {
            builderClearQuery.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return builderClearQuery.build();
    }
}
