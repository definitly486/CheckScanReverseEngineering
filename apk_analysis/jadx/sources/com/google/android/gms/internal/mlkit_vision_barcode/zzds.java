package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.t6b;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzds {
    public static int a(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static boolean b(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static boolean c(t6b t6bVar, Collection collection) {
        collection.getClass();
        if (collection instanceof zzdi) {
            collection = ((zzdi) collection).zza();
        }
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= t6bVar.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= t6bVar.remove(it.next());
            }
            return zRemove;
        }
        Iterator<E> it2 = t6bVar.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }
}
