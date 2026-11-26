package yads;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pn4 {
    public static en4 a(r75 r75Var, List list) {
        wv wvVar = r75Var.p;
        if (wvVar == null) {
            return new en4(304, (byte[]) null, true, list);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(((q83) it.next()).a);
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List list2 = wvVar.h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (q83 q83Var : wvVar.h) {
                    if (!treeSet.contains(q83Var.a)) {
                        arrayList.add(q83Var);
                    }
                }
            }
        } else if (!wvVar.g.isEmpty()) {
            for (Map.Entry entry : wvVar.g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new q83((String) entry.getKey(), (String) entry.getValue()));
                }
            }
        }
        return new en4(304, wvVar.a, true, (List) arrayList);
    }

    public static byte[] a(InputStream inputStream, int i, rv rvVar) throws Throwable {
        byte[] bArrA;
        lx4 lx4Var = new lx4(rvVar, i);
        try {
            bArrA = rvVar.a(1024);
            while (true) {
                try {
                    int i2 = inputStream.read(bArrA);
                    if (i2 == -1) {
                        break;
                    }
                    lx4Var.write(bArrA, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        boolean z = li6.a;
                    }
                    rvVar.a(bArrA);
                    lx4Var.close();
                    throw th;
                }
            }
            byte[] byteArray = lx4Var.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                boolean z2 = li6.a;
            }
            rvVar.a(bArrA);
            lx4Var.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }
}
