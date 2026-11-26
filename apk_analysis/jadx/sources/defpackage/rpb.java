package defpackage;

import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class rpb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rpb(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj2;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                gub gubVar = (gub) this.d;
                synchronized (gubVar.c) {
                    try {
                        OnCompleteListener onCompleteListener = gubVar.d;
                        if (onCompleteListener != null) {
                            onCompleteListener.onComplete((Task) this.c);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                AtomicReference atomicReference = (AtomicReference) this.c;
                synchronized (atomicReference) {
                    try {
                        try {
                            zzlj zzljVar = (zzlj) this.d;
                            atomicReference.set(Boolean.valueOf(zzljVar.a.zzc().zzp(zzljVar.a.zzv().zzj(), zzfy.zzaa)));
                            ((AtomicReference) this.c).notify();
                        } catch (Throwable th2) {
                            ((AtomicReference) this.c).notify();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                return;
        }
    }
}
