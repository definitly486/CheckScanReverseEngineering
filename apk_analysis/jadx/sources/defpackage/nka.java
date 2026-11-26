package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zacr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbs;
import com.google.android.gms.measurement.internal.zzhj;
import com.google.android.gms.measurement.internal.zzic;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class nka implements Runnable {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public nka(zacr zacrVar, Result result) {
        this.c = result;
        this.d = zacrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiClient googleApiClient;
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                Result result = (Result) obj;
                zacr zacrVar = (zacr) obj2;
                oka okaVar = zacrVar.h;
                WeakReference weakReference = zacrVar.g;
                try {
                    try {
                        zla zlaVar = BasePendingResult.o;
                        zlaVar.set(Boolean.TRUE);
                        okaVar.sendMessage(okaVar.obtainMessage(0, ((ResultTransform) Preconditions.checkNotNull(zacrVar.a)).onSuccess(result)));
                        zlaVar.set(Boolean.FALSE);
                        zacr.d(result);
                        googleApiClient = (GoogleApiClient) weakReference.get();
                        if (googleApiClient != null) {
                            googleApiClient.zap(zacrVar);
                        }
                    } catch (RuntimeException e) {
                        okaVar.sendMessage(okaVar.obtainMessage(1, e));
                        BasePendingResult.o.set(Boolean.FALSE);
                        zacr.d(result);
                        googleApiClient = (GoogleApiClient) weakReference.get();
                        if (googleApiClient != null) {
                        }
                    }
                    return;
                } catch (Throwable th) {
                    BasePendingResult.o.set(Boolean.FALSE);
                    zacr.d(result);
                    GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                    if (googleApiClient2 != null) {
                        googleApiClient2.zap(zacrVar);
                    }
                    throw th;
                }
            default:
                zzhj zzhjVar = (zzhj) obj2;
                zzic zzicVar = zzhjVar.c.a;
                zzicVar.zzaX().zzg();
                Bundle bundle = new Bundle();
                bundle.putString("package_name", zzhjVar.b);
                try {
                    if (((zzbs) obj).zze(bundle) == null) {
                        zzicVar.zzaW().zzb().zza("Install Referrer Service returned a null response");
                    }
                    break;
                } catch (Exception e2) {
                    zzicVar.zzaW().zzb().zzb("Exception occurred while retrieving the Install Referrer", e2.getMessage());
                }
                zzicVar.zzaX().zzg();
                throw new IllegalStateException("Unexpected call on client side");
        }
    }

    public nka(zzhj zzhjVar, zzbs zzbsVar, zzhj zzhjVar2) {
        this.c = zzbsVar;
        this.d = zzhjVar;
    }
}
