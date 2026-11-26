package defpackage;

import com.google.android.gms.internal.measurement.zzlk;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v2c implements ThreadFactory {
    public static final /* synthetic */ v2c b = new v2c();

    @Override // java.util.concurrent.ThreadFactory
    public final /* synthetic */ Thread newThread(Runnable runnable) {
        Object obj = zzlk.j;
        return new Thread(runnable, "ProcessStablePhenotypeFlag");
    }
}
