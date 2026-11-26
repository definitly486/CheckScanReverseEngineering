package io.appmetrica.analytics.coreutils.internal.limitation;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTrimmer<T> implements Trimmer<T> {
    private final int a;
    private final String b;
    protected final PublicLogger mPublicLogger;

    public BaseTrimmer(int i, String str, PublicLogger publicLogger) {
        this.a = i;
        this.b = str;
        this.mPublicLogger = publicLogger;
    }

    public String getLogName() {
        return this.b;
    }

    public int getMaxSize() {
        return this.a;
    }
}
