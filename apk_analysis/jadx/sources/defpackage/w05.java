package defpackage;

import android.content.Context;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class w05 {
    public final Context a;
    public final ArrayList b = new ArrayList(3);

    public w05(Context context) {
        TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
        this.a = context;
    }

    public final y05 a() {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty()) {
            ah.f("No plugins were added to this builder. Use #usePlugin method to add them");
            return null;
        }
        ArrayList<b15> arrayList2 = new ArrayList(arrayList.size());
        HashSet hashSet = new HashSet(3);
        Iterator it = arrayList.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                v36.a aVar = new v36.a();
                float f = this.a.getResources().getDisplayMetrics().density;
                d15.a aVar2 = new d15.a();
                aVar2.d = (int) ((8.0f * f) + 0.5f);
                aVar2.a = (int) ((24.0f * f) + 0.5f);
                int i2 = (int) ((4.0f * f) + 0.5f);
                aVar2.b = i2;
                int i3 = (int) ((1.0f * f) + 0.5f);
                aVar2.c = i3;
                aVar2.e = i3;
                aVar2.f = i2;
                x05.a aVar3 = new x05.a();
                g15.a aVar4 = new g15.a();
                c15.a aVar5 = new c15.a();
                for (b15 b15Var : arrayList2) {
                    b15Var.e(aVar);
                    b15Var.b(aVar3);
                    b15Var.g(aVar4);
                    b15Var.d(aVar5);
                }
                d15 d15Var = new d15(aVar2);
                c15 c15Var = new c15(Collections.unmodifiableMap(aVar5.a));
                aVar3.a = d15Var;
                aVar3.g = c15Var;
                if (aVar3.b == null) {
                    aVar3.b = new u49();
                }
                if (aVar3.c == null) {
                    aVar3.c = new rm9();
                }
                if (aVar3.d == null) {
                    aVar3.d = new rq4();
                }
                if (aVar3.e == null) {
                    aVar3.e = new i14.a();
                }
                if (aVar3.f == null) {
                    aVar3.f = new cd2();
                }
                f15 f15Var = new f15(i, aVar4, new x05(aVar3));
                TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
                return new y05(new v36(aVar), f15Var, Collections.unmodifiableList(arrayList2));
            }
            b15 b15Var2 = (b15) it.next();
            if (!arrayList2.contains(b15Var2)) {
                if (hashSet.contains(b15Var2)) {
                    qz0.i(hashSet, "Cyclic dependency chain found: ");
                    return null;
                }
                hashSet.add(b15Var2);
                b15Var2.getClass();
                hashSet.remove(b15Var2);
                if (!arrayList2.contains(b15Var2)) {
                    if (d12.class.isAssignableFrom(b15Var2.getClass())) {
                        arrayList2.add(0, b15Var2);
                    } else {
                        arrayList2.add(b15Var2);
                    }
                }
            }
        }
    }
}
