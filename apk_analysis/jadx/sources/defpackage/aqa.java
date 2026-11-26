package defpackage;

import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzas;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class aqa implements Iterator {
    public final /* synthetic */ Iterator b;
    public final /* synthetic */ Iterator c;

    public aqa(zzae zzaeVar, Iterator it, Iterator it2) {
        this.b = it;
        this.c = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b.hasNext()) {
            return true;
        }
        return this.c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.b;
        if (it.hasNext()) {
            return new zzas(((Integer) it.next()).toString());
        }
        Iterator it2 = this.c;
        if (it2.hasNext()) {
            return new zzas((String) it2.next());
        }
        qz0.e();
        return null;
    }
}
