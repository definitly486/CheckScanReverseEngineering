package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzkw;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzoc;
import com.google.android.gms.measurement.internal.zzpp;

/* JADX INFO: loaded from: classes4.dex */
public final class a1c implements Application.ActivityLifecycleCallbacks, zzkw {
    public final /* synthetic */ zzlj b;

    public a1c(zzlj zzljVar) {
        this.b = zzljVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(zzdd.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzb(zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzc(zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzd(zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zze(zzdd.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zza(zzdd zzddVar, Bundle bundle) {
        Uri uri;
        zzic zzicVar = this.b.a;
        try {
            try {
                zzicVar.zzaW().zzk().zza("onActivityCreated");
                Intent intent = zzddVar.zzc;
                if (intent != null) {
                    Uri data = intent.getData();
                    if (data == null || !data.isHierarchical()) {
                        Bundle extras = intent.getExtras();
                        if (extras != null) {
                            String string = extras.getString("com.android.vending.referral_url");
                            if (!TextUtils.isEmpty(string)) {
                                data = Uri.parse(string);
                                uri = data;
                            }
                        }
                        uri = null;
                    } else {
                        uri = data;
                    }
                    if (uri != null && uri.isHierarchical()) {
                        zzicVar.zzk().getClass();
                        zzicVar.zzaX().zzj(new y0c(this, bundle == null, uri, zzpp.M(intent) ? "gs" : TtmlNode.TEXT_EMPHASIS_AUTO, uri.getQueryParameter("referrer")));
                    }
                }
            } catch (RuntimeException e) {
                zzicVar.zzaW().zzb().zzb("Throwable caught in onActivityCreated", e);
            }
        } finally {
            zzicVar.zzs().zzn(zzddVar, bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzb(zzdd zzddVar) {
        this.b.a.zzs().zzt(zzddVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzc(zzdd zzddVar) {
        zzic zzicVar = this.b.a;
        zzicVar.zzs().zzq(zzddVar);
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.a;
        zzicVar2.zzaX().zzj(new h8c(zzocVarZzh, zzicVar2.zzba().elapsedRealtime()));
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzd(zzdd zzddVar) {
        zzic zzicVar = this.b.a;
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.a;
        zzicVar2.zzaX().zzj(new e8c(zzocVarZzh, zzicVar2.zzba().elapsedRealtime()));
        zzicVar.zzs().zzp(zzddVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zze(zzdd zzddVar, Bundle bundle) {
        this.b.a.zzs().zzs(zzddVar, bundle);
    }
}
