package yads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class qg3 implements or {
    public final ArrayList a;
    public String b = "";
    public int c;

    public qg3(ArrayList arrayList) {
        this.a = arrayList;
    }

    @Override // yads.or
    public final boolean a(String str) {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((or) it.next()).a(str)) {
                return false;
            }
        }
        return true;
    }
}
