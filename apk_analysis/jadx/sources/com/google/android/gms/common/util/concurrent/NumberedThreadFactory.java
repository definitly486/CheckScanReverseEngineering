package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.koa;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class NumberedThreadFactory implements ThreadFactory {
    public final String b;
    public final AtomicInteger c = new AtomicInteger();
    public final ThreadFactory d = Executors.defaultThreadFactory();

    public NumberedThreadFactory(String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.d.newThread(new koa(runnable, 0));
        int andIncrement = this.c.getAndIncrement();
        int length = String.valueOf(andIncrement).length();
        String str = this.b;
        StringBuilder sb = new StringBuilder(str.length() + 1 + length + 1);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        threadNewThread.setName(sb.toString());
        return threadNewThread;
    }
}
