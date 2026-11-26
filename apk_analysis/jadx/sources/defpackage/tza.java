package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzax;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class tza extends AbstractSet {
    public final /* synthetic */ p0b b;

    public tza(p0b p0bVar) {
        this.b = p0bVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        if (mapE != null) {
            return mapE.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        int iM = p0bVar.m(entry.getKey());
        return iM != -1 && zzax.zza(p0bVar.d()[iM], entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        return mapE != null ? mapE.entrySet().iterator() : new mza(p0bVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        if (mapE != null) {
            return mapE.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (p0bVar.j()) {
            return false;
        }
        int iK = p0bVar.k();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object obj2 = p0bVar.b;
        Objects.requireNonNull(obj2);
        int iA = r0b.a(key, value, iK, obj2, p0bVar.a(), p0bVar.b(), p0bVar.d());
        if (iA == -1) {
            return false;
        }
        p0bVar.g(iA, iK);
        p0bVar.g--;
        p0bVar.f += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.b.size();
    }
}
