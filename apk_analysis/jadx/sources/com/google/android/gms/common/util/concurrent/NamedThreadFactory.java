package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.koa;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public class NamedThreadFactory implements ThreadFactory {
    public final String b;
    public final ThreadFactory c = Executors.defaultThreadFactory();

    public NamedThreadFactory(String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.c.newThread(new koa(runnable, 0));
        threadNewThread.setName(this.b);
        return threadNewThread;
    }
}
