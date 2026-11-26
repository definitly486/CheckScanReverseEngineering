package defpackage;

import com.google.android.gms.measurement.internal.zzbf;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class xwa implements Iterator {
    public final Iterator b;

    public xwa(zzbf zzbfVar) {
        this.b = zzbfVar.b.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return (String) this.b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
