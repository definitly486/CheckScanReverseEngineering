package defpackage;

import com.google.android.gms.internal.measurement.zzrn;
import com.google.android.gms.internal.measurement.zzvy;
import com.google.android.gms.internal.measurement.zzwq;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ggc extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Object initialValue() {
        zzrn.zza(Thread.currentThread());
        zzwq zzwqVar = new zzwq();
        Thread threadCurrentThread = Thread.currentThread();
        WeakHashMap weakHashMap = zzvy.c;
        synchronized (weakHashMap) {
            weakHashMap.put(threadCurrentThread, zzwqVar);
        }
        return zzwqVar;
    }
}
