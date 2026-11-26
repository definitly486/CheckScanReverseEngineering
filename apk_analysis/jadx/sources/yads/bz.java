package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bz {
    public static final ArrayList a = new ArrayList();

    public static void a(int i) {
        ArrayList arrayList = a;
        if (arrayList.size() > i) {
            return;
        }
        arrayList.ensureCapacity(i + 1);
        int size = arrayList.size();
        if (size > i) {
            return;
        }
        while (true) {
            a.add(size, "child#" + size);
            if (size == i) {
                return;
            } else {
                size++;
            }
        }
    }

    public static String b(int i) {
        a(i);
        return (String) a.get(i);
    }
}
