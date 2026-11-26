package com.google.android.gms.internal.mlkit_vision_common;

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
public final class zzmp implements zzmc {
    public final Lazy a;
    public final Lazy b;
    public final zzme c;

    public zzmp(Context context, zzme zzmeVar) {
        this.c = zzmeVar;
        kx0 kx0Var = kx0.e;
        d39.b(context);
        final u29 u29VarC = d39.a().c(kx0Var);
        if (kx0.d.contains(new iy2("json"))) {
            this.a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmm
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return u29VarC.a("FIREBASE_ML_SDK", new iy2("json"), new d29() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmo
                        @Override // defpackage.d29
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmn
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return u29VarC.a("FIREBASE_ML_SDK", new iy2("proto"), new d29() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzml
                    @Override // defpackage.d29
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzmc
    public final void zza(zzmb zzmbVar) {
        zzme zzmeVar = this.c;
        if (zzmeVar.zza() != 0) {
            ((q29) this.b.get()).a(new ry(zzmbVar.zzd(zzmeVar.zza(), false), ig6.VERY_LOW, null));
            return;
        }
        Lazy lazy = this.a;
        if (lazy != null) {
            ((q29) lazy.get()).a(new ry(zzmbVar.zzd(zzmeVar.zza(), false), ig6.VERY_LOW, null));
        }
    }
}
