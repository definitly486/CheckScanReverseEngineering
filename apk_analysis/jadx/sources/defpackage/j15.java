package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzlr;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzom;
import com.google.android.gms.measurement.internal.zzr;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class j15 implements m2c {
    public final Object b;
    public final Serializable c;
    public final Object d;

    public j15(String str) {
        k15 gn2Var;
        ArrayList arrayList;
        this.b = str;
        ArrayList arrayList2 = new ArrayList();
        this.d = new ArrayList();
        char[] charArray = str.toCharArray();
        charArray.getClass();
        for (char c : charArray) {
            if (c == '#') {
                gn2Var = new gn2();
            } else if (c == '*') {
                zr4 zr4Var = new zr4();
                zr4Var.a = null;
                gn2Var = zr4Var;
            } else if (c == '?') {
                gn2Var = new to4();
            } else if (c == 'A') {
                gn2Var = new vc();
            } else if (c == 'H') {
                gn2Var = new vv3();
            } else if (c == 'L') {
                gn2Var = new cy4();
            } else if (c != 'U') {
                zr4 zr4Var2 = new zr4();
                zr4Var2.a = Character.valueOf(c);
                gn2Var = zr4Var2;
            } else {
                gn2Var = new t89();
            }
            if (gn2Var.a() && (arrayList = (ArrayList) this.d) != null) {
                arrayList.add(gn2Var);
            }
            arrayList2.add(gn2Var);
        }
        this.c = arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:11:0x0032 A[PHI: r8
      0x0032: PHI (r8v7 int) = (r8v1 int), (r8v0 int) binds: [B:9:0x0018, B:7:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:13:0x0068  */
    /* JADX WARN: Code duplicated, block: B:14:0x006b  */
    @Override // defpackage.m2c
    public void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        zzlr zzlrVar;
        zzlj zzljVar = (zzlj) this.b;
        zzljVar.zzg();
        zzom zzomVar = (zzom) this.d;
        if (i == 200 || i == 204) {
            if (th == null) {
                zzljVar.a.zzaW().zzk().zzb("[sgtm] Upload succeeded for row_id", Long.valueOf(zzomVar.zza));
                zzlrVar = zzlr.SUCCESS;
            } else {
                zzljVar.a.zzaW().zze().zzd("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar.zza), Integer.valueOf(i), th);
                if (Arrays.asList(((String) zzfy.zzt.zzb(null)).split(StringUtils.COMMA)).contains(String.valueOf(i))) {
                    zzlrVar = zzlr.BACKOFF;
                } else {
                    zzlrVar = zzlr.FAILURE;
                }
            }
        } else if (i == 304) {
            i = 304;
            if (th == null) {
                zzljVar.a.zzaW().zzk().zzb("[sgtm] Upload succeeded for row_id", Long.valueOf(zzomVar.zza));
                zzlrVar = zzlr.SUCCESS;
            } else {
                zzljVar.a.zzaW().zze().zzd("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar.zza), Integer.valueOf(i), th);
                if (Arrays.asList(((String) zzfy.zzt.zzb(null)).split(StringUtils.COMMA)).contains(String.valueOf(i))) {
                    zzlrVar = zzlr.BACKOFF;
                } else {
                    zzlrVar = zzlr.FAILURE;
                }
            }
        } else {
            zzljVar.a.zzaW().zze().zzd("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar.zza), Integer.valueOf(i), th);
            if (Arrays.asList(((String) zzfy.zzt.zzb(null)).split(StringUtils.COMMA)).contains(String.valueOf(i))) {
                zzlrVar = zzlr.BACKOFF;
            } else {
                zzlrVar = zzlr.FAILURE;
            }
        }
        AtomicReference atomicReference = (AtomicReference) this.c;
        final zznl zznlVarZzt = zzljVar.a.zzt();
        long j = zzomVar.zza;
        final zzaf zzafVar = new zzaf(j, zzlrVar.zza(), zzomVar.zzf);
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        final zzr zzrVarJ = zznlVarZzt.j(true);
        Preconditions.checkNotNull(zzrVarJ);
        zznlVarZzt.h(new Runnable() { // from class: k7c
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzr zzrVar = zzrVarJ;
                zzaf zzafVar2 = zzafVar;
                zznl zznlVar = zznlVarZzt;
                zzic zzicVar = zznlVar.a;
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    u4.e(zzicVar, "[sgtm] Discarding data. Failed to update batch upload status.");
                    return;
                }
                try {
                    zzgbVar.zzC(zzrVar, zzafVar2);
                    zznlVar.g();
                } catch (RemoteException e) {
                    zzicVar.zzaW().zzb().zzc("[sgtm] Failed to update batch upload status, rowId, exception", Long.valueOf(zzafVar2.zza), e);
                }
            }
        });
        zzljVar.a.zzaW().zzk().zzc("[sgtm] Updated status for row_id", Long.valueOf(j), zzlrVar);
        synchronized (atomicReference) {
            atomicReference.set(zzlrVar);
            atomicReference.notifyAll();
        }
    }

    public /* synthetic */ j15(zzlj zzljVar, AtomicReference atomicReference, zzom zzomVar) {
        this.b = zzljVar;
        this.c = atomicReference;
        this.d = zzomVar;
    }
}
