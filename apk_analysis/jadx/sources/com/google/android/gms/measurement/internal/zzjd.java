package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.WorkRequest;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzic;
import com.google.android.gms.measurement.internal.zzbc;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzge;
import com.google.android.gms.measurement.internal.zzgh;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzom;
import com.google.android.gms.measurement.internal.zzoq;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpj;
import com.google.android.gms.measurement.internal.zzpk;
import com.google.firebase.dynamiclinks.DynamicLink;
import defpackage.brb;
import defpackage.ctb;
import defpackage.esb;
import defpackage.grb;
import defpackage.htb;
import defpackage.isb;
import defpackage.krb;
import defpackage.ltb;
import defpackage.msb;
import defpackage.orb;
import defpackage.qsb;
import defpackage.qtb;
import defpackage.rqb;
import defpackage.sbc;
import defpackage.srb;
import defpackage.ttb;
import defpackage.vqb;
import defpackage.vsb;
import defpackage.vub;
import defpackage.wrb;
import defpackage.ysb;
import defpackage.zac;
import defpackage.zrb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjd extends zzga {
    public final zzpg a;
    public Boolean b;
    public String l;

    public zzjd(zzpg zzpgVar, String str) {
        Preconditions.checkNotNull(zzpgVar);
        this.a = zzpgVar;
        this.l = null;
    }

    public final void g(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        zzpg zzpgVar = this.a;
        if (zzpgVar.zzaX().zze()) {
            runnable.run();
        } else {
            zzpgVar.zzaX().zzl(runnable);
        }
    }

    public final void h(zzr zzrVar) {
        Preconditions.checkNotNull(zzrVar);
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        i(str, false);
        this.a.zzt().zzC(zzrVar.zzb);
    }

    public final void i(String str, boolean z) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzpg zzpgVar = this.a;
        if (zIsEmpty) {
            zzpgVar.zzaW().zzb().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                Boolean boolValueOf = this.b;
                if (boolValueOf == null) {
                    boolean z2 = true;
                    if (!"com.google.android.gms".equals(this.l) && !UidVerifier.isGooglePlayServicesUid(zzpgVar.zzaZ(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(zzpgVar.zzaZ()).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                    }
                    boolValueOf = Boolean.valueOf(z2);
                    this.b = boolValueOf;
                }
                if (boolValueOf.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                zzpgVar.zzaW().zzb().zzb("Measurement Service called with invalid calling package. appId", zzgu.d(str));
                throw e;
            }
        }
        if (this.l == null && GooglePlayServicesUtilLight.uidHasPackageName(zzpgVar.zzaZ(), Binder.getCallingUid(), str)) {
            this.l = str;
        }
        if (str.equals(this.l)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void j(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        zzpg zzpgVar = this.a;
        if (zzpgVar.zzaX().zze()) {
            runnable.run();
        } else {
            zzpgVar.zzaX().zzj(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzA(zzr zzrVar) {
        h(zzrVar);
        j(new brb(0, this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzB(zzr zzrVar, final zzoo zzooVar, final zzgh zzghVar) {
        h(zzrVar);
        final String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        this.a.zzaX().zzj(new Runnable() { // from class: eub
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgh zzghVar2 = zzghVar;
                zzpg zzpgVar = this.b.a;
                zzpgVar.Q();
                zzpgVar.zzaX().zzg();
                zzpgVar.Z();
                kva kvaVarZzj = zzpgVar.zzj();
                int iIntValue = ((Integer) zzfy.zzA.zzb(null)).intValue();
                String str2 = str;
                List<zzpj> listD = kvaVarZzj.d(str2, zzooVar, iIntValue);
                ArrayList arrayList = new ArrayList();
                for (zzpj zzpjVar : listD) {
                    if (zzpgVar.n(str2, zzpjVar.zze())) {
                        int iZzi = zzpjVar.zzi();
                        if (iZzi > 0) {
                            if (iZzi <= ((Integer) zzfy.zzy.zzb(null)).intValue()) {
                                if (zzpgVar.zzba().currentTimeMillis() >= zzpjVar.zzh() + Math.min(((Long) zzfy.zzw.zzb(null)).longValue() * (1 << (iZzi - 1)), ((Long) zzfy.zzx.zzb(null)).longValue())) {
                                }
                            }
                            zzpgVar.zzaW().zzk().zzd("[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis", str2, Long.valueOf(zzpjVar.zzc()), Long.valueOf(zzpjVar.zzh()));
                        }
                        zzom zzomVarZzb = zzpjVar.zzb();
                        try {
                            zzhz zzhzVar = (zzhz) zzpk.H(zzib.zzi(), zzomVarZzb.zzb);
                            for (int i = 0; i < zzhzVar.zzb(); i++) {
                                zzic zzicVar = (zzic) zzhzVar.zzc(i).zzco();
                                zzicVar.zzs(zzpgVar.zzba().currentTimeMillis());
                                zzhzVar.zzd(i, zzicVar);
                            }
                            zzomVarZzb.zzb = ((zzib) zzhzVar.zzbd()).zzcd();
                            if (Log.isLoggable(zzpgVar.zzaW().f(), 2)) {
                                zzomVarZzb.zzg = zzpgVar.zzp().x((zzib) zzhzVar.zzbd());
                            }
                            arrayList.add(zzomVarZzb);
                        } catch (zzaeh unused) {
                            zzpgVar.zzaW().zze().zzb("Failed to parse queued batch. appId", str2);
                        }
                    } else {
                        zzpgVar.zzaW().zzk().zzd("[sgtm] batch skipped due to destination in backoff. appId, rowId, url", str2, Long.valueOf(zzpjVar.zzc()), zzpjVar.zze());
                    }
                }
                zzoq zzoqVar = new zzoq(arrayList);
                try {
                    zzghVar2.zze(zzoqVar);
                    zzpgVar.zzaW().zzk().zzc("[sgtm] Sending queued upload batches to client. appId, count", str2, Integer.valueOf(zzoqVar.zza.size()));
                } catch (RemoteException e) {
                    zzpgVar.zzaW().zzb().zzc("[sgtm] Failed to return upload batches for app", str2, e);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzC(zzr zzrVar, zzaf zzafVar) {
        h(zzrVar);
        j(new vub(this, zzrVar, zzafVar, 0));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzD(final zzr zzrVar, final Bundle bundle, final zzge zzgeVar) {
        h(zzrVar);
        final String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        this.a.zzaX().zzj(new Runnable() { // from class: aub
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzge zzgeVar2 = zzgeVar;
                zzpg zzpgVar = this.b.a;
                zzpgVar.Q();
                try {
                    zzgeVar2.zze(zzpgVar.Y(zzrVar, bundle));
                } catch (RemoteException e) {
                    zzpgVar.zzaW().zzb().zzc("Failed to return trigger URIs for app", str, e);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzbh zzbhVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzbhVar);
        h(zzrVar);
        j(new ysb(this, zzbhVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzpl zzplVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzplVar);
        h(zzrVar);
        j(new ltb(this, zzplVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(zzr zzrVar) {
        h(zzrVar);
        j(new vqb(this, zzrVar, 0));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzbh zzbhVar, String str, String str2) {
        Preconditions.checkNotNull(zzbhVar);
        Preconditions.checkNotEmpty(str);
        i(str, true);
        j(new ctb(this, zzbhVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(zzr zzrVar) {
        h(zzrVar);
        j(new isb(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzj(zzr zzrVar, boolean z) {
        h(zzrVar);
        String str = zzrVar.zza;
        Preconditions.checkNotNull(str);
        zzpg zzpgVar = this.a;
        try {
            List<sbc> list = (List) zzpgVar.zzaX().zzh(new rqb(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (sbc sbcVar : list) {
                if (z || !zzpp.A(sbcVar.c)) {
                    arrayList.add(new zzpl(sbcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            zzpgVar.zzaW().zzb().zzc("Failed to get user properties. appId", zzgu.d(zzrVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            zzpgVar.zzaW().zzb().zzc("Failed to get user properties. appId", zzgu.d(zzrVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zzk(zzbh zzbhVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbhVar);
        i(str, true);
        zzpg zzpgVar = this.a;
        zzgs zzgsVarZzj = zzpgVar.zzaW().zzj();
        zzgn zzgnVarZzs = zzpgVar.zzs();
        String str2 = zzbhVar.zza;
        zzgsVarZzj.zzb("Log and bundle. event", zzgnVarZzs.a(str2));
        long jNanoTime = zzpgVar.zzba().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) zzpgVar.zzaX().zzi(new htb(this, zzbhVar, str)).get();
            if (bArr == null) {
                zzpgVar.zzaW().zzb().zzb("Log and bundle returned null. appId", zzgu.d(str));
                bArr = new byte[0];
            }
            zzpgVar.zzaW().zzj().zzd("Log and bundle processed. event, size, time_ms", zzpgVar.zzs().a(str2), Integer.valueOf(bArr.length), Long.valueOf((zzpgVar.zzba().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            zzpgVar.zzaW().zzb().zzd("Failed to log and bundle. appId, event, error", zzgu.d(str), zzpgVar.zzs().a(zzbhVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            zzpgVar.zzaW().zzb().zzd("Failed to log and bundle. appId, event, error", zzgu.d(str), zzpgVar.zzs().a(zzbhVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzl(long j, String str, String str2, String str3) {
        j(new grb(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzm(zzr zzrVar) {
        h(zzrVar);
        zzpg zzpgVar = this.a;
        try {
            return (String) zzpgVar.zzaX().zzh(new zac(zzpgVar, zzrVar)).get(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzpgVar.zzaW().zzb().zzc("Failed to get app instance id. appId", zzgu.d(zzrVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzn(zzah zzahVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotNull(zzahVar.zzc);
        h(zzrVar);
        zzah zzahVar2 = new zzah(zzahVar);
        zzahVar2.zza = zzrVar.zza;
        j(new krb(this, zzahVar2, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzo(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zza);
        i(zzahVar.zza, true);
        j(new orb(this, new zzah(zzahVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzp(String str, String str2, boolean z, zzr zzrVar) {
        h(zzrVar);
        String str3 = zzrVar.zza;
        Preconditions.checkNotNull(str3);
        zzpg zzpgVar = this.a;
        try {
            List<sbc> list = (List) zzpgVar.zzaX().zzh(new srb(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (sbc sbcVar : list) {
                if (z || !zzpp.A(sbcVar.c)) {
                    arrayList.add(new zzpl(sbcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            zzpgVar.zzaW().zzb().zzc("Failed to query user properties. appId", zzgu.d(zzrVar.zza), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            zzpgVar.zzaW().zzb().zzc("Failed to query user properties. appId", zzgu.d(zzrVar.zza), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzq(String str, String str2, String str3, boolean z) {
        i(str, true);
        zzpg zzpgVar = this.a;
        try {
            List<sbc> list = (List) zzpgVar.zzaX().zzh(new wrb(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (sbc sbcVar : list) {
                if (z || !zzpp.A(sbcVar.c)) {
                    arrayList.add(new zzpl(sbcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            zzpgVar.zzaW().zzb().zzc("Failed to get user properties as. appId", zzgu.d(str), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            zzpgVar.zzaW().zzb().zzc("Failed to get user properties as. appId", zzgu.d(str), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzr(String str, String str2, zzr zzrVar) {
        h(zzrVar);
        String str3 = zzrVar.zza;
        Preconditions.checkNotNull(str3);
        zzpg zzpgVar = this.a;
        try {
            return (List) zzpgVar.zzaX().zzh(new zrb(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            zzpgVar.zzaW().zzb().zzb("Failed to get conditional user properties", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzs(String str, String str2, String str3) {
        i(str, true);
        zzpg zzpgVar = this.a;
        try {
            return (List) zzpgVar.zzaX().zzh(new esb(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            zzpgVar.zzaW().zzb().zzb("Failed to get conditional user properties as", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzt(zzr zzrVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        i(str, false);
        j(new msb(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzu(final Bundle bundle, final zzr zzrVar) {
        h(zzrVar);
        final String str = zzrVar.zza;
        Preconditions.checkNotNull(str);
        j(new Runnable() { // from class: zub
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                Bundle bundle2 = bundle;
                boolean zIsEmpty = bundle2.isEmpty();
                zzpg zzpgVar = this.b.a;
                String str2 = str;
                if (zIsEmpty) {
                    kva kvaVarZzj = zzpgVar.zzj();
                    kvaVarZzj.zzg();
                    kvaVarZzj.a();
                    try {
                        kvaVarZzj.M().execSQL("delete from default_event_params where app_id=?", new String[]{str2});
                        return;
                    } catch (SQLiteException e) {
                        kvaVarZzj.a.zzaW().zzb().zzb("Error clearing default event params", e);
                        return;
                    }
                }
                kva kvaVarZzj2 = zzpgVar.zzj();
                kvaVarZzj2.zzg();
                com.google.android.gms.measurement.internal.zzic zzicVar = kvaVarZzj2.a;
                kvaVarZzj2.a();
                byte[] bArrZzcd = kvaVarZzj2.b.zzp().w(new zzbc(kvaVarZzj2.a, "", str2, "dep", 0L, 0L, 0L, bundle2)).zzcd();
                zzicVar.zzaW().zzk().zzc("Saving default event parameters, appId, data size", str2, Integer.valueOf(bArrZzcd.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put(CommonUrlParts.APP_ID, str2);
                contentValues.put(DynamicLink.Builder.KEY_DYNAMIC_LINK_PARAMETERS, bArrZzcd);
                try {
                    if (kvaVarZzj2.M().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        zzicVar.zzaW().zzb().zzb("Failed to insert default event parameters (got -1). appId", zzgu.d(str2));
                    }
                } catch (SQLiteException e2) {
                    zzicVar.zzaW().zzb().zzc("Error storing default event parameters. appId", zzgu.d(str2), e2);
                }
                kva kvaVarZzj3 = zzpgVar.zzj();
                long j = zzrVar.zzD;
                kvaVarZzj3.getClass();
                try {
                    if (kvaVarZzj3.u("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str2, String.valueOf(j)}, 0L) <= 0 && kvaVarZzj3.u("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str2, String.valueOf(j)}, 0L) > 0) {
                        zzpgVar.zzj().q(str2, Long.valueOf(j), null, bundle2);
                    }
                } catch (SQLiteException e3) {
                    kvaVarZzj3.a.zzaW().zzb().zzb("Error checking backfill conditions", e3);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzv(zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        g(new qsb(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzao zzw(zzr zzrVar) {
        h(zzrVar);
        Preconditions.checkNotEmpty(zzrVar.zza);
        zzpg zzpgVar = this.a;
        try {
            return (zzao) zzpgVar.zzaX().zzi(new vsb(this, zzrVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzpgVar.zzaW().zzb().zzc("Failed to get consent. appId", zzgu.d(zzrVar.zza), e);
            return new zzao(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzx(zzr zzrVar, Bundle bundle) {
        h(zzrVar);
        Preconditions.checkNotNull(zzrVar.zza);
        zzpg zzpgVar = this.a;
        if (!zzpgVar.zzd().zzp(null, zzfy.zzaT)) {
            try {
                return (List) zzpgVar.zzaX().zzh(new ttb(this, zzrVar, bundle)).get();
            } catch (InterruptedException | ExecutionException e) {
                zzpgVar.zzaW().zzb().zzc("Failed to get trigger URIs. appId", zzgu.d(zzrVar.zza), e);
                return Collections.EMPTY_LIST;
            }
        }
        try {
            return (List) zzpgVar.zzaX().zzi(new qtb(this, zzrVar, bundle)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzpgVar.zzaW().zzb().zzc("Failed to get trigger URIs. appId", zzgu.d(zzrVar.zza), e2);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzy(final zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        g(new Runnable() { // from class: evb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzpg zzpgVar = this.b.a;
                zzpgVar.Q();
                zzpgVar.a0(zzrVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzz(final zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        g(new Runnable() { // from class: xtb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzpg zzpgVar = this.b.a;
                zzpgVar.Q();
                zzpgVar.b0(zzrVar);
            }
        });
    }
}
