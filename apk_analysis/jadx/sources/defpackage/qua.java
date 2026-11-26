package defpackage;

import com.google.android.gms.internal.measurement.zzas;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class qua implements Iterator {
    public int b = 0;
    public final /* synthetic */ zzas c;

    public qua(zzas zzasVar) {
        this.c = zzasVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c.b.length();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        String str = this.c.b;
        int i = this.b;
        if (i < str.length()) {
            this.b = i + 1;
            return new zzas(String.valueOf(i));
        }
        qz0.e();
        return null;
    }
}
