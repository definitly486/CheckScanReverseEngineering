package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zza implements Iterator {
    public int b;
    public int c;
    public int d;
    public final /* synthetic */ p0b e;

    public zza(p0b p0bVar) {
        this.e = p0bVar;
        this.b = p0bVar.f;
        this.c = p0bVar.isEmpty() ? -1 : 0;
        this.d = -1;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        p0b p0bVar = this.e;
        if (p0bVar.f != this.b) {
            ln.e();
            return null;
        }
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        int i = this.c;
        this.d = i;
        Object objA = a(i);
        int i2 = this.c + 1;
        if (i2 >= p0bVar.g) {
            i2 = -1;
        }
        this.c = i2;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        p0b p0bVar = this.e;
        if (p0bVar.f != this.b) {
            ln.e();
            return;
        }
        zzaz.zzf(this.d >= 0, "no calls to next() since the last call to remove()");
        this.b += 32;
        p0bVar.remove(p0bVar.b()[this.d]);
        this.c--;
        this.d = -1;
    }
}
