package defpackage;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class c6c implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzr e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ zznl g;

    public c6c(zznl zznlVar, AtomicReference atomicReference, String str, String str2, zzr zzrVar, boolean z) {
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
        this.e = zzrVar;
        this.f = z;
        this.g = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.b;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.g;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zznlVar.a.zzaW().zzb().zzd("(legacy) Failed to get user properties; not connected to service", null, this.c, this.d);
                        atomicReference2.set(Collections.EMPTY_LIST);
                        atomicReference2.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(null)) {
                        zzr zzrVar = this.e;
                        Preconditions.checkNotNull(zzrVar);
                        atomicReference2.set(zzgbVar.zzp(this.c, this.d, this.f, zzrVar));
                    } else {
                        atomicReference2.set(zzgbVar.zzq(null, this.c, this.d, this.f));
                    }
                    zznlVar.g();
                    atomicReference = this.b;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.g.a.zzaW().zzb().zzd("(legacy) Failed to get user properties; remote exception", null, this.c, e);
                    this.b.set(Collections.EMPTY_LIST);
                    atomicReference = this.b;
                }
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
