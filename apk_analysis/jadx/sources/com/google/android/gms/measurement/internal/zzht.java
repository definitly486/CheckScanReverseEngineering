package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzfc;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzfe;
import com.google.android.gms.internal.measurement.zzff;
import com.google.android.gms.internal.measurement.zzfg;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzfm;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfu;
import com.google.android.gms.internal.measurement.zzgt;
import com.google.android.gms.internal.measurement.zziy;
import com.google.android.gms.internal.measurement.zzja;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzu;
import com.google.android.gms.measurement.internal.zzht;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.cob;
import defpackage.kva;
import defpackage.lac;
import defpackage.tua;
import defpackage.xp;
import defpackage.ynb;
import defpackage.yta;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes4.dex */
public final class zzht extends lac implements yta {
    public final ArrayMap d;
    public final ArrayMap e;
    public final ArrayMap f;
    public final ArrayMap g;
    public final ArrayMap h;
    public final ArrayMap i;
    public final ArrayMap j;
    public final ynb k;
    public final cob l;
    public final ArrayMap m;
    public final ArrayMap n;
    public final ArrayMap o;

    public zzht(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = new ArrayMap();
        this.e = new ArrayMap();
        this.f = new ArrayMap();
        this.g = new ArrayMap();
        this.h = new ArrayMap();
        this.i = new ArrayMap();
        this.m = new ArrayMap();
        this.n = new ArrayMap();
        this.o = new ArrayMap();
        this.j = new ArrayMap();
        this.k = new ynb(this);
        this.l = new cob(this);
    }

    public static final ArrayMap h(com.google.android.gms.internal.measurement.zzgl zzglVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzglVar != null) {
            for (zzgt zzgtVar : zzglVar.zze()) {
                arrayMap.put(zzgtVar.zza(), zzgtVar.zzb());
            }
        }
        return arrayMap;
    }

    public static final zzjk i(int i) {
        int i2 = i - 1;
        if (i2 == 1) {
            return zzjk.AD_STORAGE;
        }
        if (i2 == 2) {
            return zzjk.ANALYTICS_STORAGE;
        }
        if (i2 == 3) {
            return zzjk.AD_USER_DATA;
        }
        if (i2 != 4) {
            return null;
        }
        return zzjk.AD_PERSONALIZATION;
    }

    @Override // defpackage.lac
    public final void b() {
    }

    public final zzji c(String str, zzjk zzjkVar) {
        zzg();
        d(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarT = t(str);
        if (zzgfVarT == null) {
            return zzji.UNINITIALIZED;
        }
        for (zzfu zzfuVar : zzgfVarT.zzf()) {
            if (i(zzfuVar.zzb()) == zzjkVar) {
                int iZzc = zzfuVar.zzc() - 1;
                if (iZzc != 1) {
                    return iZzc != 2 ? zzji.UNINITIALIZED : zzji.DENIED;
                }
                return zzji.GRANTED;
            }
        }
        return zzji.UNINITIALIZED;
    }

    public final void d(String str) {
        a();
        zzg();
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = this.i;
        if (arrayMap.get(str) == 0) {
            tua tuaVarD0 = this.b.zzj().d0(str);
            ArrayMap arrayMap2 = this.o;
            ArrayMap arrayMap3 = this.n;
            ArrayMap arrayMap4 = this.m;
            ArrayMap arrayMap5 = this.d;
            if (tuaVarD0 != null) {
                com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) g(str, tuaVarD0.a).zzco();
                e(str, zzgkVar);
                arrayMap5.put(str, h((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd()));
                arrayMap.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd());
                f(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd());
                arrayMap4.put(str, zzgkVar.zzh());
                arrayMap3.put(str, tuaVarD0.b);
                arrayMap2.put(str, tuaVarD0.c);
                return;
            }
            arrayMap5.put(str, null);
            this.f.put(str, null);
            this.e.put(str, null);
            this.g.put(str, null);
            this.h.put(str, null);
            arrayMap.put(str, null);
            arrayMap4.put(str, null);
            arrayMap3.put(str, null);
            arrayMap2.put(str, null);
            this.j.put(str, null);
        }
    }

    public final void e(String str, com.google.android.gms.internal.measurement.zzgk zzgkVar) {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        Iterator it = zzgkVar.zzg().iterator();
        while (it.hasNext()) {
            hashSet.add(((com.google.android.gms.internal.measurement.zzgh) it.next()).zza());
        }
        zzic zzicVar = this.a;
        zzal zzalVarZzc = zzicVar.zzc();
        zzfx zzfxVar = zzfy.zzaV;
        if (zzalVarZzc.zzp(null, zzfxVar)) {
            arrayList.addAll(zzgkVar.zzi());
        }
        for (int i = 0; i < zzgkVar.zza(); i++) {
            com.google.android.gms.internal.measurement.zzgi zzgiVar = (com.google.android.gms.internal.measurement.zzgi) zzgkVar.zzb(i).zzco();
            if (zzgiVar.zza().isEmpty()) {
                xp.h(zzicVar, "EventConfig contained null event name");
            } else {
                String strZza = zzgiVar.zza();
                String strZzb = zzjm.zzb(zzgiVar.zza());
                if (!TextUtils.isEmpty(strZzb)) {
                    zzgiVar.zzb(strZzb);
                    zzgkVar.zzc(i, zzgiVar);
                }
                if (zzgiVar.zzc() && zzgiVar.zzd()) {
                    arrayMap.put(strZza, Boolean.TRUE);
                }
                if (zzgiVar.zze() && zzgiVar.zzf()) {
                    arrayMap2.put(zzgiVar.zza(), Boolean.TRUE);
                }
                if (zzgiVar.zzg()) {
                    if (zzgiVar.zzh() < 2 || zzgiVar.zzh() > 65535) {
                        zzicVar.zzaW().zze().zzc("Invalid sampling rate. Event name, sample rate", zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    } else {
                        arrayMap3.put(zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    }
                }
            }
        }
        this.e.put(str, hashSet);
        if (zzicVar.zzc().zzp(null, zzfxVar)) {
            this.h.put(str, arrayList);
        }
        this.f.put(str, arrayMap);
        this.g.put(str, arrayMap2);
        this.j.put(str, arrayMap3);
    }

    public final void f(final String str, com.google.android.gms.internal.measurement.zzgl zzglVar) {
        int iZzk = zzglVar.zzk();
        ynb ynbVar = this.k;
        if (iZzk == 0) {
            ynbVar.remove(str);
            return;
        }
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzk().zzb("EES programs found", Integer.valueOf(zzglVar.zzk()));
        zzja zzjaVar = (zzja) zzglVar.zzj().get(0);
        try {
            zzc zzcVar = new zzc();
            zzcVar.zza("internal.remoteConfig", new Callable() { // from class: tob
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new zzn("internal.remoteConfig", new fob(this.b, str));
                }
            });
            zzcVar.zza("internal.appMetadata", new Callable() { // from class: job
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    final zzht zzhtVar = this.b;
                    final String str2 = str;
                    return new zzu("internal.appMetadata", new Callable() { // from class: pob
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzht zzhtVar2 = zzhtVar;
                            kva kvaVarZzj = zzhtVar2.b.zzj();
                            String str3 = str2;
                            fmb fmbVarZ = kvaVarZzj.Z(str3);
                            HashMap map = new HashMap();
                            map.put("platform", "android");
                            map.put("package_name", str3);
                            zzhtVar2.a.zzc().zzi();
                            map.put("gmp_version", 161000L);
                            if (fmbVarZ != null) {
                                String strW = fmbVarZ.w();
                                if (strW != null) {
                                    map.put("app_version", strW);
                                }
                                map.put("app_version_int", Long.valueOf(fmbVarZ.y()));
                                fmbVarZ.a.zzaX().zzg();
                                map.put("dynamite_version", Long.valueOf(fmbVarZ.r));
                            }
                            return map;
                        }
                    });
                }
            });
            zzcVar.zza("internal.logger", new Callable() { // from class: mob
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new zzt(this.b.l);
                }
            });
            zzcVar.zzf(zzjaVar);
            ynbVar.put(str, zzcVar);
            zzicVar.zzaW().zzk().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzjaVar.zzb().zzb()));
            Iterator it = zzjaVar.zzb().zza().iterator();
            while (it.hasNext()) {
                zzicVar.zzaW().zzk().zzb("EES program activity", ((zziy) it.next()).zza());
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            zzicVar.zzaW().zzb().zzb("Failed to load EES program. appId", str);
        }
    }

    public final com.google.android.gms.internal.measurement.zzgl g(String str, byte[] bArr) {
        zzic zzicVar = this.a;
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzgl.zzt();
        }
        try {
            com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) ((com.google.android.gms.internal.measurement.zzgk) zzpk.H(com.google.android.gms.internal.measurement.zzgl.zzs(), bArr)).zzbd();
            zzicVar.zzaW().zzk().zzc("Parsed config. version, gmp_app_id", zzglVar.zza() ? Long.valueOf(zzglVar.zzb()) : null, zzglVar.zzc() ? zzglVar.zzd() : null);
            return zzglVar;
        } catch (zzaeh e) {
            zzicVar.zzaW().zze().zzc("Unable to merge remote config. appId", zzgu.d(str), e);
            return com.google.android.gms.internal.measurement.zzgl.zzt();
        } catch (RuntimeException e2) {
            zzicVar.zzaW().zze().zzc("Unable to merge remote config. appId", zzgu.d(str), e2);
            return com.google.android.gms.internal.measurement.zzgl.zzt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.google.android.gms.internal.measurement.zzgl j(String str) {
        a();
        zzg();
        Preconditions.checkNotEmpty(str);
        d(str);
        return (com.google.android.gms.internal.measurement.zzgl) this.i.get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String k(String str) {
        zzg();
        d(str);
        return (String) this.m.get(str);
    }

    public final void l(String str, String str2, String str3, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        byte[] bArrZzcd;
        Iterator it;
        int i;
        boolean z;
        a();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) g(str, bArr).zzco();
        e(str, zzgkVar);
        f(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd());
        com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd();
        ArrayMap arrayMap = this.i;
        arrayMap.put(str, zzglVar);
        this.m.put(str, zzgkVar.zzh());
        this.n.put(str, str2);
        this.o.put(str, str3);
        this.d.put(str, h((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbd()));
        zzpg zzpgVar = this.b;
        kva kvaVarZzj = zzpgVar.zzj();
        ArrayList<zzfd> arrayList = new ArrayList(zzgkVar.zzd());
        zzic zzicVar = kvaVarZzj.a;
        Preconditions.checkNotNull(arrayList);
        int i2 = 0;
        while (i2 < arrayList.size()) {
            zzfc zzfcVar = (zzfc) ((zzfd) arrayList.get(i2)).zzco();
            if (zzfcVar.zzd() != 0) {
                int i3 = 0;
                while (i3 < zzfcVar.zzd()) {
                    zzfe zzfeVar = (zzfe) zzfcVar.zze(i3).zzco();
                    zzic zzicVar2 = zzicVar;
                    zzfe zzfeVar2 = (zzfe) zzfeVar.clone();
                    ArrayMap arrayMap2 = arrayMap;
                    String strZzb = zzjm.zzb(zzfeVar.zza());
                    if (strZzb != null) {
                        zzfeVar2.zzb(strZzb);
                        z = true;
                    } else {
                        z = false;
                    }
                    boolean z2 = z;
                    int i4 = 0;
                    while (i4 < zzfeVar.zzc()) {
                        zzfh zzfhVarZzd = zzfeVar.zzd(i4);
                        zzfe zzfeVar3 = zzfeVar;
                        String strZzc = zzlt.zzc(zzfhVarZzd.zzi(), zzjn.zza, zzjn.zzb);
                        if (strZzc != null) {
                            zzfg zzfgVar = (zzfg) zzfhVarZzd.zzco();
                            zzfgVar.zza(strZzc);
                            zzfeVar2.zze(i4, (zzfh) zzfgVar.zzbd());
                            z2 = true;
                        }
                        i4++;
                        zzfeVar = zzfeVar3;
                    }
                    if (z2) {
                        zzfcVar.zzf(i3, zzfeVar2);
                        arrayList.set(i2, (zzfd) zzfcVar.zzbd());
                    }
                    i3++;
                    zzicVar = zzicVar2;
                    arrayMap = arrayMap2;
                }
            }
            ArrayMap arrayMap3 = arrayMap;
            zzic zzicVar3 = zzicVar;
            if (zzfcVar.zza() != 0) {
                for (int i5 = 0; i5 < zzfcVar.zza(); i5++) {
                    zzfn zzfnVarZzb = zzfcVar.zzb(i5);
                    String strZzc2 = zzlt.zzc(zzfnVarZzb.zzc(), zzjo.zza, zzjo.zzb);
                    if (strZzc2 != null) {
                        zzfm zzfmVar = (zzfm) zzfnVarZzb.zzco();
                        zzfmVar.zza(strZzc2);
                        zzfcVar.zzc(i5, zzfmVar);
                        arrayList.set(i2, (zzfd) zzfcVar.zzbd());
                    }
                }
            }
            i2++;
            zzgkVar = zzgkVar;
            zzpgVar = zzpgVar;
            zzicVar = zzicVar3;
            arrayMap = arrayMap3;
        }
        com.google.android.gms.internal.measurement.zzgk zzgkVar2 = zzgkVar;
        ArrayMap arrayMap4 = arrayMap;
        zzpg zzpgVar2 = zzpgVar;
        zzic zzicVar4 = zzicVar;
        kvaVarZzj.a();
        kvaVarZzj.zzg();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(arrayList);
        SQLiteDatabase sQLiteDatabaseM = kvaVarZzj.M();
        sQLiteDatabaseM.beginTransaction();
        try {
            kvaVarZzj.a();
            kvaVarZzj.zzg();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase sQLiteDatabaseM2 = kvaVarZzj.M();
            sQLiteDatabaseM2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseM2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                zzfd zzfdVar = (zzfd) it2.next();
                kvaVarZzj.a();
                kvaVarZzj.zzg();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzfdVar);
                if (zzfdVar.zza()) {
                    int iZzb = zzfdVar.zzb();
                    Iterator it3 = zzfdVar.zzf().iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!((zzff) it3.next()).zza()) {
                                zzicVar4.zzaW().zze().zzc("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgu.d(str), Integer.valueOf(iZzb));
                                break;
                            }
                        } else {
                            Iterator it4 = zzfdVar.zzc().iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    Iterator it5 = zzfdVar.zzf().iterator();
                                    while (true) {
                                        boolean zHasNext = it5.hasNext();
                                        zzfd zzfdVar2 = zzfdVar;
                                        String str4 = "audience_id";
                                        sQLiteDatabase = sQLiteDatabaseM;
                                        String str5 = CommonUrlParts.APP_ID;
                                        if (!zHasNext) {
                                            it = it2;
                                            i = iZzb;
                                            for (zzfn zzfnVar : zzfdVar2.zzc()) {
                                                kvaVarZzj.a();
                                                kvaVarZzj.zzg();
                                                Preconditions.checkNotEmpty(str);
                                                Preconditions.checkNotNull(zzfnVar);
                                                if (zzfnVar.zzc().isEmpty()) {
                                                    zzicVar4.zzaW().zze().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgu.d(str), Integer.valueOf(i), String.valueOf(zzfnVar.zza() ? Integer.valueOf(zzfnVar.zzb()) : null));
                                                } else {
                                                    byte[] bArrZzcd2 = zzfnVar.zzcd();
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put(str5, str);
                                                    String str6 = str5;
                                                    contentValues.put(str4, Integer.valueOf(i));
                                                    contentValues.put("filter_id", zzfnVar.zza() ? Integer.valueOf(zzfnVar.zzb()) : null);
                                                    String str7 = str4;
                                                    contentValues.put("property_name", zzfnVar.zzc());
                                                    contentValues.put("session_scoped", zzfnVar.zzh() ? Boolean.valueOf(zzfnVar.zzi()) : null);
                                                    contentValues.put("data", bArrZzcd2);
                                                    try {
                                                        if (kvaVarZzj.M().insertWithOnConflict("property_filters", null, contentValues, 5) == -1) {
                                                            zzicVar4.zzaW().zzb().zzb("Failed to insert property filter (got -1). appId", zzgu.d(str));
                                                        } else {
                                                            str5 = str6;
                                                            str4 = str7;
                                                        }
                                                    } catch (SQLiteException e) {
                                                        zzicVar4.zzaW().zzb().zzc("Error storing property filter. appId", zzgu.d(str), e);
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        try {
                                            zzff zzffVar = (zzff) it5.next();
                                            kvaVarZzj.a();
                                            kvaVarZzj.zzg();
                                            Preconditions.checkNotEmpty(str);
                                            Preconditions.checkNotNull(zzffVar);
                                            if (zzffVar.zzc().isEmpty()) {
                                                zzicVar4.zzaW().zze().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgu.d(str), Integer.valueOf(iZzb), String.valueOf(zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null));
                                                it = it2;
                                                i = iZzb;
                                            } else {
                                                it = it2;
                                                byte[] bArrZzcd3 = zzffVar.zzcd();
                                                i = iZzb;
                                                ContentValues contentValues2 = new ContentValues();
                                                contentValues2.put(CommonUrlParts.APP_ID, str);
                                                contentValues2.put("audience_id", Integer.valueOf(i));
                                                contentValues2.put("filter_id", zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null);
                                                contentValues2.put("event_name", zzffVar.zzc());
                                                contentValues2.put("session_scoped", zzffVar.zzl() ? Boolean.valueOf(zzffVar.zzm()) : null);
                                                contentValues2.put("data", bArrZzcd3);
                                                try {
                                                    if (kvaVarZzj.M().insertWithOnConflict("event_filters", null, contentValues2, 5) == -1) {
                                                        zzicVar4.zzaW().zzb().zzb("Failed to insert event filter (got -1). appId", zzgu.d(str));
                                                    }
                                                    zzfdVar = zzfdVar2;
                                                    sQLiteDatabaseM = sQLiteDatabase;
                                                    it2 = it;
                                                    iZzb = i;
                                                } catch (SQLiteException e2) {
                                                    zzicVar4.zzaW().zzb().zzc("Error storing event filter. appId", zzgu.d(str), e2);
                                                }
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            sQLiteDatabase.endTransaction();
                                            throw th;
                                        }
                                        kvaVarZzj.a();
                                        kvaVarZzj.zzg();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase sQLiteDatabaseM3 = kvaVarZzj.M();
                                        sQLiteDatabaseM3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
                                        sQLiteDatabaseM3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
                                        break;
                                    }
                                    sQLiteDatabaseM = sQLiteDatabase;
                                    it2 = it;
                                    break;
                                }
                                if (!((zzfn) it4.next()).zza()) {
                                    zzicVar4.zzaW().zze().zzc("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgu.d(str), Integer.valueOf(iZzb));
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    zzicVar4.zzaW().zze().zzb("Audience with no ID. appId", zzgu.d(str));
                }
            }
            sQLiteDatabase = sQLiteDatabaseM;
            ArrayList arrayList2 = new ArrayList();
            for (zzfd zzfdVar3 : arrayList) {
                arrayList2.add(zzfdVar3.zza() ? Integer.valueOf(zzfdVar3.zzb()) : null);
            }
            Preconditions.checkNotEmpty(str);
            kvaVarZzj.a();
            kvaVarZzj.zzg();
            SQLiteDatabase sQLiteDatabaseM4 = kvaVarZzj.M();
            try {
                long jT = kvaVarZzj.t("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int iMax = Math.max(0, Math.min(2000, zzicVar4.zzc().zzm(str, zzfy.zzU)));
                if (jT > iMax) {
                    ArrayList arrayList3 = new ArrayList();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList2.size()) {
                            String strJoin = TextUtils.join(StringUtils.COMMA, arrayList3);
                            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
                            sb.append("(");
                            sb.append(strJoin);
                            sb.append(")");
                            String string = sb.toString();
                            StringBuilder sb2 = new StringBuilder(string.length() + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA);
                            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb2.append(string);
                            sb2.append(" order by rowid desc limit -1 offset ?)");
                            sQLiteDatabaseM4.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)});
                            break;
                        }
                        Integer num = (Integer) arrayList2.get(i6);
                        if (num == null) {
                            break;
                        }
                        arrayList3.add(Integer.toString(num.intValue()));
                        i6++;
                    }
                }
            } catch (SQLiteException e3) {
                zzicVar4.zzaW().zzb().zzc("Database error querying filters. appId", zzgu.d(str), e3);
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            try {
                zzgkVar2.zze();
                bArrZzcd = ((com.google.android.gms.internal.measurement.zzgl) zzgkVar2.zzbd()).zzcd();
            } catch (RuntimeException e4) {
                this.a.zzaW().zze().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzgu.d(str), e4);
                bArrZzcd = bArr;
            }
            kva kvaVarZzj2 = zzpgVar2.zzj();
            Preconditions.checkNotEmpty(str);
            kvaVarZzj2.zzg();
            zzic zzicVar5 = kvaVarZzj2.a;
            kvaVarZzj2.a();
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("remote_config", bArrZzcd);
            contentValues3.put("config_last_modified_time", str2);
            contentValues3.put("e_tag", str3);
            try {
                if (kvaVarZzj2.M().update("apps", contentValues3, "app_id = ?", new String[]{str}) == 0) {
                    zzicVar5.zzaW().zzb().zzb("Failed to update remote config (got 0). appId", zzgu.d(str));
                }
            } catch (SQLiteException e5) {
                zzicVar5.zzaW().zzb().zzc("Error storing remote config. appId", zzgu.d(str), e5);
            }
            zzgkVar2.zzf();
            arrayMap4.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar2.zzbd());
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = sQLiteDatabaseM;
        }
    }

    public final boolean m(String str, String str2) {
        Boolean bool;
        zzg();
        d(str);
        if ("1".equals(zza(str, "measurement.upload.blacklist_internal")) && zzpp.A(str2)) {
            return true;
        }
        if ("1".equals(zza(str, "measurement.upload.blacklist_public")) && zzpp.K(str2)) {
            return true;
        }
        Map map = (Map) this.f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean n(String str, String str2) {
        Boolean bool;
        zzg();
        d(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map map = (Map) this.g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final List o(String str) {
        zzg();
        d(str);
        return (List) this.h.get(str);
    }

    public final int p(String str, String str2) {
        Integer num;
        zzg();
        d(str);
        Map map = (Map) this.j.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean q(String str) {
        zzg();
        d(str);
        ArrayMap arrayMap = this.e;
        if (arrayMap.get(str) != 0) {
            return ((Set) arrayMap.get(str)).contains(CommonUrlParts.OS_VERSION) || ((Set) arrayMap.get(str)).contains("device_info");
        }
        return false;
    }

    public final boolean r(String str) {
        zzg();
        d(str);
        ArrayMap arrayMap = this.e;
        return arrayMap.get(str) != 0 && ((Set) arrayMap.get(str)).contains("app_instance_id");
    }

    public final boolean s(String str, zzjk zzjkVar) {
        zzg();
        d(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarT = t(str);
        if (zzgfVarT == null) {
            return false;
        }
        for (zzfu zzfuVar : zzgfVarT.zza()) {
            if (zzjkVar == i(zzfuVar.zzb())) {
                if (zzfuVar.zzc() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final com.google.android.gms.internal.measurement.zzgf t(String str) {
        zzg();
        d(str);
        com.google.android.gms.internal.measurement.zzgl zzglVarJ = j(str);
        if (zzglVarJ == null || !zzglVarJ.zzn()) {
            return null;
        }
        return zzglVarJ.zzo();
    }

    public final boolean zzC(String str) {
        zzg();
        d(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarT = t(str);
        if (zzgfVarT == null) {
            return false;
        }
        for (zzfu zzfuVar : zzgfVarT.zza()) {
            if (zzfuVar.zzb() == 3 && zzfuVar.zzd() == 3) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.yta
    public final String zza(String str, String str2) {
        zzg();
        d(str);
        Map map = (Map) this.d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }
}
