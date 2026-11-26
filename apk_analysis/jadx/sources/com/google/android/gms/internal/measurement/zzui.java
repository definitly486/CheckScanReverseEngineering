package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.en3;
import defpackage.ix5;
import defpackage.jn2;
import defpackage.ks;
import defpackage.lp7;
import defpackage.nec;
import defpackage.rz5;
import defpackage.t13;
import defpackage.u24;
import defpackage.yu4;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class zzui implements zzuv {
    public final String a;
    public final ListenableFuture b;
    public final zztv c;
    public final lp7 d;
    public final zzru e;
    public final rz5 f;
    public final zzwb g;
    public final Object h = new Object();
    public final t13 i = new t13();
    public ListenableFuture j = null;

    public zzui(String str, u24 u24Var, zzve zzveVar, Executor executor, zzru zzruVar, rz5 rz5Var, zzwb zzwbVar) {
        this.a = str;
        this.b = en3.Y(u24Var);
        this.c = zzveVar;
        this.d = new lp7(executor);
        this.e = zzruVar;
        this.f = rz5Var;
        this.g = zzwbVar;
    }

    public static zzuw zza() {
        return nec.a;
    }

    public final Object a(Uri uri) throws IOException {
        zztv zztvVar = this.c;
        String str = this.a;
        zzru zzruVar = this.e;
        try {
            try {
                zzwb zzwbVar = this.g;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
                sb.append("Read ");
                sb.append(str);
                zzwi zzwiVarZza = zzwbVar.zza(sb.toString(), zzxd.zza);
                try {
                    InputStream inputStream = (InputStream) zzruVar.zza(uri, zzst.zzb());
                    try {
                        zzafc zzafcVar = (zzafc) ((zzve) zztvVar).zzb().zzcj().zza(inputStream, ((zzve) zztvVar).zzc());
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        zzwiVarZza.close();
                        return zzafcVar;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        zzwiVarZza.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (FileNotFoundException e) {
                if (zzruVar.zzc(uri)) {
                    throw e;
                }
                return zztvVar.zza();
            }
        } catch (IOException e2) {
            throw zzux.zza(zzruVar, uri, e2, str);
        }
    }

    public final void b(Uri uri, Object obj) throws IOException {
        String str = this.a;
        zzru zzruVar = this.e;
        Uri uriZza = zzuz.zza(uri, ".tmp");
        try {
            zzwb zzwbVar = this.g;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
            sb.append("Write ");
            sb.append(str);
            zzwi zzwiVarZza = zzwbVar.zza(sb.toString(), zzxd.zza);
            try {
                zzse zzseVar = new zzse();
                try {
                    zzsw zzswVarZzb = zzsw.zzb();
                    zzswVarZzb.zzc(zzseVar);
                    OutputStream outputStream = (OutputStream) zzruVar.zza(uriZza, zzswVarZzb);
                    try {
                        ((zzafc) obj).zzce(outputStream);
                        zzseVar.zzc();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        zzwiVarZza.close();
                        zzruVar.zzd(uriZza, uri);
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
                } catch (IOException e) {
                    throw zzux.zza(zzruVar, uri, e, str);
                }
            } catch (Throwable th3) {
                try {
                    zzwiVarZza.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e2) {
            if (zzruVar.zzc(uriZza)) {
                try {
                    zzruVar.zzb(uriZza);
                } catch (IOException e3) {
                    e2.addSuppressed(e3);
                }
            }
            throw e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001c A[Catch: all -> 0x0013, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:13:0x0016, B:14:0x0018, B:16:0x001c, B:17:0x0033), top: B:24:0x0003, inners: #0 }] */
    @Override // com.google.android.gms.internal.measurement.zzuv
    public final ListenableFuture zzb(ks ksVar, Executor executor, zzuu zzuuVar) {
        ListenableFuture listenableFutureY;
        synchronized (this.h) {
            ListenableFuture listenableFuture = this.j;
            if (listenableFuture == null || !listenableFuture.isDone()) {
                listenableFutureY = this.j;
                if (listenableFutureY == null) {
                    listenableFutureY = en3.Y(this.i.a(zzxa.zzb(new ix5(this)), this.d));
                    this.j = listenableFutureY;
                }
            } else {
                try {
                    en3.V(this.j);
                } catch (ExecutionException unused) {
                    this.j = null;
                }
                listenableFutureY = this.j;
                if (listenableFutureY == null) {
                    listenableFutureY = en3.Y(this.i.a(zzxa.zzb(new ix5(this)), this.d));
                    this.j = listenableFutureY;
                }
            }
            throw th;
        }
        t13 t13Var = this.i;
        yu4 yu4Var = new yu4();
        yu4Var.b = this;
        yu4Var.c = listenableFutureY;
        yu4Var.d = ksVar;
        yu4Var.e = executor;
        return t13Var.a(zzxa.zzb(yu4Var), jn2.INSTANCE);
    }

    @Override // com.google.android.gms.internal.measurement.zzuv
    public final String zzc() {
        return this.a;
    }
}
