package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzcs;
import defpackage.d5c;
import defpackage.f5c;
import defpackage.hnb;
import defpackage.i5c;
import defpackage.kh;
import defpackage.nyb;
import defpackage.o9c;
import defpackage.qhb;
import defpackage.u4;
import defpackage.u5c;
import defpackage.v4c;
import defpackage.x4c;
import defpackage.xp;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zznl extends qhb {
    public final zznf c;
    public zzgb d;
    public volatile Boolean e;
    public final d5c f;
    public ScheduledExecutorService g;
    public final o9c h;
    public final ArrayList i;
    public final nyb j;

    public zznl(zzic zzicVar) {
        super(zzicVar);
        this.i = new ArrayList();
        this.h = new o9c(zzicVar.zzba());
        this.c = new zznf(this);
        this.f = new d5c(this, zzicVar);
        this.j = new nyb(this, zzicVar, 1);
    }

    public final void b() {
        zzg();
        a();
        if (zzh()) {
            return;
        }
        boolean zC = c();
        zznf zznfVar = this.c;
        if (zC) {
            zznfVar.zzc();
            return;
        }
        zzic zzicVar = this.a;
        if (zzicVar.zzc().a()) {
            return;
        }
        zzicVar.zzaV();
        List<ResolveInfo> listQueryIntentServices = zzicVar.zzaZ().getPackageManager().queryIntentServices(new Intent().setClassName(zzicVar.zzaZ(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            u4.e(zzicVar, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context contextZzaZ = zzicVar.zzaZ();
        zzicVar.zzaV();
        intent.setComponent(new ComponentName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementService"));
        zznfVar.zza(intent);
    }

    public final boolean c() {
        zzg();
        a();
        if (this.e == null) {
            zzg();
            a();
            zzic zzicVar = this.a;
            hnb hnbVarZzd = zzicVar.zzd();
            hnbVarZzd.zzg();
            boolean z = false;
            Boolean boolValueOf = !hnbVarZzd.d().contains("use_service") ? null : Boolean.valueOf(hnbVarZzd.d().getBoolean("use_service", false));
            boolean z2 = true;
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                zzicVar.zzaV();
                zzgi zzgiVarZzv = this.a.zzv();
                zzgiVarZzv.a();
                if (zzgiVarZzv.n == 1) {
                    z = true;
                } else {
                    zzicVar.zzaW().zzk().zza("Checking service availability");
                    int iZzal = zzicVar.zzk().zzal(12451000);
                    if (iZzal == 0) {
                        zzicVar.zzaW().zzk().zza("Service available");
                    } else if (iZzal == 1) {
                        zzicVar.zzaW().zzk().zza("Service missing");
                    } else if (iZzal != 2) {
                        if (iZzal == 3) {
                            xp.h(zzicVar, "Service disabled");
                        } else if (iZzal == 9) {
                            xp.h(zzicVar, "Service invalid");
                        } else if (iZzal != 18) {
                            zzicVar.zzaW().zze().zzb("Unexpected service status", Integer.valueOf(iZzal));
                        } else {
                            xp.h(zzicVar, "Service updating");
                        }
                        z2 = false;
                    } else {
                        zzicVar.zzaW().zzj().zza("Service container out of date");
                        if (zzicVar.zzk().zzak() >= 17443) {
                            z = boolValueOf == null;
                            z2 = false;
                        }
                    }
                    z = true;
                }
                if (!z && zzicVar.zzc().a()) {
                    u4.e(zzicVar, "No way to upload. Consider using the full version of Analytics");
                } else if (z2) {
                    hnb hnbVarZzd2 = zzicVar.zzd();
                    hnbVarZzd2.zzg();
                    SharedPreferences.Editor editorEdit = hnbVarZzd2.d().edit();
                    editorEdit.putBoolean("use_service", z);
                    editorEdit.apply();
                }
                z2 = z;
            }
            this.e = Boolean.valueOf(z2);
        }
        return this.e.booleanValue();
    }

    public final boolean d() {
        zzg();
        a();
        return !c() || this.a.zzk().zzak() >= ((Integer) zzfy.zzaJ.zzb(null)).intValue();
    }

    public final /* synthetic */ void e(ComponentName componentName) {
        zzg();
        if (this.d != null) {
            this.d = null;
            this.a.zzaW().zzk().zzb("Disconnected from device MeasurementService", componentName);
            zzg();
            b();
        }
    }

    public final void f() {
        this.a.zzaV();
    }

    public final void g() {
        zzg();
        o9c o9cVar = this.h;
        o9cVar.b = o9cVar.a.elapsedRealtime();
        this.a.zzc();
        this.f.b(((Long) zzfy.zzY.zzb(null)).longValue());
    }

    public final void h(Runnable runnable) {
        zzg();
        if (zzh()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.i;
        long size = arrayList.size();
        zzic zzicVar = this.a;
        zzicVar.zzc();
        if (size >= 1000) {
            u4.e(zzicVar, "Discarding data. Max runnable queue size reached");
            return;
        }
        arrayList.add(runnable);
        this.j.b(60000L);
        b();
    }

    public final void i() {
        zzg();
        zzic zzicVar = this.a;
        zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
        ArrayList arrayList = this.i;
        zzgsVarZzk.zzb("Processing queued up service tasks", Integer.valueOf(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e) {
                zzicVar.zzaW().zzb().zzb("Task exception while flushing queue", e);
            }
        }
        arrayList.clear();
        this.j.c();
    }

    public final zzr j(boolean z) {
        Pair pairZzb;
        zzic zzicVar = this.a;
        zzicVar.zzaV();
        zzgi zzgiVarZzv = zzicVar.zzv();
        String strC = null;
        if (z) {
            zzic zzicVar2 = zzicVar.zzaW().a;
            if (zzicVar2.zzd().e != null && (pairZzb = zzicVar2.zzd().e.zzb()) != null && pairZzb != hnb.z) {
                String strValueOf = String.valueOf(pairZzb.second);
                String str = (String) pairZzb.first;
                strC = kh.c(new StringBuilder(strValueOf.length() + 1 + String.valueOf(str).length()), strValueOf, StringUtils.PROCESS_POSTFIX_DELIMITER, str);
            }
        }
        return zzgiVarZzv.b(strC);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00f2  */
    public final void k(zzgb zzgbVar, AbstractSafeParcelable abstractSafeParcelable, zzr zzrVar) {
        int size;
        zzr zzrVar2;
        long j;
        long jElapsedRealtime;
        zzg();
        a();
        f();
        zzic zzicVar = this.a;
        zzicVar.zzc();
        zzr zzrVar3 = zzrVar;
        int i = 100;
        int i2 = 0;
        for (int i3 = 100; i2 < 1001 && i == i3; i3 = 100) {
            ArrayList arrayList = new ArrayList();
            List listZzm = zzicVar.zzm().zzm(i3);
            if (listZzm != null) {
                arrayList.addAll(listZzm);
                size = listZzm.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != 0 && size < i3) {
                arrayList.add(new zzgk(abstractSafeParcelable, zzrVar3.zzc, zzrVar3.zzj));
            }
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                zzgk zzgkVar = (zzgk) arrayList.get(i4);
                AbstractSafeParcelable abstractSafeParcelable2 = zzgkVar.zza;
                zzal zzalVarZzc = zzicVar.zzc();
                zzfx zzfxVar = zzfy.zzaW;
                if (zzalVarZzc.zzp(null, zzfxVar)) {
                    String str = zzgkVar.zzb;
                    if (TextUtils.isEmpty(str)) {
                        zzrVar2 = zzrVar3;
                    } else {
                        zzrVar2 = new zzr(zzrVar3.zza, zzrVar3.zzb, str, zzgkVar.zzc, zzrVar3.zzd, zzrVar3.zze, zzrVar3.zzf, zzrVar3.zzg, zzrVar3.zzh, zzrVar3.zzi, zzrVar3.zzk, zzrVar3.zzl, zzrVar3.zzm, zzrVar3.zzn, zzrVar3.zzo, zzrVar3.zzp, zzrVar3.zzq, zzrVar3.zzr, zzrVar3.zzs, zzrVar3.zzt, zzrVar3.zzu, zzrVar3.zzv, zzrVar3.zzw, zzrVar3.zzx, zzrVar3.zzy, zzrVar3.zzz, zzrVar3.zzA, zzrVar3.zzB, zzrVar3.zzC, zzrVar3.zzD, zzrVar3.zzE, zzrVar3.zzF);
                    }
                } else {
                    zzrVar2 = zzrVar3;
                }
                if (abstractSafeParcelable2 instanceof zzbh) {
                    try {
                        long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
                        try {
                            jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
                            try {
                                zzgbVar.zze((zzbh) abstractSafeParcelable2, zzrVar2);
                                zzicVar.zzaW().zzk().zza("Logging telemetry for logEvent from database");
                                zzgq zzgqVar = zzgq.d;
                                if (zzgqVar == null) {
                                    zzgqVar = new zzgq(zzicVar.zzaZ(), zzicVar);
                                    zzgq.d = zzgqVar;
                                }
                                zzgqVar.zzb(36301, 0, jCurrentTimeMillis, zzicVar.zzba().currentTimeMillis(), (int) (zzicVar.zzba().elapsedRealtime() - jElapsedRealtime));
                            } catch (RemoteException e) {
                                e = e;
                                j = jCurrentTimeMillis;
                                zzicVar.zzaW().zzb().zzb("Failed to send event to the service", e);
                                if (j != 0) {
                                    zzgq zzgqVar2 = zzgq.d;
                                    if (zzgqVar2 == null) {
                                        zzgqVar2 = new zzgq(zzicVar.zzaZ(), zzicVar);
                                        zzgq.d = zzgqVar2;
                                    }
                                    zzgqVar2.zzb(36301, 13, j, zzicVar.zzba().currentTimeMillis(), (int) (zzicVar.zzba().elapsedRealtime() - jElapsedRealtime));
                                }
                            }
                        } catch (RemoteException e2) {
                            e = e2;
                            jElapsedRealtime = 0;
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                        j = 0;
                        jElapsedRealtime = 0;
                    }
                } else if (abstractSafeParcelable2 instanceof zzpl) {
                    try {
                        zzgbVar.zzf((zzpl) abstractSafeParcelable2, zzrVar2);
                    } catch (RemoteException e4) {
                        zzicVar.zzaW().zzb().zzb("Failed to send user property to the service", e4);
                    }
                } else if (abstractSafeParcelable2 instanceof zzah) {
                    try {
                        zzgbVar.zzn((zzah) abstractSafeParcelable2, zzrVar2);
                    } catch (RemoteException e5) {
                        zzicVar.zzaW().zzb().zzb("Failed to send conditional user property to the service", e5);
                    }
                } else if (zzicVar.zzc().zzp(null, zzfxVar) && (abstractSafeParcelable2 instanceof zzbf)) {
                    try {
                        zzgbVar.zzu(((zzbf) abstractSafeParcelable2).zzf(), zzrVar2);
                    } catch (RemoteException e6) {
                        zzicVar.zzaW().zzb().zzb("Failed to send default event parameters to the service", e6);
                    }
                } else {
                    u4.e(zzicVar, "Discarding data. Unrecognized parcel type.");
                }
                i4++;
                zzrVar3 = zzrVar2;
            }
            i2++;
            i = size;
        }
    }

    public final void l(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        zzg();
        a();
        zzic zzicVar = this.a;
        zzicVar.zzaV();
        h(new u5c(this, j(true), zzicVar.zzm().zzk(zzahVar), new zzah(zzahVar)));
    }

    public final void zzC(AtomicReference atomicReference) {
        zzg();
        a();
        h(new v4c(this, atomicReference, j(false)));
    }

    public final void zzD(zzcs zzcsVar) {
        zzg();
        a();
        h(new x4c(this, j(false), zzcsVar));
    }

    public final void zzH(Bundle bundle) {
        zzg();
        a();
        zzbf zzbfVar = new zzbf(bundle);
        f();
        zzic zzicVar = this.a;
        h(new f5c(this, j(false), zzicVar.zzc().zzp(null, zzfy.zzaW) && zzicVar.zzm().zzl(zzbfVar), zzbfVar, bundle));
    }

    public final void zzM() {
        zzg();
        a();
        zznf zznfVar = this.c;
        zznfVar.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(this.a.zzaZ(), zznfVar);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final void zzN(zzcs zzcsVar, zzbh zzbhVar, String str) {
        zzg();
        a();
        zzic zzicVar = this.a;
        if (zzicVar.zzk().zzal(12451000) == 0) {
            h(new i5c(this, zzbhVar, str, zzcsVar));
        } else {
            zzicVar.zzaW().zze().zza("Not bundling data. Service unavailable or out of date");
            zzicVar.zzk().zzar(zzcsVar, new byte[0]);
        }
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return false;
    }

    public final boolean zzh() {
        zzg();
        a();
        return this.d != null;
    }
}
