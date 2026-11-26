package defpackage;

import com.google.android.gms.measurement.internal.zzgd;
import com.google.android.gms.measurement.internal.zznl;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class n4c extends zzgd {
    public final /* synthetic */ AtomicReference a;

    public n4c(zznl zznlVar, AtomicReference atomicReference) {
        this.a = atomicReference;
    }

    @Override // com.google.android.gms.measurement.internal.zzge
    public final void zze(List list) {
        AtomicReference atomicReference = this.a;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
