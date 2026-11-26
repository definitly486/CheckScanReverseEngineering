package defpackage;

import com.google.android.gms.internal.measurement.zzael;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class rra implements Iterator {
    public final Iterator b;

    public rra(Iterator it) {
        this.b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.b.next();
        return entry.getValue() instanceof zzael ? new qra(entry) : entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.b.remove();
    }
}
