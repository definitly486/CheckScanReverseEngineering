package com.google.android.gms.common.providers;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class PooledExecutorsProvider {
    public static a a;

    public interface PooledExecutorFactory {
        @Deprecated
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    @Deprecated
    public static synchronized PooledExecutorFactory getInstance() {
        a aVar;
        aVar = a;
        if (aVar == null) {
            aVar = new a();
            a = aVar;
        }
        return aVar;
    }
}
