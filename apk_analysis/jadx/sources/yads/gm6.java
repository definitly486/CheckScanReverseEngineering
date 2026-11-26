package yads;

import com.yandex.mobile.ads.common.AdInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class gm6 {
    public final AdInfo a(i70 i70Var) {
        String str = i70Var.a;
        String str2 = i70Var.b;
        String str3 = i70Var.c;
        List list = i70Var.d;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(w90.a((s70) it.next()));
        }
        return new AdInfo(str, str2, str3, arrayList);
    }
}
