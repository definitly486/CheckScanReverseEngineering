package com.google.android.gms.internal.measurement;

import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaas extends zzaag {
    public static final Set f;
    public static final zzzq g;
    public static final zzaaq h;
    public static final /* synthetic */ int zza = 0;
    public final String b;
    public final Level c;
    public final Set d;
    public final zzzq e;

    static {
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(zzxx.zza, zzyw.zza, zzyx.zza)));
        f = setUnmodifiableSet;
        zzzq zzzqVarZzc = zzzt.zza(setUnmodifiableSet).zzc();
        g = zzzqVarZzc;
        h = new zzaaq(Level.ALL, setUnmodifiableSet, zzzqVarZzc);
    }

    public /* synthetic */ zzaas(String str, Level level, Set set, zzzq zzzqVar) {
        super(str);
        this.b = zzaal.zza("", str, true);
        this.c = level;
        this.d = set;
        this.e = zzzqVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    public static void a(zzzd zzzdVar, String str, Level level, Set set, zzzq zzzqVar) {
        StringBuilder sb;
        String string;
        Boolean bool = (Boolean) zzzdVar.zzl().zzd(zzyx.zza);
        if (bool == null || !bool.booleanValue()) {
            zzaaa zzaaaVarZzh = zzaaa.zzh(zzaad.zzj(), zzzdVar.zzl());
            boolean z = zzzdVar.zze().intValue() < level.intValue();
            if (z) {
                sb = new StringBuilder();
                if (zzze.zza(2, zzzdVar.zzg(), sb)) {
                    sb.append(" ");
                }
                if (z) {
                    zzyy.zza(zzzdVar, sb);
                    Set set2 = zzaae.a;
                    zzzc zzzcVar = new zzzc("[CONTEXT ", " ]", sb);
                    zzaaaVarZzh.zza(zzzqVar, zzzcVar);
                    zzzcVar.zzb();
                } else {
                    zzyy.zza(zzzdVar, sb);
                    Set set3 = zzaae.a;
                    zzzc zzzcVar2 = new zzzc("[CONTEXT ", " ]", sb);
                    zzaaaVarZzh.zza(zzzqVar, zzzcVar2);
                    zzzcVar2.zzb();
                }
                string = sb.toString();
            } else {
                Set set4 = zzaae.a;
                if (zzzdVar.zzh() == null && zzaaaVarZzh.zzb() <= set.size() && set.containsAll(zzaaaVarZzh.zzc())) {
                    string = zzzh.zza(zzzdVar.zzj());
                } else {
                    sb = new StringBuilder();
                    if (zzze.zza(2, zzzdVar.zzg(), sb)) {
                        sb.append(" ");
                    }
                    if (z || zzzdVar.zzh() == null) {
                        zzyy.zza(zzzdVar, sb);
                        Set set5 = zzaae.a;
                        zzzc zzzcVar3 = new zzzc("[CONTEXT ", " ]", sb);
                        zzaaaVarZzh.zza(zzzqVar, zzzcVar3);
                        zzzcVar3.zzb();
                    } else {
                        sb.append("(REDACTED) ");
                        sb.append(zzzdVar.zzh().zzb());
                    }
                    string = sb.toString();
                }
            }
            Throwable th = (Throwable) zzzdVar.zzl().zzd(zzxx.zza);
            int iZzb = zzaal.zzb(zzzdVar.zze());
            if (iZzb == 2) {
                Log.v(str, string, th);
                return;
            }
            if (iZzb == 3) {
                Log.d(str, string, th);
                return;
            }
            if (iZzb == 4) {
                Log.i(str, string, th);
            } else if (iZzb != 5) {
                Log.e(str, string, th);
            } else {
                Log.w(str, string, th);
            }
        }
    }

    public static zzaaq zze() {
        return h;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean zzb(Level level) {
        int iZzb = zzaal.zzb(level);
        return Log.isLoggable(this.b, iZzb) || Log.isLoggable(TtmlNode.COMBINE_ALL, iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void zzc(zzzd zzzdVar) {
        a(zzzdVar, this.b, this.c, this.d, this.e);
    }
}
