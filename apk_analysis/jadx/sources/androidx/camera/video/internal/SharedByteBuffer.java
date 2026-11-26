package androidx.camera.video.internal;

import androidx.camera.core.Logger;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import defpackage.ah;
import defpackage.c9;
import defpackage.me0;
import defpackage.xg;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class SharedByteBuffer implements Closeable {
    private static final String TAG = "SharedByteBuffer";
    private final Object mCloseLock = new Object();
    private boolean mClosed = false;
    private final Pair<Executor, Runnable> mFinalCloseAction;
    private final int mShareId;
    private final ByteBuffer mSharedByteBuffer;
    private final AtomicInteger mSharedRefCount;

    private SharedByteBuffer(ByteBuffer byteBuffer, AtomicInteger atomicInteger, Pair<Executor, Runnable> pair, int i) {
        int i2;
        this.mSharedByteBuffer = byteBuffer;
        this.mSharedRefCount = atomicInteger;
        this.mFinalCloseAction = pair;
        this.mShareId = i;
        if (!Logger.isDebugEnabled(TAG) || (i2 = atomicInteger.get()) >= 1) {
            return;
        }
        Locale locale = Locale.US;
        xg.d(c9.d(i2, "Cannot create new instance of SharedByteBuffer with invalid ref count ", ". Ref count must be >= 1. [", toString(), "]"));
        throw null;
    }

    private void checkNotClosed(String str) {
        if (this.mClosed) {
            ah.f(me0.c("Cannot call ", str, " on a closed SharedByteBuffer."));
        }
    }

    private boolean closeInternal() {
        synchronized (this.mCloseLock) {
            try {
                if (this.mClosed) {
                    return false;
                }
                this.mClosed = true;
                int iDecrementAndGet = this.mSharedRefCount.decrementAndGet();
                if (Logger.isDebugEnabled(TAG)) {
                    if (iDecrementAndGet < 0) {
                        xg.d("Invalid ref count. close() should never produce a ref count below 0");
                        return false;
                    }
                    Locale locale = Locale.US;
                    Logger.d(TAG, c9.d(iDecrementAndGet, "Ref count decremented: ", " [", toString(), "]"));
                }
                if (iDecrementAndGet == 0) {
                    if (Logger.isDebugEnabled(TAG)) {
                        Locale locale2 = Locale.US;
                        Logger.d(TAG, "Final reference released. Running final close action. [" + toString() + "]");
                    }
                    try {
                        ((Executor) Preconditions.checkNotNull(this.mFinalCloseAction.first)).execute((Runnable) Preconditions.checkNotNull(this.mFinalCloseAction.second));
                    } catch (RejectedExecutionException e) {
                        Locale locale3 = Locale.US;
                        Logger.e(TAG, "Unable to execute final close action. [" + toString() + "]", e);
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static SharedByteBuffer newSharedInstance(ByteBuffer byteBuffer, Executor executor, Runnable runnable) {
        return new SharedByteBuffer(((ByteBuffer) Preconditions.checkNotNull(byteBuffer)).asReadOnlyBuffer(), new AtomicInteger(1), new Pair((Executor) Preconditions.checkNotNull(executor), (Runnable) Preconditions.checkNotNull(runnable)), System.identityHashCode(byteBuffer));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        closeInternal();
    }

    public void finalize() throws Throwable {
        try {
            if (closeInternal()) {
                Locale locale = Locale.US;
                Logger.w(TAG, "SharedByteBuffer closed by finalizer, but should have been closed manually with SharedByteBuffer.close() [" + toString() + "]");
            }
        } finally {
            super.finalize();
        }
    }

    public ByteBuffer get() {
        ByteBuffer byteBuffer;
        synchronized (this.mCloseLock) {
            checkNotClosed("get()");
            byteBuffer = this.mSharedByteBuffer;
        }
        return byteBuffer;
    }

    public SharedByteBuffer share() {
        int iIncrementAndGet;
        AtomicInteger atomicInteger;
        synchronized (this.mCloseLock) {
            checkNotClosed("share()");
            iIncrementAndGet = this.mSharedRefCount.incrementAndGet();
            atomicInteger = this.mSharedRefCount;
        }
        if (Logger.isDebugEnabled(TAG)) {
            if (iIncrementAndGet <= 1) {
                xg.d("Invalid ref count. share() should always produce a ref count of 2 or more.");
                return null;
            }
            Locale locale = Locale.US;
            Logger.d(TAG, c9.d(iIncrementAndGet, "Ref count incremented: ", " [", toString(), "]"));
        }
        return new SharedByteBuffer(this.mSharedByteBuffer.asReadOnlyBuffer(), atomicInteger, this.mFinalCloseAction, this.mShareId);
    }

    public String toString() {
        return String.format(Locale.US, "SharedByteBuffer[buf: %s, shareId: 0x%x, instanceId:0x%x]", this.mSharedByteBuffer, Integer.valueOf(this.mShareId), Integer.valueOf(System.identityHashCode(this)));
    }
}
