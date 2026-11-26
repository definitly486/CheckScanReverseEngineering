package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeb;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfl;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfr;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg;

/* JADX INFO: loaded from: classes4.dex */
public final class s9b implements zzdw {
    public final int b;
    public final zzhf c;

    public s9b(int i, zzhf zzhfVar) {
        this.b = i;
        this.c = zzhfVar;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.b - ((s9b) obj).b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final zzfl zzb(zzfl zzflVar, zzfm zzfmVar) {
        zzeb zzebVar = (zzeb) zzflVar;
        zzebVar.zzg((zzeh) zzfmVar);
        return zzebVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final zzfr zzc(zzfr zzfrVar, zzfr zzfrVar2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final zzhf zzd() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final zzhg zze() {
        return this.c.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw
    public final boolean zzg() {
        return false;
    }
}
