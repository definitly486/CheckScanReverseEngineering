package defpackage;

import com.google.android.gms.internal.auth.zzhe;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class vmb implements Iterator {
    public final Iterator b;

    public vmb(zzhe zzheVar) {
        this.b = zzheVar.b.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
