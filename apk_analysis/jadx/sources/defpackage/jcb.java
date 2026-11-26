package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.c;
import com.google.android.gms.internal.mlkit_vision_barcode.d;
import com.google.android.gms.internal.mlkit_vision_barcode.g;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzet;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxh;

/* JADX INFO: loaded from: classes4.dex */
public final class jcb extends rbb {
    public final /* synthetic */ ocb d;
    public final zzxh e;

    public jcb(ocb ocbVar, zzxh zzxhVar) {
        this.d = ocbVar;
        this.e = zzxhVar;
    }

    @Override // defpackage.rbb
    public final void a(zzet zzetVar) {
        d dVar;
        ocb ocbVar = this.d;
        zzetVar.getClass();
        Object obj = ocbVar.b;
        if (obj == null) {
            if (zzetVar.isDone()) {
                if (zzdz.g.f(ocbVar, null, zzdz.d(zzetVar))) {
                    zzdz.f(ocbVar);
                    return;
                }
                return;
            }
            g gVar = new g(ocbVar, zzetVar);
            if (zzdz.g.f(ocbVar, null, gVar)) {
                try {
                    zzetVar.zzl(gVar, r9b.zza);
                    return;
                } catch (Throwable th) {
                    try {
                        dVar = new d(th);
                    } catch (Error | Exception unused) {
                        dVar = d.b;
                    }
                    zzdz.g.f(ocbVar, gVar, dVar);
                    return;
                }
            }
            obj = ocbVar.b;
        }
        if (obj instanceof c) {
            zzetVar.cancel(((c) obj).a);
        }
    }
}
