package androidx.lifecycle;

import java.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
public final class Api26Impl {
    public static final Api26Impl INSTANCE = new Api26Impl();

    private Api26Impl() {
    }

    public final long toMillis(Duration duration) {
        duration.getClass();
        return duration.toMillis();
    }
}
