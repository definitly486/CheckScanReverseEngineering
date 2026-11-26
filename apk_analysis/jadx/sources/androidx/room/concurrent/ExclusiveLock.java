package androidx.room.concurrent;

import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes3.dex */
public final class ExclusiveLock {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, ReentrantLock> threadLocksMap = new LinkedHashMap();
    private final FileLock fileLock;
    private final ReentrantLock threadLock;

    public ExclusiveLock(String str, boolean z) {
        str.getClass();
        Companion companion = Companion;
        this.threadLock = companion.getThreadLock(str);
        this.fileLock = z ? companion.getFileLock(str) : null;
    }

    public final <T> T withLock(ll3<? extends T> ll3Var, nl3 nl3Var) {
        ll3Var.getClass();
        nl3Var.getClass();
        this.threadLock.lock();
        boolean z = false;
        try {
            FileLock fileLock = this.fileLock;
            if (fileLock != null) {
                fileLock.lock();
            }
            z = true;
            try {
                T tInvoke = ll3Var.invoke();
                FileLock fileLock2 = this.fileLock;
                if (fileLock2 != null) {
                    fileLock2.unlock();
                }
                this.threadLock.unlock();
                return tInvoke;
            } catch (Throwable th) {
                FileLock fileLock3 = this.fileLock;
                if (fileLock3 != null) {
                    fileLock3.unlock();
                }
                throw th;
            }
        } catch (Throwable th2) {
            try {
                if (z) {
                    throw th2;
                }
                nl3Var.invoke(th2);
                throw new KotlinNothingValueException();
            } catch (Throwable th3) {
                this.threadLock.unlock();
                throw th3;
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final FileLock getFileLock(String str) {
            return new FileLock(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ReentrantLock getThreadLock(String str) {
            ReentrantLock reentrantLock;
            synchronized (this) {
                try {
                    Map map = ExclusiveLock.threadLocksMap;
                    Object reentrantLock2 = map.get(str);
                    if (reentrantLock2 == null) {
                        reentrantLock2 = new ReentrantLock();
                        map.put(str, reentrantLock2);
                    }
                    reentrantLock = (ReentrantLock) reentrantLock2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return reentrantLock;
        }

        private Companion() {
        }
    }
}
