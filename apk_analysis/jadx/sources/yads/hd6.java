package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class hd6 {
    public final Context a;
    public final zv3 b = new zv3();
    public final mf6 c = new mf6();

    public hd6(Context context) {
        this.a = context.getApplicationContext();
    }

    public final void a(List list, Map map) {
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((String) it.next(), map));
        }
        this.c.getClass();
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!defpackage.aa4.e((String) obj, "about:blank")) {
                arrayList2.add(obj);
            }
        }
        for (String str : arrayList2) {
            wd6 wd6VarA = wd6.c.a(this.a);
            wd6VarA.b.a(new av4(wd6VarA.a, str, new oi6()));
        }
    }
}
