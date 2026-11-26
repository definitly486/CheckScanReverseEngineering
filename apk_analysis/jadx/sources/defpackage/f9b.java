package defpackage;

import com.google.android.gms.internal.measurement.zzez;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class f9b implements ThreadFactory {
    public final ThreadFactory b = Executors.defaultThreadFactory();

    public f9b(zzez zzezVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.b.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }
}
