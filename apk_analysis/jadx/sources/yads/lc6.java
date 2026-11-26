package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class lc6 {
    public static kc6 a(List list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((t96) obj).a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        return new kc6(arrayList2, arrayList);
    }
}
