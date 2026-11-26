package yads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ka4 {
    public static final AtomicBoolean a = new AtomicBoolean(false);

    public static final void a() {
        if (a.compareAndSet(false, true)) {
            jn3.b("Yandex Mobile Ads 8.2.0 initialized successfully", new Object[0]);
        }
    }
}
