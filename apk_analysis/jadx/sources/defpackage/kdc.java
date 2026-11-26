package defpackage;

import com.google.android.gms.internal.mlkit_common.zzmu;
import com.google.android.gms.internal.mlkit_common.zzna;
import com.google.android.gms.internal.mlkit_common.zzsi;
import com.google.android.gms.internal.mlkit_common.zzsj;

/* JADX INFO: loaded from: classes4.dex */
public final class kdc extends zzsi {
    public zzmu a;
    public String b;
    public boolean c;
    public boolean d;
    public sc5 e;
    public zzna f;
    public int g;
    public byte h;

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zza(zzna zznaVar) {
        if (zznaVar != null) {
            this.f = zznaVar;
            return this;
        }
        o2.d("Null downloadStatus");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zzb(zzmu zzmuVar) {
        if (zzmuVar != null) {
            this.a = zzmuVar;
            return this;
        }
        o2.d("Null errorCode");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zzc(int i) {
        this.g = i;
        this.h = (byte) (this.h | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zzd(sc5 sc5Var) {
        if (sc5Var != null) {
            this.e = sc5Var;
            return this;
        }
        o2.d("Null modelType");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zze(boolean z) {
        this.d = z;
        this.h = (byte) (this.h | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsi zzf(boolean z) {
        this.c = z;
        this.h = (byte) (this.h | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsi
    public final zzsj zzh() {
        zzmu zzmuVar;
        String str;
        sc5 sc5Var;
        zzna zznaVar;
        if (this.h == 7 && (zzmuVar = this.a) != null && (str = this.b) != null && (sc5Var = this.e) != null && (zznaVar = this.f) != null) {
            return new ldc(zzmuVar, str, this.c, this.d, sc5Var, zznaVar, this.g);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" errorCode");
        }
        if (this.b == null) {
            sb.append(" tfliteSchemaVersion");
        }
        if ((this.h & 1) == 0) {
            sb.append(" shouldLogRoughDownloadTime");
        }
        if ((this.h & 2) == 0) {
            sb.append(" shouldLogExactDownloadTime");
        }
        if (this.e == null) {
            sb.append(" modelType");
        }
        if (this.f == null) {
            sb.append(" downloadStatus");
        }
        if ((this.h & 4) == 0) {
            sb.append(" failureStatusCode");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
