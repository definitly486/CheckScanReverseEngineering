package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdd;
import defpackage.c9c;
import defpackage.dyb;
import defpackage.jza;
import defpackage.k3c;
import defpackage.n3c;
import defpackage.qhb;
import defpackage.r3c;
import defpackage.t3c;
import defpackage.wwb;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmb extends qhb {
    public volatile zzlu c;
    public volatile zzlu d;
    public zzlu e;
    public final ConcurrentHashMap f;
    public zzdd g;
    public volatile boolean h;
    public volatile zzlu i;
    public zzlu j;
    public boolean k;
    public final Object l;

    public zzmb(zzic zzicVar) {
        super(zzicVar);
        this.l = new Object();
        this.f = new ConcurrentHashMap();
    }

    public final String b(String str) {
        if (str == null) {
            return "Activity";
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str2.length();
        zzic zzicVar = this.a;
        zzicVar.zzc().getClass();
        if (length2 <= 500) {
            return str2;
        }
        zzicVar.zzc().getClass();
        return str2.substring(0, 500);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002d  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d3  */
    public final void c(zzlu zzluVar, zzlu zzluVar2, long j, boolean z, Bundle bundle) {
        boolean z2;
        long j2;
        zzg();
        boolean z3 = false;
        if (zzluVar2 != null) {
            if (zzluVar2.zzc == zzluVar.zzc && Objects.equals(zzluVar2.zzb, zzluVar.zzb) && Objects.equals(zzluVar2.zza, zzluVar.zza)) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            z2 = true;
        }
        if (z && this.e != null) {
            z3 = true;
        }
        zzic zzicVar = this.a;
        if (z2) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzpp.zzay(zzluVar, bundle2, true);
            if (zzluVar2 != null) {
                String str = zzluVar2.zza;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zzluVar2.zzb;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zzluVar2.zzc);
            }
            if (z3) {
                c9c c9cVar = zzicVar.zzh().f;
                long j3 = j - c9cVar.b;
                c9cVar.b = j;
                if (j3 > 0) {
                    zzicVar.zzk().G(bundle2, j3);
                }
            }
            if (!zzicVar.zzc().zzv()) {
                bundle2.putLong("_mst", 1L);
            }
            boolean z4 = zzluVar.zze;
            String str3 = true != z4 ? TtmlNode.TEXT_EMPHASIS_AUTO : "app";
            long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
            if (z4) {
                long j4 = zzluVar.zzf;
                if (j4 != 0) {
                    jCurrentTimeMillis = j4;
                }
            }
            long jElapsedRealtime = zzicVar.zzc().zzp(null, zzfy.zzbe) ? zzicVar.zzba().elapsedRealtime() : 0L;
            if (z4) {
                long j5 = zzluVar.zzg;
                if (j5 != 0) {
                    j2 = j5;
                } else {
                    j2 = jElapsedRealtime;
                }
            } else {
                j2 = jElapsedRealtime;
            }
            zzicVar.zzj().c(str3, "_vs", bundle2, jCurrentTimeMillis, j2);
        }
        if (z3) {
            e(this.e, true, j);
        }
        this.e = zzluVar;
        if (zzluVar.zze) {
            this.j = zzluVar;
        }
        zznl zznlVarZzt = zzicVar.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new dyb(zznlVarZzt, zzluVar));
    }

    public final void d(String str, zzlu zzluVar, boolean z) {
        zzlu zzluVar2;
        zzlu zzluVar3 = this.c == null ? this.d : this.c;
        if (zzluVar.zzb == null) {
            zzluVar2 = new zzlu(zzluVar.zza, str != null ? b(str) : null, zzluVar.zzc, zzluVar.zze, zzluVar.zzf, zzluVar.zzg);
        } else {
            zzluVar2 = zzluVar;
        }
        this.d = this.c;
        this.c = zzluVar2;
        zzic zzicVar = this.a;
        zzicVar.zzaX().zzj(new k3c(this, zzluVar2, zzluVar3, zzicVar.zzba().elapsedRealtime(), z));
    }

    public final void e(zzlu zzluVar, boolean z, long j) {
        zzic zzicVar = this.a;
        zzicVar.zzw().zzc(zzicVar.zzba().elapsedRealtime());
        if (!zzicVar.zzh().f.a(j, zzluVar != null && zzluVar.a, z) || zzluVar == null) {
            return;
        }
        zzluVar.a = false;
    }

    public final zzlu f(zzdd zzddVar) {
        Preconditions.checkNotNull(zzddVar);
        Integer numValueOf = Integer.valueOf(zzddVar.zza);
        ConcurrentHashMap concurrentHashMap = this.f;
        zzlu zzluVar = (zzlu) concurrentHashMap.get(numValueOf);
        if (zzluVar == null) {
            zzlu zzluVar2 = new zzlu(null, b(zzddVar.zzb), this.a.zzk().zzd());
            concurrentHashMap.put(numValueOf, zzluVar2);
            zzluVar = zzluVar2;
        }
        return this.i != null ? this.i : zzluVar;
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return false;
    }

    public final zzlu zzh(boolean z) {
        a();
        zzg();
        zzlu zzluVar = this.e;
        return (z && zzluVar == null) ? this.j : zzluVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r2 > 500) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006f, code lost:
    
        if (r4 > 500) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(android.os.Bundle r13, long r14, long r16) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzmb.zzj(android.os.Bundle, long, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        if (r4 > 500) goto L27;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzk(com.google.android.gms.internal.measurement.zzdd r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzmb.zzk(com.google.android.gms.internal.measurement.zzdd, java.lang.String, java.lang.String):void");
    }

    public final zzlu zzl() {
        return this.c;
    }

    public final void zzn(zzdd zzddVar, Bundle bundle) {
        Bundle bundle2;
        if (!this.a.zzc().zzv() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(Integer.valueOf(zzddVar.zza), new zzlu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong(TtmlNode.ATTR_ID)));
    }

    public final void zzp(zzdd zzddVar) {
        int i;
        Object obj = this.l;
        synchronized (obj) {
            int i2 = 1;
            try {
                this.k = true;
                i = 0;
                if (!Objects.equals(zzddVar, this.g)) {
                    synchronized (obj) {
                        this.g = zzddVar;
                        this.h = false;
                        zzic zzicVar = this.a;
                        if (zzicVar.zzc().zzv()) {
                            this.i = null;
                            zzicVar.zzaX().zzj(new wwb(this, i2));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzic zzicVar2 = this.a;
        if (!zzicVar2.zzc().zzv()) {
            this.c = this.i;
            zzicVar2.zzaX().zzj(new n3c(this, i));
            return;
        }
        d(zzddVar.zzb, f(zzddVar), false);
        zzd zzdVarZzw = this.a.zzw();
        zzic zzicVar3 = zzdVarZzw.a;
        zzicVar3.zzaX().zzj(new jza(zzdVarZzw, zzicVar3.zzba().elapsedRealtime()));
    }

    public final void zzq(zzdd zzddVar) {
        synchronized (this.l) {
            this.k = false;
            this.h = true;
        }
        zzic zzicVar = this.a;
        long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
        if (!zzicVar.zzc().zzv()) {
            this.c = null;
            zzicVar.zzaX().zzj(new r3c(this, jElapsedRealtime));
        } else {
            zzlu zzluVarF = f(zzddVar);
            this.d = this.c;
            this.c = null;
            zzicVar.zzaX().zzj(new t3c(this, zzluVarF, jElapsedRealtime));
        }
    }

    public final void zzs(zzdd zzddVar, Bundle bundle) {
        if (this.a.zzc().zzv() && bundle != null) {
            zzlu zzluVar = (zzlu) this.f.get(Integer.valueOf(zzddVar.zza));
            if (zzluVar != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong(TtmlNode.ATTR_ID, zzluVar.zzc);
                bundle2.putString("name", zzluVar.zza);
                bundle2.putString("referrer_name", zzluVar.zzb);
                bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
            }
        }
    }

    public final void zzt(zzdd zzddVar) {
        synchronized (this.l) {
            try {
                if (Objects.equals(this.g, zzddVar)) {
                    this.g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.a.zzc().zzv()) {
            this.f.remove(Integer.valueOf(zzddVar.zza));
        }
    }
}
