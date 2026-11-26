package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzhu;
import com.google.firebase.analytics.zzg;

/* JADX INFO: loaded from: classes4.dex */
public final class g6b extends cbb {
    public final /* synthetic */ Context f;
    public final /* synthetic */ Bundle g;
    public final /* synthetic */ zzez h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g6b(zzez zzezVar, Context context, Bundle bundle) {
        super(zzezVar, true);
        this.f = context;
        this.g = bundle;
        this.h = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        zzcp zzcpVarAsInterface;
        try {
            Context context = this.f;
            Preconditions.checkNotNull(context);
            zzg.zza().zzb();
            String strZza = zzhu.zza(context);
            Preconditions.checkNotNull(context);
            Resources resources = context.getResources();
            if (TextUtils.isEmpty(strZza)) {
                strZza = zzhu.zza(context);
            }
            Boolean boolZzc = zzhu.zzc("google_analytics_force_disable_updates", resources, strZza);
            zzez zzezVar = this.h;
            try {
                zzcpVarAsInterface = zzco.asInterface(DynamiteModule.load(context, boolZzc == null || !boolZzc.booleanValue() ? DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION : DynamiteModule.PREFER_LOCAL, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (DynamiteModule.LoadingException e) {
                zzezVar.b(e, true, false);
                zzcpVarAsInterface = null;
            }
            zzezVar.h = zzcpVarAsInterface;
            if (zzezVar.h == null) {
                Log.w("FA", "Failed to connect to measurement client.");
                return;
            }
            int localVersion = DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID);
            int remoteVersion = DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID);
            int iMax = Math.max(localVersion, remoteVersion);
            boolean z = Boolean.TRUE.equals(boolZzc) || remoteVersion < localVersion;
            long j = iMax;
            zzezVar.i = j;
            zzdb zzdbVar = new zzdb(161000L, j, z, this.g, zzhu.zza(context));
            boolean z2 = zzezVar.i >= 169;
            zzcp zzcpVar = zzezVar.h;
            if (z2) {
                ((zzcp) Preconditions.checkNotNull(zzcpVar)).initializeWithElapsedTime(ObjectWrapper.wrap(context), zzdbVar, this.b, this.c);
            } else {
                ((zzcp) Preconditions.checkNotNull(zzcpVar)).initialize(ObjectWrapper.wrap(context), zzdbVar, this.b);
            }
        } catch (Exception e2) {
            this.h.b(e2, true, false);
        }
    }
}
