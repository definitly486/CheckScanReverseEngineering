package yads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Message;
import defpackage.i29;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
public final class fl {
    public static final ArrayDeque g = new ArrayDeque();
    public static final Object h = new Object();
    public final MediaCodec a;
    public final HandlerThread b;
    public dl c;
    public final AtomicReference d;
    public final m50 e;
    public boolean f;

    public fl(MediaCodec mediaCodec, HandlerThread handlerThread) {
        m50 m50Var = new m50();
        this.a = mediaCodec;
        this.b = handlerThread;
        this.e = m50Var;
        this.d = new AtomicReference();
    }

    public static el b() {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new el();
                }
                return (el) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(int i, ca0 ca0Var, long j) {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
        el elVarB = b();
        elVarB.a = i;
        elVarB.b = 0;
        elVarB.d = j;
        elVarB.e = 0;
        MediaCodec.CryptoInfo cryptoInfo = elVarB.c;
        cryptoInfo.numSubSamples = ca0Var.f;
        int[] iArr = ca0Var.d;
        int[] iArrCopyOf = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArrCopyOf == null || iArrCopyOf.length < iArr.length) {
                iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, iArr.length);
            }
        }
        cryptoInfo.numBytesOfClearData = iArrCopyOf;
        int[] iArr2 = ca0Var.e;
        int[] iArrCopyOf2 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 != null) {
            if (iArrCopyOf2 == null || iArrCopyOf2.length < iArr2.length) {
                iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
            } else {
                System.arraycopy(iArr2, 0, iArrCopyOf2, 0, iArr2.length);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArrCopyOf2;
        byte[] bArr = ca0Var.b;
        byte[] bArrCopyOf = cryptoInfo.key;
        if (bArr != null) {
            if (bArrCopyOf == null || bArrCopyOf.length < bArr.length) {
                bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArrCopyOf, 0, bArr.length);
            }
        }
        bArrCopyOf.getClass();
        cryptoInfo.key = bArrCopyOf;
        byte[] bArr2 = ca0Var.a;
        byte[] bArrCopyOf2 = cryptoInfo.iv;
        if (bArr2 != null) {
            if (bArrCopyOf2 == null || bArrCopyOf2.length < bArr2.length) {
                bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArrCopyOf2, 0, bArr2.length);
            }
        }
        bArrCopyOf2.getClass();
        cryptoInfo.iv = bArrCopyOf2;
        cryptoInfo.mode = ca0Var.c;
        if (u56.a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(ca0Var.g, ca0Var.h));
        }
        this.c.obtainMessage(1, elVarB).sendToTarget();
    }

    public final void a() {
        if (this.f) {
            try {
                dl dlVar = this.c;
                dlVar.getClass();
                dlVar.removeCallbacksAndMessages(null);
                m50 m50Var = this.e;
                synchronized (m50Var) {
                    m50Var.a = false;
                }
                dl dlVar2 = this.c;
                dlVar2.getClass();
                dlVar2.obtainMessage(2).sendToTarget();
                this.e.a();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                i29.a(e);
            }
        }
    }

    public final void a(Message message) {
        int i = message.what;
        el elVar = null;
        if (i == 0) {
            el elVar2 = (el) message.obj;
            try {
                this.a.queueInputBuffer(elVar2.a, 0, elVar2.b, elVar2.d, elVar2.e);
            } catch (RuntimeException e) {
                AtomicReference atomicReference = this.d;
                while (!atomicReference.compareAndSet(null, e) && atomicReference.get() == null) {
                }
            }
            elVar = elVar2;
        } else if (i == 1) {
            el elVar3 = (el) message.obj;
            int i2 = elVar3.a;
            MediaCodec.CryptoInfo cryptoInfo = elVar3.c;
            long j = elVar3.d;
            int i3 = elVar3.e;
            try {
                synchronized (h) {
                    this.a.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                }
            } catch (RuntimeException e2) {
                AtomicReference atomicReference2 = this.d;
                while (!atomicReference2.compareAndSet(null, e2) && atomicReference2.get() == null) {
                }
            }
            elVar = elVar3;
        } else if (i != 2) {
            AtomicReference atomicReference3 = this.d;
            IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(i));
            while (!atomicReference3.compareAndSet(null, illegalStateException) && atomicReference3.get() == null) {
            }
        } else {
            this.e.d();
        }
        if (elVar != null) {
            a(elVar);
        }
    }

    public static void a(el elVar) {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            arrayDeque.add(elVar);
        }
    }
}
