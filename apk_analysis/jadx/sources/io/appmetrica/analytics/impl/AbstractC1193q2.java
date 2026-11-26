package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.appsetid.internal.AppSetIdRetriever;
import io.appmetrica.analytics.appsetid.internal.IAppSetIdRetriever;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1193q2 {
    public static final IAppSetIdRetriever a() {
        return ReflectionUtils.detectClassExists("com.google.android.gms.appset.AppSet") ? new AppSetIdRetriever() : new C0966h8();
    }
}
