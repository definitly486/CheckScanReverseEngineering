package defpackage;

import com.google.android.gms.internal.base.zao;
import com.google.android.gms.internal.measurement.zzahk;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zn1 implements zao, rxa {
    public static final /* synthetic */ zn1 b = new zn1();

    public static final String a(String str) {
        if (str != null) {
            g17 g17Var = yn1.a;
            if (yn1.a.e(str)) {
                return str;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.base.zao
    public ExecutorService zaa(int i, int i2) {
        return zab(4, Executors.defaultThreadFactory(), 2);
    }

    @Override // com.google.android.gms.internal.base.zao
    public ExecutorService zab(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.zao
    public ExecutorService zac(ThreadFactory threadFactory, int i) {
        return zab(1, threadFactory, 1);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzahk.zzb());
    }
}
