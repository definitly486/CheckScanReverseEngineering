package yads;

import android.net.Uri;
import android.view.View;
import defpackage.qa8;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class vn1 {
    public final pz a;
    public qz b;

    public vn1(pz pzVar) {
        this.a = pzVar;
    }

    public final void a(Uri uri, View view) {
        LinkedHashMap linkedHashMap;
        String queryParameter = uri.getQueryParameter("assetName");
        if (queryParameter != null) {
            String queryParameter2 = uri.getQueryParameter("position");
            pz pzVar = null;
            Integer numO = queryParameter2 != null ? qa8.o(10, queryParameter2) : null;
            if (numO == null) {
                pzVar = this.a;
            } else {
                qz qzVar = this.b;
                if (qzVar != null && (linkedHashMap = qzVar.b) != null) {
                    pzVar = (pz) linkedHashMap.get(numO);
                }
            }
            if (pzVar != null) {
                pzVar.a(view, queryParameter);
            }
        }
    }
}
