package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.os.Process;
import defpackage.dq;
import defpackage.xdc;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsv implements zzrt {
    public final zzafc a;
    public zzro[] b;

    public zzsv(zzafc zzafcVar) {
        this.a = zzafcVar;
    }

    public static zzsv zzb(zzafc zzafcVar) {
        return new zzsv(zzafcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final Object zza(zzrs zzrsVar) throws IOException {
        Uri uriZzb = zzrsVar.zzb();
        AtomicLong atomicLong = xdc.a;
        int iMyPid = Process.myPid();
        long id = Thread.currentThread().getId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long andIncrement = xdc.a.getAndIncrement();
        int length = String.valueOf(iMyPid).length();
        int length2 = String.valueOf(id).length();
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 1 + String.valueOf(jCurrentTimeMillis).length() + 1 + String.valueOf(andIncrement).length());
        sb.append(".mobstore_tmp-");
        sb.append(iMyPid);
        sb.append("-");
        sb.append(id);
        dq.d(sb, "-", jCurrentTimeMillis, "-");
        sb.append(andIncrement);
        Uri uriBuild = uriZzb.buildUpon().path(String.valueOf(uriZzb.getPath()).concat(sb.toString())).build();
        List listZzd = zzrsVar.zzd(zzrsVar.zza().zzj(uriBuild));
        zzro[] zzroVarArr = this.b;
        if (zzroVarArr != null) {
            zzroVarArr[0].zza(listZzd);
        }
        try {
            OutputStream outputStream = (OutputStream) listZzd.get(0);
            try {
                this.a.zzce(outputStream);
                zzro[] zzroVarArr2 = this.b;
                if (zzroVarArr2 != null) {
                    zzroVarArr2[0].zzb();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                zzrsVar.zza().zzl(uriBuild, zzrsVar.zzb());
                return null;
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            try {
                zzrsVar.zza().zzk(uriBuild);
            } catch (FileNotFoundException unused) {
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            throw new IOException(e);
        }
    }

    public final zzsv zzc(zzro... zzroVarArr) {
        this.b = zzroVarArr;
        return this;
    }
}
