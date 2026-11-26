package defpackage;

import com.google.android.gms.internal.measurement.zzas;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class sta implements Iterator {
    public final /* synthetic */ Iterator b;

    public sta(Iterator it) {
        this.b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new zzas((String) this.b.next());
    }
}
