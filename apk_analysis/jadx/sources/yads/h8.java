package yads;

import com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class h8 {
    public static r7 a(n7 n7Var) {
        Object next;
        int i = n7Var.e;
        boolean z = n7Var.a;
        boolean z2 = n7Var.f;
        Map map = n7Var.h;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            k7 k7Var = l7.c;
            String str = (String) entry.getKey();
            k7Var.getClass();
            Iterator<E> it = l7.e.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((l7) next).b, str));
            AdQualityVerifiableNetwork adQualityVerifiableNetworkA = k7.a((l7) next);
            if (adQualityVerifiableNetworkA != null) {
                linkedHashMap.put(adQualityVerifiableNetworkA, new f8(((q7) entry.getValue()).a, ((q7) entry.getValue()).b));
            }
        }
        return new r7(i, z, z2, linkedHashMap, n7Var.g);
    }
}
