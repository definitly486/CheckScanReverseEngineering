package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.internal.measurement.zzcv;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.internal.measurement.zzda;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.measurement.internal.zzgi;
import com.google.android.gms.measurement.internal.zzic;
import defpackage.a1c;
import defpackage.ah;
import defpackage.b4b;
import defpackage.b4c;
import defpackage.cyb;
import defpackage.dbc;
import defpackage.dcc;
import defpackage.dqb;
import defpackage.iyb;
import defpackage.j15;
import defpackage.j1c;
import defpackage.n8b;
import defpackage.oxb;
import defpackage.s2c;
import defpackage.sub;
import defpackage.u4;
import defpackage.ug4;
import defpackage.vqb;
import defpackage.xp;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public class AppMeasurementDynamiteService extends zzco {
    public zzic a = null;
    public final ArrayMap b = new ArrayMap();

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void beginAdUnitExposure(String str, long j) {
        g();
        this.a.zzw().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        g();
        this.a.zzj().zzaa(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void clearMeasurementEnabled(long j) {
        g();
        this.a.zzj().zzn(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void endAdUnitExposure(String str, long j) {
        g();
        this.a.zzw().zzb(str, j);
    }

    @EnsuresNonNull({"scion"})
    public final void g() {
        if (this.a != null) {
            return;
        }
        ah.f("Attempting to perform action before initialize.");
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void generateEventId(zzcs zzcsVar) {
        g();
        long jZzd = this.a.zzk().zzd();
        g();
        this.a.zzk().zzap(zzcsVar, jZzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getAppInstanceId(zzcs zzcsVar) {
        g();
        this.a.zzaX().zzj(new dqb(this, zzcsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCachedAppInstanceId(zzcs zzcsVar) {
        g();
        String strZzP = this.a.zzj().zzP();
        g();
        this.a.zzk().zzao(zzcsVar, strZzP);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getConditionalUserProperties(String str, String str2, zzcs zzcsVar) {
        g();
        this.a.zzaX().zzj(new b4c(this, zzcsVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCurrentScreenClass(zzcs zzcsVar) {
        g();
        String strZzad = this.a.zzj().zzad();
        g();
        this.a.zzk().zzao(zzcsVar, strZzad);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCurrentScreenName(zzcs zzcsVar) {
        g();
        String strZzac = this.a.zzj().zzac();
        g();
        this.a.zzk().zzao(zzcsVar, strZzac);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getGmpAppId(zzcs zzcsVar) {
        g();
        String strZzae = this.a.zzj().zzae();
        g();
        this.a.zzk().zzao(zzcsVar, strZzae);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getMaxUserProperties(String str, zzcs zzcsVar) {
        g();
        this.a.zzj().zzX(str);
        g();
        this.a.zzk().zzaq(zzcsVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getSessionId(zzcs zzcsVar) {
        g();
        zzlj zzljVarZzj = this.a.zzj();
        zzljVarZzj.a.zzaX().zzj(new n8b(1, zzljVarZzj, zzcsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getTestFlag(zzcs zzcsVar, int i) {
        g();
        if (i == 0) {
            this.a.zzk().zzao(zzcsVar, this.a.zzj().zzj());
            return;
        }
        if (i == 1) {
            this.a.zzk().zzap(zzcsVar, this.a.zzj().zzk().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.a.zzk().zzaq(zzcsVar, this.a.zzj().zzl().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.a.zzk().zzas(zzcsVar, this.a.zzj().zzi().booleanValue());
                return;
            }
        }
        zzpp zzppVarZzk = this.a.zzk();
        double dDoubleValue = this.a.zzj().zzm().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            zzppVarZzk.a.zzaW().zze().zzb("Error returning double value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getUserProperties(String str, String str2, boolean z, zzcs zzcsVar) {
        g();
        this.a.zzaX().zzj(new cyb(this, zzcsVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initForTests(Map map) {
        g();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initialize(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j) {
        zzic zzicVar = this.a;
        if (zzicVar == null) {
            this.a = zzic.zzy((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdbVar, Long.valueOf(j), null);
        } else {
            xp.h(zzicVar, "Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initializeWithElapsedTime(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j, long j2) {
        zzic zzicVar = this.a;
        if (zzicVar == null) {
            this.a = zzic.zzy((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdbVar, Long.valueOf(j), Long.valueOf(j2));
        } else {
            xp.h(zzicVar, "Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void isDataCollectionEnabled(zzcs zzcsVar) {
        g();
        this.a.zzaX().zzj(new vqb(this, zzcsVar, 1));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        g();
        this.a.zzj().zzB(str, str2, bundle, z, z2, j, 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzcs zzcsVar, long j) {
        g();
        Preconditions.checkNotEmpty(str2);
        String str3 = true != this.a.zzc().zzp(null, zzfy.zzbf) ? "app" : TtmlNode.TEXT_EMPHASIS_AUTO;
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", str3);
        this.a.zzaX().zzj(new sub(this, zzcsVar, new zzbh(str2, new zzbf(bundle), str3, j, 0L), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2) {
        g();
        this.a.zzj().zzB(str, str2, bundle, z, z2, j, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        g();
        this.a.zzaW().e(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        g();
        onActivityCreatedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityCreatedByScionActivityInfo(zzdd zzddVar, Bundle bundle, long j) {
        g();
        a1c a1cVar = this.a.zzj().c;
        if (a1cVar != null) {
            this.a.zzj().zzh();
            a1cVar.zza(zzddVar, bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        g();
        onActivityDestroyedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityDestroyedByScionActivityInfo(zzdd zzddVar, long j) {
        g();
        a1c a1cVar = this.a.zzj().c;
        if (a1cVar != null) {
            this.a.zzj().zzh();
            a1cVar.zzb(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        g();
        onActivityPausedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityPausedByScionActivityInfo(zzdd zzddVar, long j) {
        g();
        a1c a1cVar = this.a.zzj().c;
        if (a1cVar != null) {
            this.a.zzj().zzh();
            a1cVar.zzc(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        g();
        onActivityResumedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityResumedByScionActivityInfo(zzdd zzddVar, long j) {
        g();
        a1c a1cVar = this.a.zzj().c;
        if (a1cVar != null) {
            this.a.zzj().zzh();
            a1cVar.zzd(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcs zzcsVar, long j) {
        g();
        onActivitySaveInstanceStateByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), zzcsVar, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivitySaveInstanceStateByScionActivityInfo(zzdd zzddVar, zzcs zzcsVar, long j) {
        g();
        a1c a1cVar = this.a.zzj().c;
        Bundle bundle = new Bundle();
        if (a1cVar != null) {
            this.a.zzj().zzh();
            a1cVar.zze(zzddVar, bundle);
        }
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        g();
        onActivityStartedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStartedByScionActivityInfo(zzdd zzddVar, long j) {
        g();
        if (this.a.zzj().c != null) {
            this.a.zzj().zzh();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        g();
        onActivityStoppedByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStoppedByScionActivityInfo(zzdd zzddVar, long j) {
        g();
        if (this.a.zzj().c != null) {
            this.a.zzj().zzh();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void performAction(Bundle bundle, zzcs zzcsVar, long j) {
        g();
        zzcsVar.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void registerOnMeasurementEventListener(zzcy zzcyVar) {
        zzjq dccVar;
        g();
        ArrayMap arrayMap = this.b;
        synchronized (arrayMap) {
            try {
                dccVar = (zzjq) arrayMap.get(Integer.valueOf(zzcyVar.zzf()));
                if (dccVar == null) {
                    dccVar = new dcc(this, zzcyVar);
                    arrayMap.put(Integer.valueOf(zzcyVar.zzf()), dccVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a.zzj().zzV(dccVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    @Deprecated
    public void resetAnalyticsData(long j) {
        g();
        this.a.zzj().zzS(j, 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void resetAnalyticsDataWithElapsedTime(long j, long j2) {
        g();
        this.a.zzj().zzS(j, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void retrieveAndUploadBatches(zzcv zzcvVar) {
        int i;
        zzlr zzlrVar;
        g();
        zzlj zzljVarZzj = this.a.zzj();
        zzljVarZzj.a();
        zzic zzicVar = zzljVarZzj.a;
        if (zzicVar.zzaX().zze()) {
            u4.e(zzicVar, "Cannot retrieve and upload batches from analytics worker thread");
            return;
        }
        if (zzicVar.zzaX().zzf()) {
            u4.e(zzicVar, "Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        zzicVar.zzaV();
        if (zzae.zza()) {
            u4.e(zzicVar, "Cannot retrieve and upload batches from main thread");
            return;
        }
        zzicVar.zzaW().zzk().zza("[sgtm] Started client-side batch upload work.");
        boolean z = false;
        int size = 0;
        int i2 = 0;
        while (!z) {
            zzicVar.zzaW().zzk().zza("[sgtm] Getting upload batches from service (FE)");
            AtomicReference atomicReference = new AtomicReference();
            zzicVar.zzaX().d(atomicReference, 10000L, "[sgtm] Getting upload batches", new b4b(1, zzljVarZzj, atomicReference));
            zzoq zzoqVar = (zzoq) atomicReference.get();
            if (zzoqVar == null) {
                break;
            }
            List list = zzoqVar.zza;
            if (list.isEmpty()) {
                break;
            }
            zzicVar.zzaW().zzk().zzb("[sgtm] Retrieved upload batches. count", Integer.valueOf(list.size()));
            size += list.size();
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                zzom zzomVar = (zzom) it.next();
                try {
                    URL url = new URI(zzomVar.zzc).toURL();
                    AtomicReference atomicReference2 = new AtomicReference();
                    zzgi zzgiVarZzv = zzljVarZzj.a.zzv();
                    zzgiVarZzv.a();
                    Preconditions.checkNotNull(zzgiVarZzv.g);
                    String str = zzgiVarZzv.g;
                    zzic zzicVar2 = zzljVarZzj.a;
                    zzgs zzgsVarZzk = zzicVar2.zzaW().zzk();
                    i = size;
                    Long lValueOf = Long.valueOf(zzomVar.zza);
                    zzgsVarZzk.zzd("[sgtm] Uploading data from app. row_id, url, uncompressed size", lValueOf, zzomVar.zzc, Integer.valueOf(zzomVar.zzb.length));
                    if (!TextUtils.isEmpty(zzomVar.zzg)) {
                        zzicVar2.zzaW().zzk().zzc("[sgtm] Uploading data from app. row_id", lValueOf, zzomVar.zzg);
                    }
                    HashMap map = new HashMap();
                    Bundle bundle = zzomVar.zzd;
                    for (String str2 : bundle.keySet()) {
                        String string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(str2, string);
                        }
                    }
                    zzlo zzloVarZzn = zzicVar2.zzn();
                    byte[] bArr = zzomVar.zzb;
                    j15 j15Var = new j15(zzljVarZzj, atomicReference2, zzomVar);
                    zzloVarZzn.c();
                    Preconditions.checkNotNull(url);
                    Preconditions.checkNotNull(bArr);
                    Preconditions.checkNotNull(j15Var);
                    zzloVarZzn.a.zzaX().zzm(new s2c(zzloVarZzn, str, url, bArr, map, j15Var));
                    try {
                        zzic zzicVar3 = zzicVar2.zzk().a;
                        long jCurrentTimeMillis = zzicVar3.zzba().currentTimeMillis() + 60000;
                        synchronized (atomicReference2) {
                            for (long jCurrentTimeMillis2 = 60000; atomicReference2.get() == null && jCurrentTimeMillis2 > 0; jCurrentTimeMillis2 = jCurrentTimeMillis - zzicVar3.zzba().currentTimeMillis()) {
                                try {
                                    atomicReference2.wait(jCurrentTimeMillis2);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    } catch (InterruptedException unused) {
                        xp.h(zzljVarZzj.a, "[sgtm] Interrupted waiting for uploading batch");
                    }
                    zzlrVar = atomicReference2.get() == null ? zzlr.UNKNOWN : (zzlr) atomicReference2.get();
                } catch (MalformedURLException | URISyntaxException e) {
                    i = size;
                    zzljVarZzj.a.zzaW().zzb().zzd("[sgtm] Bad upload url for row_id", zzomVar.zzc, Long.valueOf(zzomVar.zza), e);
                    zzlrVar = zzlr.FAILURE;
                }
                if (zzlrVar != zzlr.SUCCESS) {
                    if (zzlrVar == zzlr.BACKOFF) {
                        z = true;
                        size = i;
                        break;
                    }
                } else {
                    i2++;
                }
                size = i;
            }
        }
        zzicVar.zzaW().zzk().zzc("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(size), Integer.valueOf(i2));
        try {
            zzcvVar.zze();
        } catch (RemoteException e2) {
            ((zzic) Preconditions.checkNotNull(this.a)).zzaW().zze().zzb("Failed to call IDynamiteUploadBatchesCallback", e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConditionalUserProperty(Bundle bundle, long j) {
        g();
        zzic zzicVar = this.a;
        if (bundle == null) {
            u4.e(zzicVar, "Conditional user property must not be null");
        } else {
            zzicVar.zzj().zzZ(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConsent(Bundle bundle, long j) {
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConsentThirdParty(Bundle bundle, long j) {
        g();
        this.a.zzj().i(bundle, -20, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        g();
        setCurrentScreenByScionActivityInfo(zzdd.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), str, str2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setCurrentScreenByScionActivityInfo(zzdd zzddVar, String str, String str2, long j) {
        g();
        this.a.zzs().zzk(zzddVar, str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setDataCollectionEnabled(boolean z) {
        g();
        zzlj zzljVarZzj = this.a.zzj();
        zzljVarZzj.a();
        zzljVarZzj.a.zzaX().zzj(new oxb(zzljVarZzj, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setDefaultEventParameters(Bundle bundle) {
        g();
        zzlj zzljVarZzj = this.a.zzj();
        zzljVarZzj.a.zzaX().zzj(new ug4(1, zzljVarZzj, bundle == null ? new Bundle() : new Bundle(bundle)));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setEventInterceptor(zzcy zzcyVar) {
        g();
        dbc dbcVar = new dbc(this, zzcyVar);
        boolean zZze = this.a.zzaX().zze();
        zzic zzicVar = this.a;
        if (zZze) {
            zzicVar.zzj().zzU(dbcVar);
        } else {
            zzicVar.zzaX().zzj(new j1c(this, dbcVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setInstanceIdProvider(zzda zzdaVar) {
        g();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setMeasurementEnabled(boolean z, long j) {
        g();
        this.a.zzj().zzn(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setMinimumSessionDuration(long j) {
        g();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setSessionTimeoutDuration(long j) {
        g();
        zzlj zzljVarZzj = this.a.zzj();
        zzljVarZzj.a.zzaX().zzj(new iyb(zzljVarZzj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setSgtmDebugInfo(Intent intent) {
        g();
        zzlj zzljVarZzj = this.a.zzj();
        Uri data = intent.getData();
        if (data == null) {
            zzljVarZzj.a.zzaW().zzi().zza("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            zzic zzicVar = zzljVarZzj.a;
            zzicVar.zzaW().zzi().zza("[sgtm] Preview Mode was not enabled.");
            zzicVar.zzc().zzy(null);
        } else {
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (TextUtils.isEmpty(queryParameter2)) {
                return;
            }
            zzic zzicVar2 = zzljVarZzj.a;
            zzicVar2.zzaW().zzi().zzb("[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
            zzicVar2.zzc().zzy(queryParameter2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setUserId(final String str, long j) {
        g();
        final zzlj zzljVarZzj = this.a.zzj();
        if (str != null && TextUtils.isEmpty(str)) {
            xp.h(zzljVarZzj.a, "User ID must be non-empty or null");
        } else {
            zzljVarZzj.a.zzaX().zzj(new Runnable() { // from class: b2c
                @Override // java.lang.Runnable
                public final void run() {
                    zzic zzicVar = zzljVarZzj.a;
                    zzgi zzgiVarZzv = zzicVar.zzv();
                    String str2 = zzgiVarZzv.r;
                    String str3 = str;
                    boolean z = false;
                    if (str2 != null && !str2.equals(str3)) {
                        z = true;
                    }
                    zzgiVarZzv.r = str3;
                    if (z) {
                        zzicVar.zzv().c();
                    }
                }
            });
            zzljVarZzj.zzK(null, "_id", str, true, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        g();
        this.a.zzj().zzK(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void unregisterOnMeasurementEventListener(zzcy zzcyVar) {
        zzjq dccVar;
        g();
        ArrayMap arrayMap = this.b;
        synchronized (arrayMap) {
            dccVar = (zzjq) arrayMap.remove(Integer.valueOf(zzcyVar.zzf()));
        }
        if (dccVar == null) {
            dccVar = new dcc(this, zzcyVar);
        }
        this.a.zzj().zzW(dccVar);
    }
}
