package defpackage;

import com.google.android.gms.internal.measurement.zzabr;
import com.google.android.gms.internal.measurement.zzyl;
import com.google.android.gms.internal.measurement.zzzj;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class shc extends zzzj {
    public Object[] a;
    public int b;

    public final void a(zzyl zzylVar, Object obj) {
        int iB;
        if (!zzylVar.zzf() && (iB = b(zzylVar)) != -1) {
            zzabr.zza(obj, "metadata value");
            this.a[iB + iB + 1] = obj;
            return;
        }
        int i = this.b + 1;
        Object[] objArrCopyOf = this.a;
        int length = objArrCopyOf.length;
        if (i + i > length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, length + length);
            this.a = objArrCopyOf;
        }
        int i2 = this.b;
        zzabr.zza(zzylVar, "metadata key");
        objArrCopyOf[i2 + i2] = zzylVar;
        Object[] objArr = this.a;
        int i3 = this.b;
        zzabr.zza(obj, "metadata value");
        objArr[i3 + i3 + 1] = obj;
        this.b++;
    }

    public final int b(zzyl zzylVar) {
        for (int i = 0; i < this.b; i++) {
            if (this.a[i + i].equals(zzylVar)) {
                return i;
            }
        }
        return -1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata{");
        for (int i = 0; i < this.b; i++) {
            sb.append(" '");
            sb.append(zzb(i));
            sb.append("': ");
            sb.append(zzc(i));
        }
        sb.append(" }");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final zzyl zzb(int i) {
        if (i < this.b) {
            return (zzyl) this.a[i + i];
        }
        v93.b();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final Object zzc(int i) {
        if (i < this.b) {
            return this.a[i + i + 1];
        }
        v93.b();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final Object zzd(zzyl zzylVar) {
        int iB = b(zzylVar);
        if (iB != -1) {
            return zzylVar.zze(this.a[iB + iB + 1]);
        }
        return null;
    }
}
