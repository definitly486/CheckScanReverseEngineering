package androidx.datastore.core;

import android.os.ParcelFileDescriptor;
import defpackage.jh2;
import defpackage.ki0;
import defpackage.ll3;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedCounter {
    public static final Factory Factory = new Factory(null);
    private static final NativeSharedCounter nativeSharedCounter = new NativeSharedCounter();
    private final long mappedAddress;

    private SharedCounter(long j) {
        this.mappedAddress = j;
    }

    public final int getValue() {
        return nativeSharedCounter.nativeGetCounterValue(this.mappedAddress);
    }

    public final int incrementAndGetValue() {
        return nativeSharedCounter.nativeIncrementAndGetCounterValue(this.mappedAddress);
    }

    public static final class Factory {
        public /* synthetic */ Factory(jh2 jh2Var) {
            this();
        }

        private final SharedCounter createCounterFromFd(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
            int fd = parcelFileDescriptor.getFd();
            if (getNativeSharedCounter$datastore_core_release().nativeTruncateFile(fd) != 0) {
                ki0.d("Failed to truncate counter file");
                return null;
            }
            long jNativeCreateSharedCounter = getNativeSharedCounter$datastore_core_release().nativeCreateSharedCounter(fd);
            if (jNativeCreateSharedCounter >= 0) {
                return new SharedCounter(jNativeCreateSharedCounter, null);
            }
            ki0.d("Failed to mmap counter file");
            return null;
        }

        public final SharedCounter create$datastore_core_release(ll3<? extends File> ll3Var) throws Throwable {
            ParcelFileDescriptor parcelFileDescriptorOpen;
            ll3Var.getClass();
            try {
                parcelFileDescriptorOpen = ParcelFileDescriptor.open(ll3Var.invoke(), 939524096);
                try {
                    SharedCounter sharedCounterCreateCounterFromFd = createCounterFromFd(parcelFileDescriptorOpen);
                    if (parcelFileDescriptorOpen != null) {
                        parcelFileDescriptorOpen.close();
                    }
                    return sharedCounterCreateCounterFromFd;
                } catch (Throwable th) {
                    th = th;
                    if (parcelFileDescriptorOpen != null) {
                        parcelFileDescriptorOpen.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptorOpen = null;
            }
        }

        public final NativeSharedCounter getNativeSharedCounter$datastore_core_release() {
            return SharedCounter.nativeSharedCounter;
        }

        public final void loadLib() {
            System.loadLibrary("datastore_shared_counter");
        }

        private Factory() {
        }
    }

    public /* synthetic */ SharedCounter(long j, jh2 jh2Var) {
        this(j);
    }
}
