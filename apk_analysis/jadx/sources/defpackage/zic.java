package defpackage;

import com.google.android.gms.internal.measurement.zzaaa;
import com.google.android.gms.internal.measurement.zzabr;
import com.google.android.gms.internal.measurement.zzyl;
import com.google.android.gms.internal.measurement.zzzj;
import com.google.android.gms.internal.measurement.zzzq;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zic extends zzaaa {
    public final zzzj b;
    public final zzzj c;
    public final int[] d;
    public final int e;

    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    public /* synthetic */ zic(zzzj zzzjVar, zzzj zzzjVar2) {
        this.b = zzzjVar;
        this.c = zzzjVar2;
        int iZza = zzzjVar2.zza();
        zzabr.zzb(iZza <= 28, "metadata size too large");
        int[] iArr = new int[iZza];
        this.d = iArr;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (i < iZza) {
            zzyl zzylVarA = a(i);
            long jZzi = zzylVarA.zzi() | j;
            if (jZzi == j) {
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        i3 = -1;
                        break;
                    } else if (zzylVarA.equals(a(iArr[i3] & 31))) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 != -1) {
                    iArr[i3] = zzylVarA.zzf() ? iArr[i3] | (1 << (i + 4)) : i;
                } else {
                    iArr[i2] = i;
                    i2++;
                }
            } else {
                iArr[i2] = i;
                i2++;
            }
            i++;
            j = jZzi;
        }
        this.e = i2;
    }

    public final zzyl a(int i) {
        zzzj zzzjVar = this.b;
        int iZza = zzzjVar.zza();
        return i >= iZza ? this.c.zzb(i - iZza) : zzzjVar.zzb(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final void zza(zzzq zzzqVar, Object obj) {
        for (int i = 0; i < this.e; i++) {
            int i2 = this.d[i];
            zzyl zzylVarA = a(i2 & 31);
            if (zzylVarA.zzf()) {
                zzzqVar.b(zzylVarA, new yic(this, zzylVarA, i2), obj);
            } else {
                zzzj zzzjVar = this.b;
                int iZza = zzzjVar.zza();
                if (i2 >= iZza) {
                    zzzjVar = this.c;
                    i2 -= iZza;
                }
                zzzqVar.a(zzylVarA, zzylVarA.zze(zzzjVar.zzc(i2)), obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final int zzb() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final Set zzc() {
        return new xic(this);
    }
}
