package com.google.android.gms.internal.measurement;

import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzlz;
import com.google.android.gms.internal.measurement.zzqt;
import com.google.android.gms.internal.measurement.zzqv;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzse;
import com.google.android.gms.internal.measurement.zzsv;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.fg;
import defpackage.i8c;
import defpackage.n39;
import defpackage.rcc;
import defpackage.rz5;
import defpackage.scc;
import defpackage.xr4;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqt {
    public static Boolean d;
    public final zzlk a;
    public final Uri b;
    public final String c;

    public zzqt(zzlk zzlkVar, String str, String str2, boolean z) {
        this.a = zzlkVar;
        this.c = str;
        zzrz zzrzVarZza = zzsa.zza(zzlkVar.zzc());
        zzrzVarZza.zzb("phenotype");
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4);
        sb.append("/");
        sb.append(str);
        sb.append(".pb");
        zzrzVarZza.zzc(sb.toString());
        this.b = zzrzVarZza.zzd();
    }

    public final scc a() {
        String strSubstring;
        i8c i8cVar;
        StrictMode.ThreadPolicy threadPolicy;
        zzlk zzlkVar = this.a;
        if (zzky.zzb(zzlkVar.zzc())) {
            return new scc(zzqv.zzi(), new rcc(3, 17));
        }
        Boolean boolValueOf = d;
        if (boolValueOf == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                boolValueOf = Boolean.valueOf(Process.isIsolated());
                d = boolValueOf;
            } else {
                try {
                    Object objInvoke = Process.class.getMethod("isIsolated", null).invoke(Process.class, null);
                    objInvoke.getClass();
                    boolValueOf = (Boolean) objInvoke;
                    d = boolValueOf;
                } catch (ReflectiveOperationException unused) {
                    boolValueOf = Boolean.FALSE;
                    d = boolValueOf;
                }
            }
        }
        if (boolValueOf.booleanValue()) {
            return new scc(zzqv.zzi(), new rcc(3, 18));
        }
        zzqn zzqnVarZzc = zzlkVar.zzd().zzc(false);
        zzabz zzabzVar = zzabz.FILE;
        ArrayMap arrayMap = zzlg.a;
        String str = this.c;
        int iIndexOf = str.indexOf("#");
        if (iIndexOf >= 0) {
            strSubstring = str.substring(0, iIndexOf);
        } else {
            if (str.contains("@")) {
                fg.c("Invalid package name: ".concat(str));
                return null;
            }
            strSubstring = str;
        }
        int iZzg = zzqnVarZzc.zzg(zzabzVar, strSubstring);
        if (iZzg != 0) {
            i8cVar = new i8c(null, new rcc(iZzg));
        } else {
            try {
                String strZzc = zzqnVarZzc.zzc();
                if (strZzc.isEmpty()) {
                    rz5 rz5VarZze = zzlkVar.zze();
                    if (rz5VarZze.b()) {
                        strZzc = ((ApplicationInfo) rz5VarZze.a()).dataDir;
                        String str2 = File.separator;
                        String strZzb = zzqnVarZzc.zzb();
                        StringBuilder sb = new StringBuilder(String.valueOf(strZzc).length() + String.valueOf(str2).length() + String.valueOf(strZzb).length());
                        sb.append(strZzc);
                        sb.append(str2);
                        sb.append(strZzb);
                        String string = sb.toString();
                        zzmz zzmzVar = new zzmz(zzqnVarZzc.zza(), str, "");
                        Uri.Builder builderScheme = new Uri.Builder().scheme("file");
                        String string2 = zzmzVar.zza().toString();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + string.length() + String.valueOf(str2).length() + string2.length());
                        sb2.append(str2);
                        sb2.append(string);
                        sb2.append(str2);
                        sb2.append(string2);
                        Uri uriBuild = builderScheme.appendEncodedPath(sb2.toString()).build();
                        threadPolicy = StrictMode.getThreadPolicy();
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                        try {
                            try {
                                try {
                                    i8c i8cVar2 = new i8c((zznd) zzlkVar.zzi().zza(uriBuild, new zzna(zzqnVarZzc.zzf().zza())), new rcc(5, 2));
                                    StrictMode.setThreadPolicy(threadPolicy);
                                    i8cVar = i8cVar2;
                                } catch (Throwable th) {
                                    StrictMode.setThreadPolicy(threadPolicy);
                                    throw th;
                                }
                            } catch (FileNotFoundException unused2) {
                                zzlz.zza(Level.INFO, zzlkVar.zzg(), "Shared storage file not found for %s", str);
                                i8cVar = new i8c(null, new rcc(8));
                                StrictMode.setThreadPolicy(threadPolicy);
                            }
                        } catch (zzaeh e) {
                            zzlz.zzb(Level.SEVERE, zzlkVar.zzg(), e, "Failed to parse snapshot from shared storage for %s", str);
                            i8cVar = new i8c(null, new rcc(9));
                            StrictMode.setThreadPolicy(threadPolicy);
                        }
                    } else {
                        zzlz.zza(Level.WARNING, zzlkVar.zzg(), "Unable to get GMS application info, using defaults.", new Object[0]);
                        i8cVar = new i8c(zznd.zza(), new rcc(3, 7));
                    }
                } else {
                    String str3 = File.separator;
                    String strZzb2 = zzqnVarZzc.zzb();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(strZzc).length() + String.valueOf(str3).length() + String.valueOf(strZzb2).length());
                    sb3.append(strZzc);
                    sb3.append(str3);
                    sb3.append(strZzb2);
                    String string3 = sb3.toString();
                    zzmz zzmzVar2 = new zzmz(zzqnVarZzc.zza(), str, "");
                    Uri.Builder builderScheme2 = new Uri.Builder().scheme("file");
                    String string4 = zzmzVar2.zza().toString();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(str3).length() + string3.length() + String.valueOf(str3).length() + string4.length());
                    sb4.append(str3);
                    sb4.append(string3);
                    sb4.append(str3);
                    sb4.append(string4);
                    Uri uriBuild2 = builderScheme2.appendEncodedPath(sb4.toString()).build();
                    threadPolicy = StrictMode.getThreadPolicy();
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                    i8c i8cVar3 = new i8c((zznd) zzlkVar.zzi().zza(uriBuild2, new zzna(zzqnVarZzc.zzf().zza())), new rcc(5, 2));
                    StrictMode.setThreadPolicy(threadPolicy);
                    i8cVar = i8cVar3;
                }
            } catch (Exception e2) {
                zzlz.zzb(Level.WARNING, zzlkVar.zzg(), e2, "Failed to read shared file for %s", str);
                i8cVar = new i8c(zznd.zza(), new rcc(3, 10));
            }
        }
        rcc rccVar = i8cVar.b;
        zznd zzndVar = i8cVar.a;
        if (zzndVar != null) {
            return new scc(zzndVar, rccVar);
        }
        try {
            return new scc((zzqv) zzlkVar.zzi().zza(this.b, zzss.zzb(zzqv.zzi())), new rcc(4, rccVar.b));
        } catch (IOException | RuntimeException unused3) {
            zzlz.zza(Level.INFO, zzlkVar.zzg(), "Unable to retrieve flag snapshot for %s, using defaults.", str);
            return b() ? new scc(zznd.zza(), new rcc(3, 16)) : new scc(zzqv.zzi(), new rcc(3, 11));
        }
    }

    public final boolean b() {
        return this.a.zzd().zzb(false, zzabz.FILE);
    }

    public final ListenableFuture zzc(final zzqv zzqvVar) {
        Callable callable = new Callable() { // from class: qcc
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzqv zzqvVar2 = zzqvVar;
                zzqt zzqtVar = this.b;
                zzlk zzlkVar = zzqtVar.a;
                zzse zzseVar = new zzse();
                try {
                    zzru zzruVarZzi = zzlkVar.zzi();
                    Uri uri = zzqtVar.b;
                    zzsv zzsvVarZzb = zzsv.zzb(zzqvVar2);
                    zzsvVarZzb.zzc(zzseVar);
                    return null;
                } catch (IOException | RuntimeException e) {
                    zzlz.zzb(Level.WARNING, zzlkVar.zzg(), e, "Failed to update snapshot for %s flags may be stale.", zzqtVar.c);
                    return null;
                }
            }
        };
        xr4 xr4VarZzg = this.a.zzg();
        n39 n39Var = new n39(callable);
        xr4VarZzg.execute(n39Var);
        return n39Var;
    }
}
