package com.google.android.gms.internal.mlkit_vision_barcode;

import android.content.Context;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;
import defpackage.d29;
import defpackage.d39;
import defpackage.ig6;
import defpackage.iy2;
import defpackage.kx0;
import defpackage.q29;
import defpackage.ry;
import defpackage.u29;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwx implements zzwf {
    public final Lazy a;
    public final Lazy b;
    public final zzwh c;

    public zzwx(Context context, zzwh zzwhVar) {
        this.c = zzwhVar;
        kx0 kx0Var = kx0.e;
        d39.b(context);
        final u29 u29VarC = d39.a().c(kx0Var);
        if (kx0.d.contains(new iy2("json"))) {
            this.a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwu
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return u29VarC.a("FIREBASE_ML_SDK", new iy2("json"), new d29() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzww
                        @Override // defpackage.d29
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwv
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return u29VarC.a("FIREBASE_ML_SDK", new iy2("proto"), new d29() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwt
                    @Override // defpackage.d29
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwf
    public final void zza(zzwe zzweVar) {
        zzwh zzwhVar = this.c;
        if (zzwhVar.zza() != 0) {
            q29 q29Var = (q29) this.b.get();
            int iZza = zzwhVar.zza();
            q29Var.a(zzweVar.zza() != 0 ? ry.b(zzweVar.zze(iZza, false)) : new ry(zzweVar.zze(iZza, false), ig6.VERY_LOW, null));
        } else {
            Lazy lazy = this.a;
            if (lazy != null) {
                q29 q29Var2 = (q29) lazy.get();
                int iZza2 = zzwhVar.zza();
                q29Var2.a(zzweVar.zza() != 0 ? ry.b(zzweVar.zze(iZza2, false)) : new ry(zzweVar.zze(iZza2, false), ig6.VERY_LOW, null));
            }
        }
    }
}
