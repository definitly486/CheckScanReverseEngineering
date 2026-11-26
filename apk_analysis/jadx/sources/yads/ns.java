package yads;

import android.os.SystemClock;
import android.util.Pair;
import defpackage.e4a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public final class ns {
    public final HashMap a;
    public final HashMap b;
    public final HashMap c;
    public final Random d;

    public ns() {
        Random random = new Random();
        this.c = new HashMap();
        this.d = random;
        this.a = new HashMap();
        this.b = new HashMap();
    }

    public static void a(long j, HashMap map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (((Long) entry.getValue()).longValue() <= j) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            map.remove(arrayList.get(i));
        }
    }

    public final ms b(List list) {
        ms msVar;
        ArrayList arrayListA = a(list);
        if (arrayListA.size() < 2) {
            Iterator it = arrayListA.iterator();
            return (ms) (it.hasNext() ? it.next() : null);
        }
        Collections.sort(arrayListA, new e4a());
        ArrayList arrayList = new ArrayList();
        int i = ((ms) arrayListA.get(0)).c;
        for (int i2 = 0; i2 < arrayListA.size(); i2++) {
            ms msVar2 = (ms) arrayListA.get(i2);
            if (i != msVar2.c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (ms) arrayListA.get(0);
            }
            arrayList.add(new Pair(msVar2.b, Integer.valueOf(msVar2.d)));
        }
        ms msVar3 = (ms) this.c.get(arrayList);
        if (msVar3 != null) {
            return msVar3;
        }
        List listSubList = arrayListA.subList(0, arrayList.size());
        int i3 = 0;
        for (int i4 = 0; i4 < listSubList.size(); i4++) {
            i3 += ((ms) listSubList.get(i4)).d;
        }
        int iNextInt = this.d.nextInt(i3);
        int i5 = 0;
        for (int i6 = 0; i6 < listSubList.size(); i6++) {
            msVar = (ms) listSubList.get(i6);
            i5 += msVar.d;
            if (iNextInt < i5) {
                this.c.put(arrayList, msVar);
                return msVar;
            }
        }
        msVar = (ms) dq3.a(listSubList);
        this.c.put(arrayList, msVar);
        return msVar;
    }

    public final ArrayList a(List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a(jElapsedRealtime, this.a);
        a(jElapsedRealtime, this.b);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ms msVar = (ms) list.get(i);
            if (!this.a.containsKey(msVar.b) && !this.b.containsKey(Integer.valueOf(msVar.c))) {
                arrayList.add(msVar);
            }
        }
        return arrayList;
    }

    public static int a(ms msVar, ms msVar2) {
        int iCompare = Integer.compare(msVar.c, msVar2.c);
        return iCompare != 0 ? iCompare : msVar.b.compareTo(msVar2.b);
    }
}
