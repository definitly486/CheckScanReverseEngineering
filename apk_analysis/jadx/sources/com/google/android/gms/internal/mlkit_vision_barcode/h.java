package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends b {
    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final e a(zzdz zzdzVar, e eVar) {
        e eVar2;
        synchronized (zzdzVar) {
            try {
                eVar2 = zzdzVar.c;
                if (eVar2 != eVar) {
                    zzdzVar.c = eVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final k b(zzdz zzdzVar) {
        k kVar;
        k kVar2 = k.c;
        synchronized (zzdzVar) {
            try {
                kVar = zzdzVar.d;
                if (kVar != kVar2) {
                    zzdzVar.d = kVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void c(k kVar, k kVar2) {
        kVar.b = kVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void d(k kVar, Thread thread) {
        kVar.a = thread;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean e(zzdz zzdzVar, e eVar, e eVar2) {
        synchronized (zzdzVar) {
            try {
                if (zzdzVar.c != eVar) {
                    return false;
                }
                zzdzVar.c = eVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean f(zzdz zzdzVar, Object obj, Object obj2) {
        synchronized (zzdzVar) {
            try {
                if (zzdzVar.b != obj) {
                    return false;
                }
                zzdzVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean g(zzdz zzdzVar, k kVar, k kVar2) {
        synchronized (zzdzVar) {
            try {
                if (zzdzVar.d != kVar) {
                    return false;
                }
                zzdzVar.d = kVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
