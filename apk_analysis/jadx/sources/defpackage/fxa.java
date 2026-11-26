package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class fxa extends y3b {
    public final transient p0b d;
    public final /* synthetic */ yxa e;

    public fxa(yxa yxaVar, p0b p0bVar) {
        this.e = yxaVar;
        this.d = p0bVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final wxa get(Object obj) {
        Object obj2;
        try {
            obj2 = this.d.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        vwa vwaVar = (vwa) this.e;
        List list = (List) collection;
        return list instanceof RandomAccess ? new mxa(vwaVar, obj, list, null) : new wxa(vwaVar, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        yxa yxaVar = this.e;
        p0b p0bVar = yxaVar.e;
        p0b p0bVar2 = this.d;
        if (p0bVar2 == p0bVar) {
            yxaVar.zzs();
            return;
        }
        Iterator it = p0bVar2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Collection collection = (Collection) entry.getValue();
            yxaVar.a(entry.getKey(), (Collection) entry.getValue());
            zzaz.zzf(collection != null, "no calls to next() since the last call to remove()");
            it.remove();
            yxaVar.f -= collection.size();
            collection.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        try {
            return this.d.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.d.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.e.zzw();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.d.remove(obj);
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(collection);
        this.e.f -= collection.size();
        collection.clear();
        return arrayList;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.d.toString();
    }
}
