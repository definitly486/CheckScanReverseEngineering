package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class d6b implements gnb {
    public final zzdn a;

    public d6b(zzdn zzdnVar) {
        Charset charset = zzep.a;
        this.a = zzdnVar;
        zzdnVar.a = this;
    }

    public final void a(int i, Object obj, jib jibVar) {
        zzdn zzdnVar = this.a;
        zzdnVar.zzr(i, 3);
        jibVar.g((zzfm) obj, zzdnVar.a);
        zzdnVar.zzr(i, 4);
    }

    public final void b(int i, Object obj) {
        boolean z = obj instanceof zzdf;
        zzdn zzdnVar = this.a;
        if (z) {
            zzdnVar.zzo(i, (zzdf) obj);
        } else {
            zzdnVar.zzn(i, (zzfm) obj);
        }
    }
}
