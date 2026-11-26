package com.google.android.gms.internal.mlkit_common;

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
public final class zzsp implements zzrz {
    public final Lazy a;
    public final Lazy b;
    public final zzsb c;

    public zzsp(Context context, zzsb zzsbVar) {
        this.c = zzsbVar;
        kx0 kx0Var = kx0.e;
        d39.b(context);
        final u29 u29VarC = d39.a().c(kx0Var);
        if (kx0.d.contains(new iy2("json"))) {
            this.a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_common.zzsm
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return u29VarC.a("FIREBASE_ML_SDK", new iy2("json"), new d29() { // from class: com.google.android.gms.internal.mlkit_common.zzso
                        @Override // defpackage.d29
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_common.zzsn
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return u29VarC.a("FIREBASE_ML_SDK", new iy2("proto"), new d29() { // from class: com.google.android.gms.internal.mlkit_common.zzsl
                    @Override // defpackage.d29
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzrz
    public final void zza(zzry zzryVar) {
        zzsb zzsbVar = this.c;
        if (zzsbVar.zza() != 0) {
            ((q29) this.b.get()).a(new ry(zzryVar.zze(zzsbVar.zza(), false), ig6.VERY_LOW, null));
            return;
        }
        Lazy lazy = this.a;
        if (lazy != null) {
            ((q29) lazy.get()).a(new ry(zzryVar.zze(zzsbVar.zza(), false), ig6.VERY_LOW, null));
        }
    }
}
