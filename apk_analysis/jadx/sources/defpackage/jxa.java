package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class jxa implements Iterator {
    public Map.Entry b;
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ kxa d;

    public jxa(kxa kxaVar, Iterator it) {
        this.c = it;
        this.d = kxaVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.c.next();
        this.b = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzaz.zzf(this.b != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.b.getValue();
        this.c.remove();
        this.d.c.f -= collection.size();
        collection.clear();
        this.b = null;
    }
}
