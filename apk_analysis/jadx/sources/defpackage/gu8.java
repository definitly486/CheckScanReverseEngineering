package defpackage;

import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public final class gu8 {
    public static long a = -1;
    public static final byte[] b = new byte[10];
    public static final SecureRandom c = new SecureRandom();
    public static final ReentrantLock d = new ReentrantLock();
    public static qb6 e;

    public static UUID a() {
        qb6 qb6Var = e;
        long jCurrentTimeMillis = qb6Var != null ? qb6Var.currentTimeMillis() : System.currentTimeMillis();
        ReentrantLock reentrantLock = d;
        reentrantLock.lock();
        try {
            long j = a;
            byte[] bArr = b;
            if (jCurrentTimeMillis == j) {
                boolean z = true;
                for (int i = 9; -1 < i; i--) {
                    if (z) {
                        byte b2 = bArr[i];
                        byte b3 = (byte) (b2 + 1);
                        z = b2 == -1;
                        bArr[i] = b3;
                    }
                }
                if (z) {
                    throw new IllegalStateException("overflow on same millisecond");
                }
            } else {
                a = jCurrentTimeMillis;
                c.nextBytes(bArr);
            }
            UUID uuid = new UUID((((jCurrentTimeMillis << 16) | ((long) (((bArr[0] & 255) << 8) + (bArr[1] & 255)))) & (-61441)) | 28672, ((((b(2, bArr) << 32) + ((b(6, bArr) << 32) >>> 32)) << 2) >>> 2) | Long.MIN_VALUE);
            reentrantLock.unlock();
            return uuid;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static long b(int i, byte[] bArr) {
        return (bArr[i] << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }
}
