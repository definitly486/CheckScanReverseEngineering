package defpackage;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxa;

/* JADX INFO: loaded from: classes4.dex */
public final class upb extends u1 {
    public final jb5 c;

    public upb(jb5 jb5Var) {
        super(5, (byte) 0);
        this.c = jb5Var;
    }

    @Override // defpackage.u1
    public final Object d(Object obj) {
        sc0 sc0Var = (sc0) obj;
        jb5 jb5Var = this.c;
        Context contextB = jb5Var.b();
        zzwp zzwpVarZzb = zzxa.zzb(true != xva.c() ? "play-services-mlkit-barcode-scanning" : "barcode-scanning");
        zzcs zzcsVar = s8c.h;
        return new m1c(jb5Var, sc0Var, (DynamiteModule.getLocalVersion(contextB, ModuleDescriptor.MODULE_ID) <= 0 && GoogleApiAvailabilityLight.getInstance().getApkVersion(contextB) < 204500000) ? new wbc(contextB, sc0Var, zzwpVarZzb) : new s8c(contextB, sc0Var, zzwpVarZzb), zzwpVarZzb);
    }
}
