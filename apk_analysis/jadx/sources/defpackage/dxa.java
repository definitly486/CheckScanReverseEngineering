package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class dxa implements Iterator {
    public final Iterator b;
    public Collection c;
    public final /* synthetic */ fxa d;

    public dxa(fxa fxaVar) {
        this.d = fxaVar;
        this.b = fxaVar.d.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.b.next();
        this.c = (Collection) entry.getValue();
        Object key = entry.getKey();
        Collection collection = (Collection) entry.getValue();
        vwa vwaVar = (vwa) this.d.e;
        List list = (List) collection;
        return new k1b(key, list instanceof RandomAccess ? new mxa(vwaVar, key, list, null) : new wxa(vwaVar, key, list, null));
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzaz.zzf(this.c != null, "no calls to next() since the last call to remove()");
        this.b.remove();
        this.d.e.f -= this.c.size();
        this.c.clear();
        this.c = null;
    }
}
