package androidx.room.concurrent;

import defpackage.ll3;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class ReentrantLockKt {
    public static final <T> T withLock(ReentrantLock reentrantLock, ll3<? extends T> ll3Var) {
        reentrantLock.getClass();
        ll3Var.getClass();
        reentrantLock.lock();
        try {
            return ll3Var.invoke();
        } finally {
            reentrantLock.unlock();
        }
    }
}
