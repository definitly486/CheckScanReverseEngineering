package androidx.room.concurrent;

import defpackage.o22;
import defpackage.ot8;

/* JADX INFO: loaded from: classes3.dex */
public final class ThreadLocal_jvmAndroidKt {
    public static /* synthetic */ void ThreadLocal$annotations() {
    }

    public static final <T> o22.a asContextElement(ThreadLocal<T> threadLocal, T t) {
        threadLocal.getClass();
        return new ot8(threadLocal, t);
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }
}
