package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class yxa extends jya implements Serializable {
    public final transient p0b e;
    public transient int f;

    public yxa(p0b p0bVar) {
        zzaz.zzd(p0bVar.isEmpty());
        this.e = p0bVar;
    }

    public abstract wxa a(Object obj, Collection collection);

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final int zzh() {
        return this.f;
    }

    public final Collection zzj(Object obj) {
        Object arrayList = (Collection) this.e.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList(3);
        }
        vwa vwaVar = (vwa) this;
        List list = (List) arrayList;
        return list instanceof RandomAccess ? new mxa(vwaVar, obj, list, null) : new wxa(vwaVar, obj, list, null);
    }

    public final Collection zzk(Object obj) {
        Collection collection = (Collection) this.e.remove(obj);
        if (collection == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(collection);
        this.f -= collection.size();
        collection.clear();
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final void zzs() {
        p0b p0bVar = this.e;
        Iterator it = p0bVar.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        p0bVar.clear();
        this.f = 0;
    }

    @Override // defpackage.jya, com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final boolean zzt(Object obj, Object obj2) {
        p0b p0bVar = this.e;
        Collection collection = (Collection) p0bVar.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.f++;
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        if (!arrayList.add(obj2)) {
            xg.d("New Collection violated the Collection spec");
            return false;
        }
        this.f++;
        p0bVar.put(obj, arrayList);
        return true;
    }
}
