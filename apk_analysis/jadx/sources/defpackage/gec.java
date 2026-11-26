package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zzafc;
import com.google.android.gms.internal.measurement.zztf;
import com.google.android.gms.internal.measurement.zztq;
import com.google.android.gms.internal.measurement.zztr;
import com.google.android.gms.internal.measurement.zztw;
import com.google.common.collect.j;
import com.google.common.collect.w;

/* JADX INFO: loaded from: classes4.dex */
public final class gec extends zztq {
    public Uri a;
    public zzafc b;
    public rz5 c;
    public w d;
    public zztw e;
    public boolean f;
    public byte g;

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zza(Uri uri) {
        if (uri != null) {
            this.a = uri;
            return this;
        }
        o2.d("Null uri");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzb(zzafc zzafcVar) {
        if (zzafcVar != null) {
            this.b = zzafcVar;
            return this;
        }
        o2.d("Null schema");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzc(zztf zztfVar) {
        zztfVar.getClass();
        this.c = new nf6(zztfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zze(boolean z) {
        this.f = true;
        this.g = (byte) (1 | this.g);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzf(boolean z) {
        this.g = (byte) (this.g | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztr zzg() {
        Uri uri;
        zzafc zzafcVar;
        zztw zztwVar;
        w wVar = this.d;
        if (wVar == null) {
            j.b bVar = j.c;
            wVar = w.f;
            this.d = wVar;
        }
        w wVar2 = wVar;
        if (this.g == 3 && (uri = this.a) != null && (zzafcVar = this.b) != null && (zztwVar = this.e) != null) {
            return new hec(uri, zzafcVar, this.c, wVar2, zztwVar, this.f);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" uri");
        }
        if (this.b == null) {
            sb.append(" schema");
        }
        if (this.e == null) {
            sb.append(" variantConfig");
        }
        if ((this.g & 1) == 0) {
            sb.append(" useGeneratedExtensionRegistry");
        }
        if ((this.g & 2) == 0) {
            sb.append(" enableTracing");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
