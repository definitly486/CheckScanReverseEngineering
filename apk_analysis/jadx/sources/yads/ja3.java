package yads;

import androidx.media3.common.PlaybackException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public class ja3 extends xc0 {
    public final int d;

    /* JADX WARN: Illegal instructions before constructor call */
    public ja3(int i, int i2, IOException iOException) {
        if (i == 2000 && i2 == 1) {
            i = PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED;
        }
        super(iOException, i);
        this.d = i2;
    }

    public static ja3 a(IOException iOException, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else {
            i2 = (message == null || !oj.a(message).matches("cleartext.*not permitted.*")) ? PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED : 2007;
        }
        return i2 == 2007 ? new ia3(iOException) : new ja3(i2, i, iOException);
    }

    public ja3() {
        super(2008);
        this.d = 1;
    }

    public ja3(String str, IOException iOException, int i) {
        super(str, iOException, i == 2000 ? PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED : i);
        this.d = 1;
    }
}
