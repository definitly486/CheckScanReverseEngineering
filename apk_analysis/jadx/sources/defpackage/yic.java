package defpackage;

import com.google.android.gms.internal.measurement.zzyl;
import com.google.android.gms.internal.measurement.zzzj;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class yic implements Iterator {
    public final zzyl b;
    public int c;
    public int d;
    public final /* synthetic */ zic e;

    public /* synthetic */ yic(zic zicVar, zzyl zzylVar, int i) {
        this.e = zicVar;
        this.b = zzylVar;
        int i2 = i & 31;
        this.c = i2;
        this.d = i >>> (i2 + 5);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.c;
        zic zicVar = this.e;
        zzzj zzzjVar = zicVar.b;
        int iZza = zzzjVar.zza();
        Object objZze = this.b.zze(i >= iZza ? zicVar.c.zzc(i - iZza) : zzzjVar.zzc(i));
        int i2 = this.d;
        if (i2 == 0) {
            this.c = -1;
            return objZze;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2) + 1;
        this.d >>>= iNumberOfTrailingZeros;
        this.c += iNumberOfTrailingZeros;
        return objZze;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
