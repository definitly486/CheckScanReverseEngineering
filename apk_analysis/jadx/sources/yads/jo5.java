package yads;

import android.os.SystemClock;
import androidx.media3.exoplayer.util.SntpClient;
import androidx.tracing.Trace;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class jo5 {
    public static final Object a = new Object();
    public static final Object b = new Object();
    public static boolean c;
    public static long d;

    public static long a() throws UnknownHostException {
        synchronized (b) {
        }
        InetAddress byName = InetAddress.getByName(SntpClient.DEFAULT_NTP_HOST);
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = 27;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jCurrentTimeMillis == 0) {
                Arrays.fill(bArr, 40, 48, (byte) 0);
            } else {
                long j = jCurrentTimeMillis / 1000;
                long j2 = jCurrentTimeMillis - (j * 1000);
                long j3 = j + 2208988800L;
                bArr[40] = (byte) (j3 >> 24);
                bArr[41] = (byte) (j3 >> 16);
                bArr[42] = (byte) (j3 >> 8);
                bArr[43] = (byte) j3;
                long j4 = (j2 * 4294967296L) / 1000;
                bArr[44] = (byte) (j4 >> 24);
                bArr[45] = (byte) (j4 >> 16);
                bArr[46] = (byte) (j4 >> 8);
                bArr[47] = (byte) (Math.random() * 255.0d);
            }
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j5 = (jElapsedRealtime2 - jElapsedRealtime) + jCurrentTimeMillis;
            byte b2 = bArr[0];
            int i = bArr[1] & 255;
            long jB = b(bArr, 24);
            long jB2 = b(bArr, 32);
            long jB3 = b(bArr, 40);
            a((byte) ((b2 >> 6) & 3), (byte) (b2 & 7), i, jB3);
            long j6 = (j5 + (((jB3 - j5) + (jB2 - jB)) / 2)) - jElapsedRealtime2;
            datagramSocket.close();
            return j6;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public static long b(byte[] bArr, int i) {
        long jA = a(bArr, i);
        long jA2 = a(bArr, i + 4);
        if (jA == 0 && jA2 == 0) {
            return 0L;
        }
        return ((jA2 * 1000) / 4294967296L) + ((jA - 2208988800L) * 1000);
    }

    public static long a(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & Trace.MAX_TRACE_LABEL_LENGTH) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & Trace.MAX_TRACE_LABEL_LENGTH) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & Trace.MAX_TRACE_LABEL_LENGTH) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & Trace.MAX_TRACE_LABEL_LENGTH) + 128;
        }
        return (((long) i2) << 24) + (((long) i3) << 16) + (((long) i4) << 8) + ((long) i5);
    }

    public static void a(byte b2, byte b3, int i, long j) throws IOException {
        if (b2 == 3) {
            defpackage.ki0.d("SNTP: Unsynchronized server");
            return;
        }
        if (b3 != 4 && b3 != 5) {
            defpackage.ki0.d(vx4.a(b3, "SNTP: Untrusted mode: "));
            return;
        }
        if (i == 0 || i > 15) {
            defpackage.ki0.d(vx4.a(i, "SNTP: Untrusted stratum: "));
        } else {
            if (j != 0) {
                return;
            }
            defpackage.ki0.d("SNTP: Zero transmitTime");
        }
    }
}
