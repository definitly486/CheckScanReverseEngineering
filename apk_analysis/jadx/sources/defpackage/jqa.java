package defpackage;

import com.google.android.gms.internal.measurement.zzacn;
import com.google.android.gms.internal.measurement.zzacr;

/* JADX INFO: loaded from: classes4.dex */
public final class jqa implements zzacn {
    public int b = 0;
    public final int c;
    public final /* synthetic */ zzacr d;

    public jqa(zzacr zzacrVar) {
        this.d = zzacrVar;
        this.c = zzacrVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(zza());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzacn
    public final byte zza() {
        int i = this.b;
        if (i < this.c) {
            this.b = i + 1;
            return this.d.a(i);
        }
        qz0.e();
        return (byte) 0;
    }
}
