package yads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.HandlerCompat;
import androidx.core.view.ViewGroupKt;
import defpackage.j59;
import defpackage.po9;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import yads.bj2;
import yads.br0;
import yads.fs2;
import yads.r02;
import yads.vq0;

/* JADX INFO: loaded from: classes6.dex */
public final class bj2 {
    public final fh6 a;
    public final ti2 b;
    public boolean l;
    public final Handler c = new Handler(Looper.getMainLooper());
    public final cj2 d = new cj2();
    public final cj2 e = new cj2();
    public final kk5 f = new kk5(new defpackage.gm3() { // from class: no9
        @Override // defpackage.gm3
        public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
            return bj2.a(this.b, (vq0) obj, (fs2) obj2, (View) obj3, (br0) obj4, (r02) obj5);
        }
    }, new defpackage.gm3() { // from class: oo9
        @Override // defpackage.gm3
        public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
            return bj2.b(this.b, (vq0) obj, (fs2) obj2, (View) obj3, (br0) obj4, (r02) obj5);
        }
    });
    public final WeakHashMap g = new WeakHashMap();
    public final WeakHashMap h = new WeakHashMap();
    public final WeakHashMap i = new WeakHashMap();
    public final au5 j = new au5();
    public final WeakHashMap k = new WeakHashMap();
    public final Runnable m = new po9(this, 0);

    public bj2(fh6 fh6Var, ti2 ti2Var) {
        this.a = fh6Var;
        this.b = ti2Var;
    }

    public final void a(vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var, List list, List list2) {
        this = this;
        fs2 fs2Var2 = fs2Var;
        View view2 = view;
        fh6 fh6Var = this.a;
        int iHeight = (view2.isShown() && view2.getGlobalVisibleRect(fh6Var.a)) ? ((fh6Var.a.height() * fh6Var.a.width()) * 100) / (view2.getHeight() * view2.getWidth()) : 0;
        WeakHashMap weakHashMap = this.g;
        if (iHeight > 0) {
            weakHashMap.put(view2, br0Var);
        } else {
            weakHashMap.remove(view2);
        }
        if (!this.l) {
            this.l = true;
            this.c.post(this.m);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Long lValueOf = Long.valueOf(((Number) s02.a((si2) obj).a(fs2Var2)).longValue());
            Object arrayList = linkedHashMap.get(lValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lValueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            long jLongValue = ((Number) entry.getKey()).longValue();
            List list3 = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList(list3.size());
            for (Object obj2 : list3) {
                if (this.a(vq0Var, fs2Var2, view2, (si2) obj2, iHeight, this.d)) {
                    arrayList2.add(obj2);
                }
                fs2Var2 = fs2Var;
                view2 = view;
            }
            if (arrayList2.isEmpty()) {
                fs2Var2 = fs2Var;
                view2 = view;
            } else {
                fs2Var2 = fs2Var;
                view2 = view;
                this.a(vq0Var, fs2Var2, view2, arrayList2, jLongValue, this.d);
                iHeight = iHeight;
            }
        }
        int i = iHeight;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj3 : list2) {
            Long lValueOf2 = Long.valueOf(((Number) s02.a((gc1) obj3).a(fs2Var2)).longValue());
            Object arrayList3 = linkedHashMap2.get(lValueOf2);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap2.put(lValueOf2, arrayList3);
            }
            ((List) arrayList3).add(obj3);
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            long jLongValue2 = ((Number) entry2.getKey()).longValue();
            List<gc1> list4 = (List) entry2.getValue();
            boolean z = false;
            for (gc1 gc1Var : list4) {
                boolean z2 = ((long) i) > ((Number) gc1Var.k.a(fs2Var2)).longValue();
                z = z || z2;
                if (z2) {
                    WeakHashMap weakHashMap2 = this.k;
                    Object linkedHashSet = weakHashMap2.get(view2);
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                        weakHashMap2.put(view2, linkedHashSet);
                    }
                    ((Set) linkedHashSet).add(gc1Var);
                }
            }
            if (z) {
                this.j.put(view2, br0Var);
            }
            ArrayList arrayList4 = new ArrayList(list4.size());
            for (Object obj4 : list4) {
                if (this.a(vq0Var, fs2Var2, view2, (gc1) obj4, i, this.e)) {
                    arrayList4.add(obj4);
                }
                fs2Var2 = fs2Var;
                view2 = view;
            }
            if (arrayList4.isEmpty()) {
                fs2Var2 = fs2Var;
                view2 = view;
            } else {
                fs2Var2 = fs2Var;
                view2 = view;
                this.a(vq0Var, fs2Var2, view2, arrayList4, jLongValue2, this.e);
            }
        }
    }

    public final void b(vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var, List list, List list2) {
        ArrayList arrayListH0 = defpackage.qn1.h0(list2, list);
        if (arrayListH0.isEmpty()) {
            return;
        }
        qb1 qb1Var = vq0Var.O;
        if (view == null) {
            kk5 kk5Var = this.f;
            kk5Var.getClass();
            Iterator it = arrayListH0.iterator();
            while (it.hasNext()) {
                kk5Var.a((r02) it.next());
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                a(vq0Var, fs2Var, (View) null, (si2) it2.next(), 0, this.d);
            }
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                a(vq0Var, fs2Var, (View) null, (gc1) it3.next(), 0, this.e);
            }
            return;
        }
        if (this.h.containsKey(view)) {
            return;
        }
        View view2 = view;
        View view3 = null;
        while (view2 != null) {
            if (!oh6.a(view2) || view2.isLayoutRequested()) {
                view3 = view2;
            }
            Object parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
        }
        if (view3 == null && !view.isLayoutRequested()) {
            if (defpackage.aa4.e(vq0Var.O, qb1Var)) {
                this.f.a(view, vq0Var, fs2Var, br0Var, arrayListH0);
                a(vq0Var, fs2Var, view, br0Var, a(list, fs2Var), a(list2, fs2Var));
            }
            this.h.remove(view);
            return;
        }
        View view4 = view;
        View view5 = null;
        while (view4 != null) {
            if (!oh6.a(view4) || view4.isLayoutRequested()) {
                view5 = view4;
            }
            Object parent2 = view4.getParent();
            view4 = parent2 instanceof View ? (View) parent2 : null;
        }
        if (view5 != null) {
            view5.addOnLayoutChangeListener(new aj2(vq0Var, qb1Var, this, view, fs2Var, br0Var, arrayListH0, list, list2));
            j59 j59Var = j59.a;
        }
        this.h.put(view, br0Var);
    }

    public static final void b(bj2 bj2Var) {
        Iterator it = bj2Var.b.a.iterator();
        if (!it.hasNext()) {
            bj2Var.l = false;
        } else {
            it.next().getClass();
            throw new ClassCastException();
        }
    }

    public static final j59 b(bj2 bj2Var, vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var, r02 r02Var) {
        if (r02Var instanceof si2) {
            bj2Var.a(vq0Var, fs2Var, (View) null, r02Var, 0, bj2Var.d);
        } else if (r02Var instanceof gc1) {
            bj2Var.a(vq0Var, fs2Var, (View) null, r02Var, 0, bj2Var.e);
        }
        return j59.a;
    }

    public final void b(final tt ttVar, View view, br0 br0Var) {
        a(ttVar, view, br0Var, new defpackage.bm3() { // from class: lo9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(bj2.b(this.b, ttVar, (View) obj, (br0) obj2));
            }
        });
    }

    public static final boolean b(bj2 bj2Var, tt ttVar, View view, br0 br0Var) {
        fh6 fh6Var = bj2Var.a;
        boolean z = view.isShown() && view.getGlobalVisibleRect(fh6Var.a) && view.getWidth() == fh6Var.a.width() && view.getHeight() == fh6Var.a.height();
        if (z && defpackage.aa4.e(bj2Var.i.get(view), Boolean.TRUE)) {
            return false;
        }
        bj2Var.i.put(view, Boolean.valueOf(z));
        if (br0Var != null) {
            a(bj2Var, ttVar.a, ttVar.b, view, br0Var);
        }
        return true;
    }

    public static final j59 a(bj2 bj2Var, vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var, r02 r02Var) {
        boolean z = r02Var instanceof si2;
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        if (z) {
            bj2Var.a(vq0Var, fs2Var, view, br0Var, u96.h(r02Var), kx2Var);
        } else if (r02Var instanceof gc1) {
            bj2Var.a(vq0Var, fs2Var, view, br0Var, kx2Var, u96.h(r02Var));
        }
        return j59.a;
    }

    public final LinkedHashMap a() {
        LinkedHashMap linkedHashMap;
        au5 au5Var = this.j;
        synchronized (au5Var.b) {
            Set<Map.Entry> setEntrySet = au5Var.entrySet();
            int iB = defpackage.m05.b(defpackage.kn1.q(setEntrySet, 10));
            if (iB < 16) {
                iB = 16;
            }
            linkedHashMap = new LinkedHashMap(iB);
            for (Map.Entry entry : setEntrySet) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e A[PHI: r1
      0x001e: PHI (r1v1 java.util.List) = (r1v0 java.util.List), (r1v2 java.util.List) binds: [B:3:0x000a, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE]] */
    public static void a(bj2 bj2Var, vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var) {
        List list;
        p41 p41VarA = br0Var.a();
        List listM = p41VarA.m();
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        if (listM != null) {
            list = listM;
        } else {
            si2 si2VarK = p41VarA.k();
            listM = si2VarK != null ? u96.h(si2VarK) : null;
            if (listM == null) {
                list = kx2Var;
            } else {
                list = listM;
            }
        }
        List listB = br0Var.a().b();
        bj2Var.b(vq0Var, fs2Var, view, br0Var, list, listB == null ? kx2Var : listB);
    }

    public final void a(final tt ttVar, View view, br0 br0Var) {
        a(ttVar, view, br0Var, new defpackage.bm3() { // from class: mo9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(bj2.a(this.b, ttVar, (View) obj, (br0) obj2));
            }
        });
    }

    public static final boolean a(bj2 bj2Var, tt ttVar, View view, br0 br0Var) {
        bj2Var.i.remove(view);
        if (br0Var == null) {
            return true;
        }
        a(bj2Var, ttVar.a, ttVar.b, null, br0Var);
        return true;
    }

    public static void a(tt ttVar, View view, br0 br0Var, defpackage.bm3 bm3Var) {
        if (((Boolean) bm3Var.invoke(view, br0Var)).booleanValue() && (view instanceof ViewGroup)) {
            for (View view2 : ViewGroupKt.getChildren((ViewGroup) view)) {
                a(ttVar, view2, (br0) ttVar.a.w.get(view2), bm3Var);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    public final boolean a(vq0 vq0Var, fs2 fs2Var, View view, r02 r02Var, int i, cj2 cj2Var) {
        boolean z;
        Object next;
        b50 b50Var;
        Set setKeySet;
        b50[] b50VarArr;
        if (!(r02Var instanceof si2)) {
            if (r02Var instanceof gc1) {
                Set set = (Set) this.k.get(view);
                if ((set != null ? set.contains(r02Var) : false) && i <= ((Number) ((gc1) r02Var).k.a(fs2Var)).longValue()) {
                    z = true;
                }
            }
            z = false;
        } else if (i >= ((Number) ((si2) r02Var).k.a(fs2Var)).longValue()) {
            z = true;
        } else {
            z = false;
        }
        b50 b50VarA = c50.a((String) r02Var.g().a(fs2Var), vq0Var);
        Iterator it = cj2Var.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((Map) next).containsKey(b50VarA));
        Map map = (Map) next;
        if (map != null && (setKeySet = map.keySet()) != null && (b50VarArr = (b50[]) setKeySet.toArray(new b50[0])) != null) {
            int length = b50VarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    b50Var = null;
                    break;
                }
                b50Var = b50VarArr[i2];
                if (defpackage.aa4.e(b50Var, b50VarA)) {
                    break;
                }
                i2++;
            }
        } else {
            b50Var = null;
            break;
        }
        if (view != null && b50Var == null && z) {
            return true;
        }
        if ((view == null || b50Var != null || z) && (view == null || b50Var == null || !z)) {
            if (view != null && b50Var != null && !z) {
                a(b50Var, view, r02Var, cj2Var);
            } else if (view == null && b50Var != null) {
                a(b50Var, (View) null, r02Var, cj2Var);
            }
        }
        return false;
    }

    public final void a(vq0 vq0Var, fs2 fs2Var, View view, ArrayList arrayList, long j, cj2 cj2Var) {
        HashMap map = new HashMap(arrayList.size(), 1.0f);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            r02 r02Var = (r02) it.next();
            b50 b50VarA = c50.a((String) r02Var.g().a(fs2Var), vq0Var);
            int i = cr3.a;
            vj5[] vj5VarArr = vj5.b;
            cr3.a();
            map.put(b50VarA, r02Var);
        }
        Map mapSynchronizedMap = Collections.synchronizedMap(map);
        cj2Var.a.add(mapSynchronizedMap);
        String strS = vq0Var.s();
        Handler handler = this.c;
        zi2 zi2Var = new zi2(this, view, vq0Var, strS, fs2Var, mapSynchronizedMap, arrayList);
        if (mapSynchronizedMap == null) {
            handler.postDelayed(zi2Var, j);
        } else {
            HandlerCompat.postDelayed(handler, zi2Var, mapSynchronizedMap, j);
        }
    }

    public final void a(b50 b50Var, View view, r02 r02Var, cj2 cj2Var) {
        Object next;
        int i = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
        Iterator it = cj2Var.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Map) next).remove(b50Var) == null);
        Map map = (Map) next;
        if (map != null && map.isEmpty()) {
            a(this, map);
            cj2Var.a.remove(map);
        }
        Set set = (Set) this.k.get(view);
        if (!(r02Var instanceof gc1) || view == null || set == null) {
            return;
        }
        set.remove(r02Var);
        if (set.isEmpty()) {
            this.k.remove(view);
            this.j.remove(view);
        }
    }

    public static final j59 a(bj2 bj2Var, Map map) {
        bj2Var.c.removeCallbacksAndMessages(map);
        return j59.a;
    }

    public static ArrayList a(List list, fs2 fs2Var) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) ((r02) obj).d().a(fs2Var)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
