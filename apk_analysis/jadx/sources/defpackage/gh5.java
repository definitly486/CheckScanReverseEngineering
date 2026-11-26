package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class gh5<Delegated> {
    public String a;
    public final Delegated b;
    public boolean c;
    public List<ih5<? super Delegated>> d;
    public final ArrayList e = new ArrayList();
    public Bundle f;

    public gh5(Delegated delegated) {
        this.b = delegated;
    }

    public final void a() {
        for (ih5<? super Delegated> ih5Var : this.d) {
            boolean z = this.c;
            Delegated delegated = this.b;
            if (!z || !ih5Var.getAttachedViews().contains(delegated)) {
                ih5Var.attachView((jh5) delegated);
            }
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((gh5) it.next()).a();
        }
        this.c = true;
    }

    public final void b(Bundle bundle) {
        Boolean bool;
        boolean zBooleanValue;
        List<ih5<? super Delegated>> list;
        if (bundle != null) {
            bundle = bundle.getBundle("MoxyDelegateBundle");
        }
        this.c = false;
        Bundle bundle2 = bundle != null ? bundle : new Bundle();
        this.f = bundle2;
        Delegated delegated = this.b;
        if (bundle == null || !bundle2.containsKey("com.arellomobile.mvp.MvpDelegate.KEY_TAG")) {
            this.a = delegated.getClass().getSimpleName() + "$" + gh5.class.getSimpleName() + toString().replace(gh5.class.getName(), "");
        } else {
            this.a = bundle.getString("com.arellomobile.mvp.MvpDelegate.KEY_TAG");
        }
        Object obj = hh5.a().c;
        String str = this.a;
        Boolean bool2 = eg9.d;
        if (bool2 != null) {
            zBooleanValue = bool2.booleanValue();
        } else {
            try {
                bool = Boolean.TRUE;
                eg9.d = bool;
            } catch (NoClassDefFoundError unused) {
                bool = Boolean.FALSE;
                eg9.d = bool;
            }
            zBooleanValue = bool.booleanValue();
        }
        if (zBooleanValue) {
            List list2 = null;
            for (Class<?> superclass = delegated.getClass(); superclass != Object.class && list2 == null; superclass = superclass.getSuperclass()) {
                list2 = (List) se5.b.get(superclass);
            }
            if (list2 == null || list2.isEmpty()) {
                list = Collections.EMPTY_LIST;
            } else {
                ArrayList arrayList = new ArrayList();
                rf6 rf6Var = (rf6) hh5.a().d;
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    for (pf6 pf6Var : ((of6) it.next()).getPresenterFields()) {
                        Class<? extends ih5> cls = pf6Var.b;
                        HashMap map = ((qf6) hh5.a().b).a;
                        StringBuilder sbC = ti0.c(str, "$");
                        sbC.append(pf6Var.a);
                        String string = sbC.toString();
                        ih5<?> ih5VarB = (ih5) map.get(string);
                        if (ih5VarB == null) {
                            ih5VarB = pf6Var.b(delegated);
                            if (ih5VarB == null) {
                                ih5VarB = null;
                            } else {
                                ih5VarB.setTag(string);
                                ih5VarB.setPresenterClass(cls);
                                map.put(string, ih5VarB);
                            }
                        }
                        if (ih5VarB != null) {
                            HashMap map2 = rf6Var.b;
                            HashMap map3 = rf6Var.a;
                            Set hashSet = (Set) map3.get(ih5VarB);
                            if (hashSet == null) {
                                hashSet = new HashSet();
                                map3.put(ih5VarB, hashSet);
                            }
                            hashSet.add(str);
                            Set hashSet2 = (Set) map2.get(str);
                            if (hashSet2 == null) {
                                hashSet2 = new HashSet();
                                map2.put(str, hashSet2);
                            }
                            hashSet2.add(ih5VarB);
                            arrayList.add(ih5VarB);
                            pf6Var.a(delegated, ih5VarB);
                        }
                    }
                }
                list = arrayList;
            }
        } else {
            list = Collections.EMPTY_LIST;
        }
        this.d = list;
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            ((gh5) it2.next()).b(bundle);
        }
    }

    public final void c() {
        boolean zIsEmpty;
        rf6 rf6Var = (rf6) hh5.a().d;
        qf6 qf6Var = (qf6) hh5.a().b;
        String str = this.a;
        HashSet<ih5> hashSet = new HashSet();
        HashMap map = rf6Var.b;
        for (Map.Entry entry : map.entrySet()) {
            if (((String) entry.getKey()).startsWith(str)) {
                hashSet.addAll((Collection) entry.getValue());
            }
        }
        for (ih5 ih5Var : hashSet) {
            String str2 = this.a;
            HashMap map2 = rf6Var.a;
            Set set = (Set) map.get(str2);
            if (set != null) {
                set.remove(ih5Var);
            }
            if (set == null || set.isEmpty()) {
                map.remove(str2);
            }
            Set set2 = (Set) map2.get(ih5Var);
            if (set2 == null) {
                map2.remove(ih5Var);
                zIsEmpty = true;
            } else {
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    if (((String) it.next()).startsWith(str2)) {
                        it.remove();
                    }
                }
                zIsEmpty = set2.isEmpty();
                if (zIsEmpty) {
                    map2.remove(ih5Var);
                }
            }
            if (zIsEmpty) {
                ih5Var.onDestroy();
            }
        }
    }

    public final void d() {
        Iterator<ih5<? super Delegated>> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().destroyView((jh5) this.b);
        }
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        arrayList2.addAll(arrayList);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((gh5) it2.next()).d();
        }
    }

    public final void e() {
        for (ih5<? super Delegated> ih5Var : this.d) {
            boolean z = this.c;
            Delegated delegated = this.b;
            if (z || ih5Var.getAttachedViews().contains(delegated)) {
                ih5Var.detachView((jh5) delegated);
            }
        }
        this.c = false;
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((gh5) it.next()).e();
        }
    }

    public final void f(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle.putBundle("MoxyDelegateBundle", bundle2);
        bundle2.putAll(this.f);
        bundle2.putString("com.arellomobile.mvp.MvpDelegate.KEY_TAG", this.a);
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((gh5) it.next()).f(bundle2);
        }
    }
}
