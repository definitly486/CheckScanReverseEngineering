package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzabw;
import com.google.android.gms.internal.measurement.zzabx;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoh;
import com.google.android.gms.measurement.internal.zzr;
import com.google.common.collect.l;
import com.google.common.collect.n;
import com.google.common.collect.w;
import com.google.common.collect.x;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.a1c;
import defpackage.brb;
import defpackage.c0c;
import defpackage.c9c;
import defpackage.cn1;
import defpackage.cxb;
import defpackage.dzb;
import defpackage.edb;
import defpackage.en3;
import defpackage.fc3;
import defpackage.gxb;
import defpackage.hnb;
import defpackage.hzb;
import defpackage.i0c;
import defpackage.j59;
import defpackage.jxb;
import defpackage.k0c;
import defpackage.k9c;
import defpackage.kzb;
import defpackage.m0c;
import defpackage.n5c;
import defpackage.nyb;
import defpackage.o0c;
import defpackage.ozb;
import defpackage.phb;
import defpackage.q0c;
import defpackage.q5c;
import defpackage.qhb;
import defpackage.qyb;
import defpackage.r18;
import defpackage.r4c;
import defpackage.rpb;
import defpackage.rzb;
import defpackage.s5c;
import defpackage.sxb;
import defpackage.t0c;
import defpackage.u4;
import defpackage.uyb;
import defpackage.v1c;
import defpackage.vzb;
import defpackage.xp;
import defpackage.y1c;
import defpackage.y69;
import defpackage.zwb;
import defpackage.zyb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlj extends qhb {
    public a1c c;
    public zzjp d;
    public final CopyOnWriteArraySet e;
    public boolean f;
    public final AtomicReference g;
    public final Object h;
    public boolean i;
    public int j;
    public jxb k;
    public zwb l;
    public PriorityQueue m;
    public zzjl n;
    public final AtomicLong o;
    public long p;
    public final zzx q;
    public boolean r;
    public dzb s;
    public y1c t;
    public nyb u;
    public final fc3 v;

    public zzlj(zzic zzicVar) {
        super(zzicVar);
        this.e = new CopyOnWriteArraySet();
        this.h = new Object();
        this.i = false;
        this.j = 1;
        this.r = true;
        this.v = new fc3(this);
        this.g = new AtomicReference();
        this.n = zzjl.zza;
        this.p = -1L;
        this.o = new AtomicLong(0L);
        this.q = new zzx(zzicVar);
    }

    public final void b(String str, String str2, Bundle bundle) {
        zzg();
        zzic zzicVar = this.a;
        c(str, str2, bundle, zzicVar.zzba().currentTimeMillis(), zzicVar.zzc().zzp(null, zzfy.zzbe) ? zzicVar.zzba().elapsedRealtime() : 0L);
    }

    public final void c(String str, String str2, Bundle bundle, long j, long j2) {
        zzg();
        boolean z = true;
        if (this.d != null && !zzpp.A(str2)) {
            z = false;
        }
        d(str, str2, j, j2, bundle, true, z, true);
    }

    /* JADX WARN: Code duplicated, block: B:133:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x03be  */
    /* JADX WARN: Code duplicated, block: B:137:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:139:0x03db  */
    /* JADX WARN: Code duplicated, block: B:141:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:142:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:144:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:145:0x0404  */
    /* JADX WARN: Code duplicated, block: B:147:0x0408  */
    /* JADX WARN: Code duplicated, block: B:148:0x0417  */
    /* JADX WARN: Code duplicated, block: B:150:0x041a  */
    /* JADX WARN: Code duplicated, block: B:151:0x041e  */
    /* JADX WARN: Code duplicated, block: B:156:0x042c  */
    /* JADX WARN: Code duplicated, block: B:158:0x0436  */
    /* JADX WARN: Code duplicated, block: B:159:0x0439  */
    /* JADX WARN: Code duplicated, block: B:162:0x043f  */
    /* JADX WARN: Code duplicated, block: B:165:0x0488  */
    /* JADX WARN: Code duplicated, block: B:168:0x0494 A[LOOP:2: B:166:0x048e->B:168:0x0494, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x0420 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x04a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00fa  */
    public final void d(String str, String str2, long j, long j2, Bundle bundle, boolean z, boolean z2, boolean z3) {
        boolean z4;
        long j3;
        boolean zZza;
        long j4;
        long j5;
        String str3;
        ArrayList arrayList;
        int size;
        int i;
        int i2;
        Bundle bundleC;
        String str4;
        Bundle bundle2;
        Iterator it;
        String str5;
        ArrayList arrayList2;
        Object obj;
        Bundle[] bundleArr;
        int i3;
        String str6 = str;
        Preconditions.checkNotEmpty(str6);
        Preconditions.checkNotNull(bundle);
        zzg();
        a();
        zzic zzicVar = this.a;
        if (!zzicVar.zzB()) {
            zzicVar.zzaW().zzj().zza("Event not sent since app measurement is disabled");
            return;
        }
        List list = zzicVar.zzv().k;
        if (list != null && !list.contains(str2)) {
            zzicVar.zzaW().zzj().zzc("Dropping non-safelisted event. event name, origin", str2, str6);
            return;
        }
        if (!this.f) {
            this.f = true;
            try {
                try {
                    (!zzicVar.zzp() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, zzicVar.zzaZ().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, zzicVar.zzaZ());
                } catch (Exception e) {
                    zzicVar.zzaW().zze().zzb("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                zzicVar.zzaW().zzi().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if (!zzicVar.zzc().zzp(null, zzfy.zzaZ) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            zzicVar.zzaV();
            e(zzicVar.zzba().currentTimeMillis(), bundle.getString("gclid"), TtmlNode.TEXT_EMPHASIS_AUTO, "_lgclid");
        }
        zzicVar.zzaV();
        if (z && zzpp.zzai(str2)) {
            zzicVar.zzk().k(bundle, zzicVar.zzd().y.zza());
        }
        fc3 fc3Var = this.v;
        if (!z3) {
            zzicVar.zzaV();
            if (!"_iap".equals(str2)) {
                zzpp zzppVarZzk = zzicVar.zzk();
                if (zzppVarZzk.N(NotificationCompat.CATEGORY_EVENT, str2)) {
                    zzic zzicVar2 = zzppVarZzk.a;
                    if (zzppVarZzk.P(NotificationCompat.CATEGORY_EVENT, zzjm.zza, zzicVar2.zzc().zzp(null, zzfy.zzbf) ? zzjm.zzc : zzjm.zzb, str2)) {
                        zzicVar2.zzc();
                        if (zzppVarZzk.Q(40, NotificationCompat.CATEGORY_EVENT, str2)) {
                            i3 = 0;
                        } else {
                            i3 = 2;
                        }
                    } else {
                        i3 = 13;
                    }
                } else {
                    i3 = 2;
                }
                if (i3 != 0) {
                    zzicVar.zzaW().zzd().zzb("Invalid public event name. Event will not be logged (FE)", zzicVar.zzl().a(str2));
                    zzpp zzppVarZzk2 = zzicVar.zzk();
                    zzicVar.zzc();
                    String strZzE = zzppVarZzk2.zzE(str2, 40, true);
                    int length = str2 != null ? str2.length() : 0;
                    zzicVar.zzk().getClass();
                    zzpp.p(fc3Var, null, i3, "_ev", strZzE, length);
                    return;
                }
            }
        }
        zzicVar.zzaV();
        zzlu zzluVarZzh = zzicVar.zzs().zzh(false);
        if (zzluVarZzh != null && !bundle.containsKey("_sc")) {
            zzluVarZzh.a = true;
        }
        zzpp.zzay(zzluVarZzh, bundle, z && !z3);
        boolean zEquals = "am".equals(str6);
        boolean zA = zzpp.A(str2);
        if (!z || this.d == null || zA) {
            z4 = zEquals;
        } else {
            if (!zEquals) {
                zzicVar.zzaW().zzj().zzc("Passing event to registered event handler (FE)", zzicVar.zzl().a(str2), zzicVar.zzl().e(bundle));
                Preconditions.checkNotNull(this.d);
                this.d.interceptEvent(str6, str2, bundle, j);
                return;
            }
            z4 = true;
        }
        if (zzicVar.a()) {
            int iR = zzicVar.zzk().R(str2);
            if (iR != 0) {
                zzicVar.zzaW().zzd().zzb("Invalid event name. Event will not be logged (FE)", zzicVar.zzl().a(str2));
                zzpp zzppVarZzk3 = zzicVar.zzk();
                zzicVar.zzc();
                String strZzE2 = zzppVarZzk3.zzE(str2, 40, true);
                int length2 = str2 != null ? str2.length() : 0;
                zzicVar.zzk().getClass();
                zzpp.p(fc3Var, null, iR, "_ev", strZzE2, length2);
                return;
            }
            Bundle bundleH = zzicVar.zzk().h(str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
            Preconditions.checkNotNull(bundleH);
            zzicVar.zzaV();
            if (zzicVar.zzs().zzh(false) == null || !"_ae".equals(str2)) {
                j3 = 0;
            } else {
                c9c c9cVar = zzicVar.zzh().f;
                j3 = 0;
                long jElapsedRealtime = c9cVar.d.a.zzba().elapsedRealtime();
                long j6 = jElapsedRealtime - c9cVar.b;
                c9cVar.b = jElapsedRealtime;
                if (j6 > 0) {
                    zzicVar.zzk().G(bundleH, j6);
                }
            }
            if (!TtmlNode.TEXT_EMPHASIS_AUTO.equals(str6) && "_ssr".equals(str2)) {
                zzpp zzppVarZzk4 = zzicVar.zzk();
                String string = bundleH.getString("_ffr");
                if (Strings.isEmptyOrWhitespace(string)) {
                    string = null;
                } else if (string != null) {
                    string = string.trim();
                }
                zzic zzicVar3 = zzppVarZzk4.a;
                if (Objects.equals(string, zzicVar3.zzd().v.zza())) {
                    zzicVar3.zzaW().zzj().zza("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                zzicVar3.zzd().v.zzb(string);
            } else if ("_ae".equals(str2)) {
                String strZza = zzicVar.zzk().a.zzd().v.zza();
                if (!TextUtils.isEmpty(strZza)) {
                    bundleH.putString("_ffr", strZza);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(bundleH);
            if (zzicVar.zzc().zzp(null, zzfy.zzaS)) {
                zzoc zzocVarZzh = zzicVar.zzh();
                zzocVarZzh.zzg();
                zZza = zzocVarZzh.d;
            } else {
                zZza = zzicVar.zzd().s.zza();
            }
            if (zzicVar.zzd().p.zza() > j3) {
                j5 = j;
                if (zzicVar.zzd().i(j5) && zZza) {
                    zzicVar.zzaW().zzk().zza("Current session is expired, remove the session number, ID, and engagement time");
                    long j7 = j3;
                    arrayList3 = arrayList3;
                    j4 = j7;
                    str3 = "_o";
                    e(zzicVar.zzba().currentTimeMillis(), null, TtmlNode.TEXT_EMPHASIS_AUTO, "_sid");
                    e(zzicVar.zzba().currentTimeMillis(), null, TtmlNode.TEXT_EMPHASIS_AUTO, "_sno");
                    e(zzicVar.zzba().currentTimeMillis(), null, TtmlNode.TEXT_EMPHASIS_AUTO, "_se");
                    zzicVar.zzd().q.zzb(j4);
                } else {
                    j4 = j3;
                }
                if (bundleH.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, j4) == 1) {
                    zzicVar.zzaW().zzk().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    zzicVar.zzh().e.b(j5, j2);
                }
                arrayList = new ArrayList(bundleH.keySet());
                Collections.sort(arrayList);
                size = arrayList.size();
                i = 0;
                while (i < size) {
                    str5 = (String) arrayList.get(i);
                    if (str5 != null) {
                        zzicVar.zzk();
                        obj = bundleH.get(str5);
                        if (obj instanceof Bundle) {
                            arrayList2 = arrayList;
                            bundleArr = new Bundle[]{(Bundle) obj};
                        } else {
                            arrayList2 = arrayList;
                            if (obj instanceof Parcelable[]) {
                                Parcelable[] parcelableArr = (Parcelable[]) obj;
                                bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                            } else if (obj instanceof ArrayList) {
                                ArrayList arrayList4 = (ArrayList) obj;
                                bundleArr = (Bundle[]) arrayList4.toArray(new Bundle[arrayList4.size()]);
                            } else {
                                bundleArr = null;
                            }
                        }
                        if (bundleArr != null) {
                            bundleH.putParcelableArray(str5, bundleArr);
                        }
                    } else {
                        arrayList2 = arrayList;
                    }
                    i++;
                    arrayList = arrayList2;
                }
                i2 = 0;
                while (i2 < arrayList3.size()) {
                    ArrayList arrayList5 = arrayList3;
                    bundleC = (Bundle) arrayList5.get(i2);
                    if (i2 != 0) {
                        str4 = "_ep";
                    } else {
                        str4 = str2;
                    }
                    bundleC.putString(str3, str6);
                    if (z2) {
                        bundleC = zzicVar.zzk().C(bundleC);
                    }
                    bundle2 = bundleC;
                    zzbh zzbhVar = new zzbh(str4, new zzbf(bundleC), str6, j5, j2);
                    zznl zznlVarZzt = zzicVar.zzt();
                    zznlVarZzt.getClass();
                    Preconditions.checkNotNull(zzbhVar);
                    zznlVarZzt.zzg();
                    zznlVarZzt.a();
                    zznlVarZzt.f();
                    zznlVarZzt.h(new s5c(zznlVarZzt, zznlVarZzt.j(true), zznlVarZzt.a.zzm().zzi(zzbhVar), zzbhVar));
                    if (!z4) {
                        it = this.e.iterator();
                        while (it.hasNext()) {
                            ((zzjq) it.next()).onEvent(str, str2, new Bundle(bundle2), j);
                        }
                    }
                    i2++;
                    str6 = str;
                    j5 = j;
                    arrayList3 = arrayList5;
                }
                zzicVar.zzaV();
                if (zzicVar.zzs().zzh(false) == null && "_ae".equals(str2)) {
                    zzicVar.zzh().f.a(zzicVar.zzba().elapsedRealtime(), true, true);
                    return;
                }
            }
            j4 = j3;
            j5 = j;
            str3 = "_o";
            if (bundleH.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, j4) == 1) {
                zzicVar.zzaW().zzk().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                zzicVar.zzh().e.b(j5, j2);
            }
            arrayList = new ArrayList(bundleH.keySet());
            Collections.sort(arrayList);
            size = arrayList.size();
            i = 0;
            while (i < size) {
                str5 = (String) arrayList.get(i);
                if (str5 != null) {
                    zzicVar.zzk();
                    obj = bundleH.get(str5);
                    if (obj instanceof Bundle) {
                        arrayList2 = arrayList;
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else {
                        arrayList2 = arrayList;
                        if (obj instanceof Parcelable[]) {
                            Parcelable[] parcelableArr2 = (Parcelable[]) obj;
                            bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr2, parcelableArr2.length, Bundle[].class);
                        } else if (obj instanceof ArrayList) {
                            ArrayList arrayList6 = (ArrayList) obj;
                            bundleArr = (Bundle[]) arrayList6.toArray(new Bundle[arrayList6.size()]);
                        } else {
                            bundleArr = null;
                        }
                    }
                    if (bundleArr != null) {
                        bundleH.putParcelableArray(str5, bundleArr);
                    }
                } else {
                    arrayList2 = arrayList;
                }
                i++;
                arrayList = arrayList2;
            }
            i2 = 0;
            while (i2 < arrayList3.size()) {
                ArrayList arrayList7 = arrayList3;
                bundleC = (Bundle) arrayList7.get(i2);
                if (i2 != 0) {
                    str4 = "_ep";
                } else {
                    str4 = str2;
                }
                bundleC.putString(str3, str6);
                if (z2) {
                    bundleC = zzicVar.zzk().C(bundleC);
                }
                bundle2 = bundleC;
                zzbh zzbhVar2 = new zzbh(str4, new zzbf(bundleC), str6, j5, j2);
                zznl zznlVarZzt2 = zzicVar.zzt();
                zznlVarZzt2.getClass();
                Preconditions.checkNotNull(zzbhVar2);
                zznlVarZzt2.zzg();
                zznlVarZzt2.a();
                zznlVarZzt2.f();
                zznlVarZzt2.h(new s5c(zznlVarZzt2, zznlVarZzt2.j(true), zznlVarZzt2.a.zzm().zzi(zzbhVar2), zzbhVar2));
                if (!z4) {
                    it = this.e.iterator();
                    while (it.hasNext()) {
                        ((zzjq) it.next()).onEvent(str, str2, new Bundle(bundle2), j);
                    }
                }
                i2++;
                str6 = str;
                j5 = j;
                arrayList3 = arrayList7;
            }
            zzicVar.zzaV();
            if (zzicVar.zzs().zzh(false) == null) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0051  */
    public final void e(long j, Object obj, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        boolean zEquals = FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS.equals(str2);
        zzic zzicVar = this.a;
        if (zEquals) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String lowerCase = str3.toLowerCase(Locale.ENGLISH);
                    String str4 = TJAdUnitConstants.String.FALSE;
                    long j2 = true != TJAdUnitConstants.String.FALSE.equals(lowerCase) ? 0L : 1L;
                    obj = Long.valueOf(j2);
                    zzhg zzhgVar = zzicVar.zzd().m;
                    if (j2 == 1) {
                        str4 = TJAdUnitConstants.String.TRUE;
                    }
                    zzhgVar.zzb(str4);
                } else if (obj == null) {
                    zzicVar.zzd().m.zzb("unset");
                }
                str2 = "_npa";
            } else if (obj == null) {
                zzicVar.zzd().m.zzb("unset");
                str2 = "_npa";
            }
            zzicVar.zzaW().zzk().zzc("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
        }
        Object obj2 = obj;
        String str5 = str2;
        if (!zzicVar.zzB()) {
            zzicVar.zzaW().zzk().zza("User property not set since app measurement is disabled");
            return;
        }
        if (zzicVar.a()) {
            zzpl zzplVar = new zzpl(j, obj2, str5, str);
            zznl zznlVarZzt = zzicVar.zzt();
            zznlVarZzt.zzg();
            zznlVarZzt.a();
            zznlVarZzt.f();
            zznlVarZzt.h(new r4c(zznlVarZzt, zznlVarZzt.j(true), zznlVarZzt.a.zzm().zzj(zzplVar), zzplVar));
        }
    }

    public final void f(zzjl zzjlVar, long j, boolean z) {
        zzg();
        a();
        zzic zzicVar = this.a;
        zzjl zzjlVarG = zzicVar.zzd().g();
        if (j <= this.p && zzjl.zzu(zzjlVarG.zzb(), zzjlVar.zzb())) {
            zzicVar.zzaW().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzjlVar);
            return;
        }
        hnb hnbVarZzd = zzicVar.zzd();
        zzic zzicVar2 = hnbVarZzd.a;
        hnbVarZzd.zzg();
        int iZzb = zzjlVar.zzb();
        if (!zzjl.zzu(iZzb, hnbVarZzd.d().getInt("consent_source", 100))) {
            zzicVar.zzaW().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzjlVar.zzb()));
            return;
        }
        SharedPreferences.Editor editorEdit = hnbVarZzd.d().edit();
        editorEdit.putString("consent_settings", zzjlVar.zzl());
        editorEdit.putInt("consent_source", iZzb);
        editorEdit.apply();
        zzicVar.zzaW().zzk().zzb("Setting storage consent(FE)", zzjlVar);
        this.p = j;
        zznl zznlVarZzt = zzicVar.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        if (!zznlVarZzt.c() || zznlVarZzt.a.zzk().zzak() >= 241200) {
            final zznl zznlVarZzt2 = zzicVar.zzt();
            zznlVarZzt2.zzg();
            zznlVarZzt2.a();
            zznlVarZzt2.h(new Runnable() { // from class: m7c
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zznl zznlVar = zznlVarZzt2;
                    zzic zzicVar3 = zznlVar.a;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        u4.e(zzicVar3, "Failed to send storage consent settings to service");
                        return;
                    }
                    try {
                        zzr zzrVarJ = zznlVar.j(false);
                        Preconditions.checkNotNull(zzrVarJ);
                        zzgbVar.zzy(zzrVarJ);
                        zznlVar.g();
                    } catch (RemoteException e) {
                        zzicVar3.zzaW().zzb().zzb("Failed to send storage consent settings to the service", e);
                    }
                }
            });
        } else {
            zznl zznlVarZzt3 = zzicVar.zzt();
            zznlVarZzt3.zzg();
            zznlVarZzt3.a();
            if (zznlVarZzt3.d()) {
                zznlVarZzt3.h(new q5c(zznlVarZzt3, zznlVarZzt3.j(false)));
            }
        }
        if (z) {
            zzicVar.zzt().zzC(new AtomicReference());
        }
    }

    public final void g(Boolean bool, boolean z) {
        zzg();
        a();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzj().zzb("Setting app measurement enabled (FE)", bool);
        hnb hnbVarZzd = zzicVar.zzd();
        hnbVarZzd.zzg();
        SharedPreferences.Editor editorEdit = hnbVarZzd.d().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
        if (z) {
            hnb hnbVarZzd2 = zzicVar.zzd();
            zzic zzicVar2 = hnbVarZzd2.a;
            hnbVarZzd2.zzg();
            SharedPreferences.Editor editorEdit2 = hnbVarZzd2.d().edit();
            if (bool != null) {
                editorEdit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit2.remove("measurement_enabled_from_api");
            }
            editorEdit2.apply();
        }
        if (zzicVar.zzE() || !(bool == null || bool.booleanValue())) {
            h();
        }
    }

    public final void h() {
        zzlj zzljVar;
        zzg();
        zzic zzicVar = this.a;
        String strZza = zzicVar.zzd().m.zza();
        if (strZza == null) {
            zzljVar = this;
        } else if ("unset".equals(strZza)) {
            zzljVar = this;
            zzljVar.e(zzicVar.zzba().currentTimeMillis(), null, "app", "_npa");
        } else {
            zzljVar = this;
            zzljVar.e(zzicVar.zzba().currentTimeMillis(), Long.valueOf(true != TJAdUnitConstants.String.TRUE.equals(strZza) ? 0L : 1L), "app", "_npa");
        }
        if (zzicVar.zzB() && zzljVar.r) {
            zzicVar.zzaW().zzj().zza("Recording app launch after enabling measurement for the first time (FE)");
            zzljVar.zzT();
            zzicVar.zzh().e.a();
            zzicVar.zzaX().zzj(new sxb(zzljVar, 0));
            return;
        }
        zzicVar.zzaW().zzj().zza("Updating Scion state (FE)");
        zznl zznlVarZzt = zzicVar.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new n5c(zznlVarZzt, zznlVarZzt.j(true)));
    }

    public final void i(Bundle bundle, int i, long j) {
        Object obj;
        String string;
        a();
        zzjl zzjlVar = zzjl.zza;
        zzjk[] zzjkVarArrA = zzjj.STORAGE.a();
        int length = zzjkVarArrA.length;
        int i2 = 0;
        while (true) {
            obj = null;
            if (i2 >= length) {
                break;
            }
            String str = zzjkVarArrA[i2].zze;
            if (bundle.containsKey(str) && (string = bundle.getString(str)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i2++;
        }
        zzic zzicVar = this.a;
        if (obj != null) {
            zzicVar.zzaW().zzh().zzb("Ignoring invalid consent setting", obj);
            zzicVar.zzaW().zzh().zza("Valid consent values are 'granted', 'denied'");
        }
        boolean zZze = zzicVar.zzaX().zze();
        zzjl zzjlVarZze = zzjl.zze(bundle, i);
        if (zzjlVarZze.zzc()) {
            zzs(zzjlVarZze, zZze);
        }
        zzba zzbaVarZzh = zzba.zzh(bundle, i);
        if (zzbaVarZzh.zzd()) {
            j(zzbaVarZzh, zZze);
        }
        Boolean boolZzi = zzba.zzi(bundle);
        if (boolZzi != null) {
            String str2 = i == -30 ? "tcf" : "app";
            if (zZze) {
                e(j, boolZzi.toString(), str2, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS);
            } else {
                zzK(str2, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, boolZzi.toString(), false, j);
            }
        }
    }

    public final void j(zzba zzbaVar, boolean z) {
        o0c o0cVar = new o0c(this, zzbaVar);
        if (!z) {
            this.a.zzaX().zzj(o0cVar);
        } else {
            zzg();
            o0cVar.run();
        }
    }

    public final void k() {
        zzaif.zza();
        zzic zzicVar = this.a;
        if (zzicVar.zzc().zzp(null, zzfy.zzaP)) {
            if (zzicVar.zzaX().zze()) {
                u4.e(zzicVar, "Cannot get trigger URIs from analytics worker thread");
                return;
            }
            zzicVar.zzaV();
            if (zzae.zza()) {
                u4.e(zzicVar, "Cannot get trigger URIs from main thread");
                return;
            }
            a();
            zzicVar.zzaW().zzk().zza("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzicVar.zzaX().d(atomicReference, 10000L, "get trigger URIs", new Runnable() { // from class: p1c
                @Override // java.lang.Runnable
                public final void run() {
                    zzlj zzljVar = this.b;
                    final Bundle bundleZza = zzljVar.a.zzd().n.zza();
                    final zznl zznlVarZzt = zzljVar.a.zzt();
                    zznlVarZzt.zzg();
                    zznlVarZzt.a();
                    final zzr zzrVarJ = zznlVarZzt.j(false);
                    final AtomicReference atomicReference2 = atomicReference;
                    zznlVarZzt.h(new Runnable() { // from class: g7c
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zznl zznlVar = zznlVarZzt;
                            AtomicReference atomicReference3 = atomicReference2;
                            zzr zzrVar = zzrVarJ;
                            Bundle bundle = bundleZza;
                            synchronized (atomicReference3) {
                                try {
                                    zzgb zzgbVar = zznlVar.d;
                                    if (zzgbVar == null) {
                                        zznlVar.a.zzaW().zzb().zza("Failed to request trigger URIs; not connected to service");
                                        return;
                                    }
                                    Preconditions.checkNotNull(zzrVar);
                                    zzgbVar.zzD(zzrVar, bundle, new n4c(zznlVar, atomicReference3));
                                    zznlVar.g();
                                } catch (RemoteException e) {
                                    zznlVar.a.zzaW().zzb().zzb("Failed to request trigger URIs; remote exception", e);
                                    atomicReference3.notifyAll();
                                }
                            }
                        }
                    });
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                zzicVar.zzaW().zzd().zza("Timed out waiting for get trigger URIs");
            } else {
                zzicVar.zzaX().zzj(new Runnable() { // from class: s1c
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzlj zzljVar = this.b;
                        zzljVar.zzg();
                        if (Build.VERSION.SDK_INT < 30) {
                            return;
                        }
                        SparseArray sparseArrayF = zzljVar.a.zzd().f();
                        for (zzoh zzohVar : list) {
                            int i = zzohVar.zzc;
                            if (!sparseArrayF.contains(i) || ((Long) sparseArrayF.get(i)).longValue() < zzohVar.zzb) {
                                zzljVar.l().add(zzohVar);
                            }
                        }
                        zzljVar.zzy();
                    }
                });
            }
        }
    }

    public final PriorityQueue l() {
        PriorityQueue priorityQueue = this.m;
        if (priorityQueue != null) {
            return priorityQueue;
        }
        PriorityQueue priorityQueue2 = new PriorityQueue(Comparator.comparing(v1c.a, phb.c));
        this.m = priorityQueue2;
        return priorityQueue2;
    }

    public final void m(zzjl zzjlVar) {
        zzg();
        boolean zZzo = zzjlVar.zzo(zzjk.ANALYTICS_STORAGE);
        zzic zzicVar = this.a;
        boolean z = (zZzo && zzjlVar.zzo(zzjk.AD_STORAGE)) || zzicVar.zzt().d();
        if (z != zzicVar.zzE()) {
            zzicVar.zzD(z);
            hnb hnbVarZzd = zzicVar.zzd();
            zzic zzicVar2 = hnbVarZzd.a;
            hnbVarZzd.zzg();
            Boolean boolValueOf = hnbVarZzd.d().contains("measurement_enabled_from_api") ? Boolean.valueOf(hnbVarZzd.d().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                g(Boolean.valueOf(z), false);
            }
        }
    }

    public final void zzA(String str, String str2, Bundle bundle) {
        zzic zzicVar = this.a;
        zzB(str, str2, bundle, true, true, zzicVar.zzba().currentTimeMillis(), zzicVar.zzc().zzp(null, zzfy.zzbe) ? zzicVar.zzba().elapsedRealtime() : 0L);
    }

    public final void zzB(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2) {
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        boolean zEquals = Objects.equals(str2, FirebaseAnalytics.Event.SCREEN_VIEW);
        zzic zzicVar = this.a;
        if (zEquals) {
            zzicVar.zzs().zzj(bundle2, j, true != zzicVar.zzc().zzp(null, zzfy.zzbe) ? 0L : j2);
            return;
        }
        boolean z3 = !z2 || this.d == null || zzpp.A(str2);
        if (str == null) {
            str = "app";
        }
        long j3 = true != zzicVar.zzc().zzp(null, zzfy.zzbe) ? 0L : j2;
        Bundle bundle3 = new Bundle(bundle2);
        for (String str3 : bundle3.keySet()) {
            Object obj = bundle3.get(str3);
            if (obj instanceof Bundle) {
                bundle3.putBundle(str3, new Bundle((Bundle) obj));
            } else if (obj instanceof Parcelable[]) {
                Parcelable[] parcelableArr = (Parcelable[]) obj;
                for (int i = 0; i < parcelableArr.length; i++) {
                    Parcelable parcelable = parcelableArr[i];
                    if (parcelable instanceof Bundle) {
                        parcelableArr[i] = new Bundle((Bundle) parcelable);
                    }
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    Object obj2 = list.get(i2);
                    if (obj2 instanceof Bundle) {
                        list.set(i2, new Bundle((Bundle) obj2));
                    }
                }
            }
        }
        zzicVar.zzaX().zzj(new qyb(this, str, str2, j, j3, bundle3, z2, z3, z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzC() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        char c;
        zzod zzodVar;
        zzabx zzabxVar;
        zzg();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzj().zza("Handle tcf update.");
        SharedPreferences sharedPreferencesE = zzicVar.zzd().e();
        w wVar = zzof.a;
        zzabw zzabwVar = zzabw.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        k9c k9cVar = k9c.zza;
        zzabw zzabwVar2 = zzabw.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
        k9c k9cVar2 = k9c.zzd;
        zzabw zzabwVar3 = zzabw.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        zzabw zzabwVar4 = zzabw.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        zzabw zzabwVar5 = zzabw.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        zzabw zzabwVar6 = zzabw.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS;
        zzabw zzabwVar7 = zzabw.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS;
        cn1.a(zzabwVar, k9cVar);
        cn1.a(zzabwVar2, k9cVar2);
        cn1.a(zzabwVar3, k9cVar);
        cn1.a(zzabwVar4, k9cVar);
        cn1.a(zzabwVar5, k9cVar2);
        cn1.a(zzabwVar6, k9cVar2);
        cn1.a(zzabwVar7, k9cVar2);
        x xVarN = x.n(7, new Object[]{zzabwVar, k9cVar, zzabwVar2, k9cVar2, zzabwVar3, k9cVar, zzabwVar4, k9cVar, zzabwVar5, k9cVar2, zzabwVar6, k9cVar2, zzabwVar7, k9cVar2}, null);
        int i5 = n.d;
        r18 r18Var = new r18("CH");
        char[] cArr = new char[5];
        boolean zContains = sharedPreferencesE.contains("IABTCF_TCString");
        int i6 = -1;
        try {
            i = sharedPreferencesE.getInt("IABTCF_CmpSdkID", -1);
        } catch (ClassCastException unused) {
            i = -1;
        }
        try {
            i2 = sharedPreferencesE.getInt("IABTCF_PolicyVersion", -1);
        } catch (ClassCastException unused2) {
            i2 = -1;
        }
        try {
            i3 = sharedPreferencesE.getInt("IABTCF_gdprApplies", -1);
        } catch (ClassCastException unused3) {
            i3 = -1;
        }
        try {
            i4 = sharedPreferencesE.getInt("IABTCF_PurposeOneTreatment", -1);
        } catch (ClassCastException unused4) {
            i4 = -1;
        }
        try {
            i6 = sharedPreferencesE.getInt("IABTCF_EnableAdvertiserConsentMode", -1);
        } catch (ClassCastException unused5) {
        }
        int i7 = i6;
        String strA = zzof.a(sharedPreferencesE, "IABTCF_PublisherCC");
        l.a aVarA = l.a();
        y69 it = xVarN.keySet().iterator();
        while (it.hasNext()) {
            zzabw zzabwVar8 = (zzabw) it.next();
            int iZza = zzabwVar8.zza();
            zzic zzicVar2 = zzicVar;
            y69 y69Var = it;
            StringBuilder sb = new StringBuilder(String.valueOf(iZza).length() + 28);
            sb.append("IABTCF_PublisherRestrictions");
            sb.append(iZza);
            String strA2 = zzof.a(sharedPreferencesE, sb.toString());
            if (TextUtils.isEmpty(strA2) || strA2.length() < 755) {
                zzabxVar = zzabx.PURPOSE_RESTRICTION_UNDEFINED;
            } else {
                int iDigit = Character.digit(strA2.charAt(754), 10);
                if (iDigit < 0 || iDigit > zzabx.values().length || iDigit == 0) {
                    zzabxVar = zzabx.PURPOSE_RESTRICTION_NOT_ALLOWED;
                } else if (iDigit != 1) {
                    zzabxVar = iDigit != 2 ? zzabx.PURPOSE_RESTRICTION_UNDEFINED : zzabx.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                } else {
                    zzabxVar = zzabx.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                }
            }
            aVarA.b(zzabwVar8, zzabxVar);
            zzicVar = zzicVar2;
            it = y69Var;
        }
        zzic zzicVar3 = zzicVar;
        x xVarA = aVarA.a(true);
        String strA3 = zzof.a(sharedPreferencesE, "IABTCF_PurposeConsents");
        String strA4 = zzof.a(sharedPreferencesE, "IABTCF_VendorConsents");
        boolean z2 = !TextUtils.isEmpty(strA4) && strA4.length() >= 755 && strA4.charAt(754) == '1';
        String strA5 = zzof.a(sharedPreferencesE, "IABTCF_PurposeLegitimateInterests");
        String strA6 = zzof.a(sharedPreferencesE, "IABTCF_VendorLegitimateInterests");
        if (TextUtils.isEmpty(strA6) || strA6.length() < 755 || strA6.charAt(754) != '1') {
            z = false;
            c = 1;
        } else {
            c = 1;
            z = true;
        }
        cArr[0] = '2';
        zzod zzodVar2 = new zzod(zzof.zzd(xVarN, xVarA, r18Var, cArr, i, i7, i3, i2, i4, strA, strA3, strA5, z2, z, zContains));
        zzicVar3.zzaW().zzk().zzb("Tcf preferences read", zzodVar2);
        hnb hnbVarZzd = zzicVar3.zzd();
        hnbVarZzd.zzg();
        String string = hnbVarZzd.d().getString("stored_tcf_param", "");
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(string)) {
            zzodVar = new zzod(map);
        } else {
            for (String str : string.split(";")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length >= 2 && zzof.a.contains(strArrSplit[0])) {
                    map.put(strArrSplit[0], strArrSplit[c]);
                }
            }
            zzodVar = new zzod(map);
        }
        hnb hnbVarZzd2 = zzicVar3.zzd();
        hnbVarZzd2.zzg();
        String string2 = hnbVarZzd2.d().getString("stored_tcf_param", "");
        String strA7 = zzodVar2.a();
        if (strA7.equals(string2)) {
            return;
        }
        SharedPreferences.Editor editorEdit = hnbVarZzd2.d().edit();
        editorEdit.putString("stored_tcf_param", strA7);
        editorEdit.apply();
        Bundle bundleZzb = zzodVar2.zzb();
        zzicVar3.zzaW().zzk().zzb("Consent generated from Tcf", bundleZzb);
        if (bundleZzb != Bundle.EMPTY) {
            i(bundleZzb, -30, zzicVar3.zzba().currentTimeMillis());
        }
        Bundle bundle = new Bundle();
        bundle.putString("_tcfm", zzodVar2.zzd(zzodVar));
        bundle.putString("_tcfd2", zzodVar2.zzc());
        bundle.putString("_tcfd", zzodVar2.zze());
        b(TtmlNode.TEXT_EMPHASIS_AUTO, "_tcf", bundle);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [y1c] */
    public final void zzD() {
        zzg();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzj().zza("Register tcfPrefChangeListener.");
        if (this.t == null) {
            this.u = new nyb(this, zzicVar, 0);
            this.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: y1c
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    if (Objects.equals(str, "IABTCF_TCString") || Objects.equals(str, "IABTCF_gdprApplies") || Objects.equals(str, "IABTCF_EnableAdvertiserConsentMode")) {
                        zzlj zzljVar = this.a;
                        zzljVar.a.zzaW().zzk().zza("IABTCF_TCString change picked up in listener.");
                        ((tva) Preconditions.checkNotNull(zzljVar.u)).b(500L);
                    }
                }
            };
        }
        zzicVar.zzd().e().registerOnSharedPreferenceChangeListener(this.t);
    }

    public final void zzH(String str, String str2, Bundle bundle, String str3) {
        throw new IllegalStateException("Unexpected call on client side");
    }

    public final void zzJ(String str, String str2, Object obj, boolean z) {
        zzK(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", obj, true, this.a.zzba().currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public final void zzK(String str, String str2, Object obj, boolean z, long j) {
        int iS;
        int length;
        zzic zzicVar = this.a;
        if (z) {
            iS = zzicVar.zzk().S(str2);
        } else {
            zzpp zzppVarZzk = zzicVar.zzk();
            if (!zzppVarZzk.N("user property", str2)) {
                iS = 6;
            } else if (zzppVarZzk.P("user property", zzjo.zza, null, str2)) {
                zzppVarZzk.a.zzc();
                if (zzppVarZzk.Q(24, "user property", str2)) {
                    iS = 0;
                } else {
                    iS = 6;
                }
            } else {
                iS = 15;
            }
        }
        fc3 fc3Var = this.v;
        if (iS != 0) {
            zzpp zzppVarZzk2 = zzicVar.zzk();
            zzicVar.zzc();
            String strZzE = zzppVarZzk2.zzE(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            zzicVar.zzk().getClass();
            zzpp.p(fc3Var, null, iS, "_ev", strZzE, length);
            return;
        }
        String str3 = str == null ? "app" : str;
        if (obj == null) {
            zzicVar.zzaX().zzj(new uyb(this, str3, str2, null, j));
            return;
        }
        int iM = zzicVar.zzk().m(obj, str2);
        if (iM == 0) {
            Object objN = zzicVar.zzk().n(obj, str2);
            if (objN != null) {
                zzicVar.zzaX().zzj(new uyb(this, str3, str2, objN, j));
                return;
            }
            return;
        }
        zzpp zzppVarZzk3 = zzicVar.zzk();
        zzicVar.zzc();
        String strZzE2 = zzppVarZzk3.zzE(str2, 24, true);
        length = ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0;
        zzicVar.zzk().getClass();
        zzpp.p(fc3Var, null, iM, "_ev", strZzE2, length);
    }

    public final List zzN(boolean z) {
        a();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzk().zza("Getting user properties (FE)");
        if (zzicVar.zzaX().zze()) {
            u4.e(zzicVar, "Cannot get all user properties from analytics worker thread");
            return Collections.EMPTY_LIST;
        }
        zzicVar.zzaV();
        if (zzae.zza()) {
            u4.e(zzicVar, "Cannot get all user properties from main thread");
            return Collections.EMPTY_LIST;
        }
        AtomicReference atomicReference = new AtomicReference();
        zzicVar.zzaX().d(atomicReference, 5000L, "get user properties", new zyb(this, atomicReference, z));
        List list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzicVar.zzaW().zzb().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
        return Collections.EMPTY_LIST;
    }

    public final Map zzO(String str, String str2, boolean z) {
        zzic zzicVar = this.a;
        if (zzicVar.zzaX().zze()) {
            u4.e(zzicVar, "Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        zzicVar.zzaV();
        if (zzae.zza()) {
            u4.e(zzicVar, "Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        zzicVar.zzaX().d(atomicReference, 5000L, "get user properties", new vzb(this, atomicReference, str, str2, z));
        List<zzpl> list = (List) atomicReference.get();
        if (list == null) {
            zzicVar.zzaW().zzb().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.EMPTY_MAP;
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzpl zzplVar : list) {
            Object objZza = zzplVar.zza();
            if (objZza != null) {
                arrayMap.put(zzplVar.zzb, objZza);
            }
        }
        return arrayMap;
    }

    public final String zzP() {
        return (String) this.g.get();
    }

    public final void zzR() {
        zzg();
        zzic zzicVar = this.a;
        if (zzicVar.zzd().t.zza()) {
            zzicVar.zzaW().zzj().zza("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long jZza = zzicVar.zzd().u.zza();
        zzicVar.zzd().u.zzb(1 + jZza);
        zzicVar.zzc();
        if (jZza >= 5) {
            zzicVar.zzaW().zze().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            zzicVar.zzd().t.zzb(true);
            return;
        }
        dzb dzbVar = this.s;
        if (dzbVar == null) {
            dzbVar = new dzb(this, zzicVar);
            this.s = dzbVar;
        }
        dzbVar.b(0L);
    }

    public final void zzS(long j, long j2) {
        this.g.set(null);
        this.a.zzaX().zzj(new hzb(this, j));
    }

    public final void zzT() {
        zzg();
        a();
        zzic zzicVar = this.a;
        if (zzicVar.a()) {
            zzal zzalVarZzc = zzicVar.zzc();
            zzalVarZzc.a.zzaV();
            Boolean boolE = zzalVarZzc.e("google_analytics_deferred_deep_link_enabled");
            if (boolE != null && boolE.booleanValue()) {
                zzicVar.zzaW().zzj().zza("Deferred Deep Link feature enabled.");
                zzicVar.zzaX().zzj(new Runnable() { // from class: e2c
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        this.b.zzR();
                    }
                });
            }
            zznl zznlVarZzt = zzicVar.zzt();
            zznlVarZzt.zzg();
            zznlVarZzt.a();
            zzr zzrVarJ = zznlVarZzt.j(true);
            zznlVarZzt.f();
            zzic zzicVar2 = zznlVarZzt.a;
            zzicVar2.zzc().zzp(null, zzfy.zzaW);
            zzicVar2.zzm().zzn();
            zznlVarZzt.h(new edb(zznlVarZzt, zzrVarJ));
            this.r = false;
            hnb hnbVarZzd = zzicVar.zzd();
            hnbVarZzd.zzg();
            String string = hnbVarZzd.d().getString("previous_os_version", null);
            hnbVarZzd.a.zzu().c();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = hnbVarZzd.d().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            zzicVar.zzu().c();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            b(TtmlNode.TEXT_EMPHASIS_AUTO, "_ou", bundle);
        }
    }

    public final void zzU(zzjp zzjpVar) {
        zzjp zzjpVar2;
        zzg();
        a();
        if (zzjpVar != null && zzjpVar != (zzjpVar2 = this.d)) {
            Preconditions.checkState(zzjpVar2 == null, "EventInterceptor already set.");
        }
        this.d = zzjpVar;
    }

    public final void zzV(zzjq zzjqVar) {
        a();
        Preconditions.checkNotNull(zzjqVar);
        if (this.e.add(zzjqVar)) {
            return;
        }
        xp.h(this.a, "OnEventListener already registered");
    }

    public final void zzW(zzjq zzjqVar) {
        a();
        Preconditions.checkNotNull(zzjqVar);
        if (this.e.remove(zzjqVar)) {
            return;
        }
        xp.h(this.a, "OnEventListener had not been registered");
    }

    public final int zzX(String str) {
        Preconditions.checkNotEmpty(str);
        this.a.zzc();
        return 25;
    }

    public final void zzY(Bundle bundle) {
        zzZ(bundle, this.a.zzba().currentTimeMillis());
    }

    public final void zzZ(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        boolean zIsEmpty = TextUtils.isEmpty(bundle2.getString(CommonUrlParts.APP_ID));
        zzic zzicVar = this.a;
        if (!zIsEmpty) {
            xp.h(zzicVar, "Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(CommonUrlParts.APP_ID);
        Preconditions.checkNotNull(bundle2);
        zzjh.zzb(bundle2, CommonUrlParts.APP_ID, String.class, null);
        zzjh.zzb(bundle2, "origin", String.class, null);
        zzjh.zzb(bundle2, "name", String.class, null);
        zzjh.zzb(bundle2, "value", Object.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (zzicVar.zzk().S(string) != 0) {
            zzicVar.zzaW().zzb().zzb("Invalid conditional user property name", zzicVar.zzl().c(string));
            return;
        }
        if (zzicVar.zzk().m(obj, string) != 0) {
            zzicVar.zzaW().zzb().zzc("Invalid conditional user property value", zzicVar.zzl().c(string), obj);
            return;
        }
        Object objN = zzicVar.zzk().n(obj, string);
        if (objN == null) {
            zzicVar.zzaW().zzb().zzc("Unable to normalize conditional user property value", zzicVar.zzl().c(string), obj);
            return;
        }
        zzjh.zza(bundle2, objN);
        long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
            zzicVar.zzc();
            if (j2 > 15552000000L || j2 < 1) {
                zzicVar.zzaW().zzb().zzc("Invalid conditional user property timeout", zzicVar.zzl().c(string), Long.valueOf(j2));
                return;
            }
        }
        long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        zzicVar.zzc();
        if (j3 > 15552000000L || j3 < 1) {
            zzicVar.zzaW().zzb().zzc("Invalid conditional user property time to live", zzicVar.zzl().c(string), Long.valueOf(j3));
        } else {
            zzicVar.zzaX().zzj(new kzb(0, this, bundle2));
        }
    }

    public final void zzaa(String str, String str2, Bundle bundle) {
        zzic zzicVar = this.a;
        long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzicVar.zzaX().zzj(new ozb(this, bundle2));
    }

    public final ArrayList zzab(String str, String str2) {
        zzic zzicVar = this.a;
        if (zzicVar.zzaX().zze()) {
            zzicVar.zzaW().zzb().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        zzicVar.zzaV();
        if (zzae.zza()) {
            zzicVar.zzaW().zzb().zza("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        zzicVar.zzaX().d(atomicReference, 5000L, "get conditional user properties", new rzb(this, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zzpp.zzav(list);
        }
        zzicVar.zzaW().zzb().zzb("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final String zzac() {
        zzlu zzluVarZzl = this.a.zzs().zzl();
        if (zzluVarZzl != null) {
            return zzluVarZzl.zza;
        }
        return null;
    }

    public final String zzad() {
        zzlu zzluVarZzl = this.a.zzs().zzl();
        if (zzluVarZzl != null) {
            return zzluVarZzl.zzb;
        }
        return null;
    }

    public final String zzae() {
        zzic zzicVar = this.a;
        try {
            return zzlt.zza(zzicVar.zzaZ(), "google_app_id", zzicVar.zzq());
        } catch (IllegalStateException e) {
            zzicVar.zzaW().zzb().zzb("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return false;
    }

    public final void zzh() {
        zzic zzicVar = this.a;
        if (!(zzicVar.zzaZ().getApplicationContext() instanceof Application) || this.c == null) {
            return;
        }
        ((Application) zzicVar.zzaZ().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.a.zzaX().d(atomicReference, 15000L, "boolean test flag value", new rpb(1, this, atomicReference));
    }

    public final String zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.a.zzaX().d(atomicReference, 15000L, "String test flag value", new c0c(0, this, atomicReference));
    }

    public final Long zzk() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.a.zzaX().d(atomicReference, 15000L, "long test flag value", new brb(1, this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.a.zzaX().d(atomicReference, 15000L, "int test flag value", new i0c(this, atomicReference));
    }

    public final Double zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.a.zzaX().d(atomicReference, 15000L, "double test flag value", new k0c(this, atomicReference));
    }

    public final void zzn(Boolean bool) {
        a();
        this.a.zzaX().zzj(new m0c(this, bool));
    }

    public final void zzs(zzjl zzjlVar, boolean z) {
        boolean z2;
        boolean zZzr;
        boolean z3;
        zzjl zzjlVar2;
        a();
        int iZzb = zzjlVar.zzb();
        if (iZzb != -10) {
            zzji zzjiVarZzp = zzjlVar.zzp();
            zzji zzjiVar = zzji.UNINITIALIZED;
            if (zzjiVarZzp == zzjiVar && zzjlVar.zzq() == zzjiVar) {
                this.a.zzaW().zzh().zza("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.h) {
            try {
                z2 = false;
                if (zzjl.zzu(iZzb, this.n.zzb())) {
                    zZzr = zzjlVar.zzr(this.n);
                    zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
                    if (zzjlVar.zzo(zzjkVar) && !this.n.zzo(zzjkVar)) {
                        z2 = true;
                    }
                    zzjlVar = zzjlVar.zzt(this.n);
                    this.n = zzjlVar;
                    z3 = z2;
                    z2 = true;
                } else {
                    zZzr = false;
                    z3 = false;
                }
                zzjlVar2 = zzjlVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            this.a.zzaW().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzjlVar2);
            return;
        }
        long andIncrement = this.o.getAndIncrement();
        if (zZzr) {
            this.g.set(null);
            q0c q0cVar = new q0c(this, zzjlVar2, andIncrement, z3);
            if (!z) {
                this.a.zzaX().zzl(q0cVar);
                return;
            } else {
                zzg();
                q0cVar.run();
                return;
            }
        }
        t0c t0cVar = new t0c(this, zzjlVar2, andIncrement, z3);
        if (z) {
            zzg();
            t0cVar.run();
        } else if (iZzb == 30 || iZzb == -10) {
            this.a.zzaX().zzl(t0cVar);
        } else {
            this.a.zzaX().zzj(t0cVar);
        }
    }

    public final void zzy() {
        zzoh zzohVar;
        zzg();
        if (l().isEmpty() || this.i || (zzohVar = (zzoh) l().poll()) == null) {
            return;
        }
        zzic zzicVar = this.a;
        zzpp zzppVarZzk = zzicVar.zzk();
        MeasurementManagerFutures measurementManagerFuturesFrom = zzppVarZzk.f;
        if (measurementManagerFuturesFrom == null) {
            measurementManagerFuturesFrom = MeasurementManagerFutures.from(zzppVarZzk.a.zzaZ());
            zzppVarZzk.f = measurementManagerFuturesFrom;
        }
        if (measurementManagerFuturesFrom != null) {
            this.i = true;
            zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
            String str = zzohVar.zza;
            zzgsVarZzk.zzb("Registering trigger URI", str);
            ListenableFuture<j59> listenableFutureRegisterTriggerAsync = measurementManagerFuturesFrom.registerTriggerAsync(Uri.parse(str));
            if (listenableFutureRegisterTriggerAsync != null) {
                listenableFutureRegisterTriggerAsync.addListener(new en3.a(listenableFutureRegisterTriggerAsync, new gxb(this, zzohVar)), new cxb(this));
            } else {
                this.i = false;
                l().add(zzohVar);
            }
        }
    }
}
