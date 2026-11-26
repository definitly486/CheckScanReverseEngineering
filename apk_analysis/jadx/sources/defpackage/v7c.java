package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzlf;
import com.google.android.gms.internal.measurement.zzlg;
import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzom;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzpr;
import com.google.common.collect.l;
import com.google.common.collect.x;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v7c implements zzom {
    public final String b;
    public final zzph c;

    public v7c(String str, zzph zzphVar) {
        this.b = str;
        this.c = zzphVar;
    }

    public abstract Object a();

    public abstract Object b(String str);

    public abstract Object c(Object obj);

    @Override // com.google.android.gms.internal.measurement.zzom, defpackage.kd8
    /* JADX INFO: renamed from: get */
    public final Object get2() {
        zzpg zzpgVarZza;
        Object objA;
        String strZza;
        final zzlk zzlkVarZzb = zzlk.zzb();
        n9c n9cVar = (n9c) this;
        int i = n9cVar.d;
        if (i == -1 || i < n9cVar.e.zza()) {
            synchronized (n9cVar) {
                try {
                    int i2 = n9cVar.d;
                    Object objC = null;
                    if (i2 == -1) {
                        zzlk.zzl();
                        zzlkVarZzb.getClass();
                        zzpgVarZza = n9cVar.c.zza(zzlkVarZzb, "");
                        n9cVar.e = zzpgVarZza.f;
                    } else {
                        zzpgVarZza = null;
                    }
                    int iZza = n9cVar.e.zza();
                    if (i2 < iZza) {
                        zzlk.zzl();
                        zzlkVarZzb.getClass();
                        rz5 rz5VarZza = zzlf.zza(zzlkVarZzb.zzc());
                        if (!rz5VarZza.b() || (strZza = ((zzle) rz5VarZza.a()).zza(zzlg.zza("com.google.android.gms.measurement"), null, null, n9cVar.b)) == null) {
                            objA = null;
                        } else {
                            try {
                                objA = n9cVar.b(strZza);
                            } catch (IOException | IllegalArgumentException e) {
                                Log.e("FilePhenotypeFlags", "Invalid Phenotype flag value for flag ".concat(n9cVar.b), e);
                                objA = null;
                            }
                        }
                        if (zzpgVarZza == null) {
                            zzpgVarZza = n9cVar.c.zza(zzlkVarZzb, "");
                        }
                        final String str = zzpgVarZza.c;
                        int i3 = 1;
                        if (!zzlkVarZzb.zzc().getPackageName().equals("com.android.vending") && !str.startsWith("com.google.android.gms.measurement#")) {
                            ListenableFuture<?> listenableFutureSubmit = zzlkVarZzb.zzg().submit(new Runnable() { // from class: tbc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Context contextZzc = zzlkVarZzb.zzc();
                                    x xVar = zzpp.c;
                                    if (xVar == null) {
                                        synchronized (zzpp.b) {
                                            xVar = zzpp.c;
                                            if (xVar == null) {
                                                l.a aVarA = l.a();
                                                try {
                                                    String[] list = contextZzc.getAssets().list("phenotype");
                                                    if (list != null) {
                                                        for (String str2 : list) {
                                                            if (str2.endsWith("_package_metadata.binarypb")) {
                                                                try {
                                                                    AssetManager assets = contextZzc.getAssets();
                                                                    StringBuilder sb = new StringBuilder(str2.length() + 10);
                                                                    sb.append("phenotype/");
                                                                    sb.append(str2);
                                                                    InputStream inputStreamOpen = assets.open(sb.toString());
                                                                    try {
                                                                        zzpp zzppVar = new zzpp(contextZzc, zzpr.zzh(inputStreamOpen, zzadf.zza()));
                                                                        aVarA.b(zzppVar.a, zzppVar);
                                                                        if (inputStreamOpen != null) {
                                                                            inputStreamOpen.close();
                                                                        }
                                                                    } catch (Throwable th) {
                                                                        if (inputStreamOpen != null) {
                                                                            try {
                                                                                inputStreamOpen.close();
                                                                            } catch (Throwable th2) {
                                                                                th.addSuppressed(th2);
                                                                            }
                                                                        }
                                                                        throw th;
                                                                    }
                                                                } catch (zzaeh e2) {
                                                                    StringBuilder sb2 = new StringBuilder(str2.length() + 45);
                                                                    sb2.append("Unable to read Phenotype PackageMetadata for ");
                                                                    sb2.append(str2);
                                                                    Log.e("PackageInfo", sb2.toString(), e2);
                                                                }
                                                            }
                                                        }
                                                    }
                                                } catch (IOException e3) {
                                                    Log.e("PackageInfo", "Unable to read Phenotype PackageMetadata from assets.", e3);
                                                }
                                                x xVarA = aVarA.a(true);
                                                zzpp.c = xVarA;
                                                xVar = xVarA;
                                            }
                                        }
                                    }
                                    String str3 = str;
                                    if (xVar.containsKey(str3)) {
                                        return;
                                    }
                                    StringBuilder sb3 = new StringBuilder(str3.length() + 173);
                                    sb3.append("Config package ");
                                    sb3.append(str3);
                                    sb3.append(" cannot use FILE backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags.");
                                    Log.e("FilePhenotypeFlags", sb3.toString());
                                }
                            });
                            listenableFutureSubmit.addListener(new sxb(listenableFutureSubmit, i3), jn2.INSTANCE);
                        }
                        Object obj = zzpgVarZza.a().d.get(n9cVar.b);
                        if (obj != null) {
                            try {
                                objC = n9cVar.c(obj);
                            } catch (IOException | ClassCastException e2) {
                                Log.e("FilePhenotypeFlags", "Invalid Phenotype flag value for flag ".concat(n9cVar.b), e2);
                            }
                        }
                        if (true != rz5VarZza.b()) {
                            objA = objC;
                        }
                        if (objA == null) {
                            objA = n9cVar.a();
                        }
                        if (objA != null) {
                            n9cVar.e(objA);
                            n9cVar.d = iZza;
                        }
                    } else {
                        objA = n9cVar.d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            objA = n9cVar.d();
        }
        objA.getClass();
        return objA;
    }
}
