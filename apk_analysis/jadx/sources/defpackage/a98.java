package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class a98 {
    public final du8 a = du8.a;
    public boolean b;
    public long c;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public final long a() {
        if (this.b) {
            return this.a.a() - this.c;
        }
        return 0L;
    }

    public final void b() {
        o8.s(!this.b, "This stopwatch is already running.");
        this.b = true;
        this.c = this.a.a();
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jA = this.b ? this.a.a() - this.c : 0L;
        long j = jA / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jA / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jA / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jA / C.NANOS_PER_SECOND > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jA / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jA / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        StringBuilder sb = new StringBuilder(String.format(Locale.ROOT, "%.4g", Double.valueOf(jA / timeUnit2.convert(1L, timeUnit))));
        sb.append(" ");
        switch (a.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = CmcdData.STREAMING_FORMAT_SS;
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = CmcdData.STREAMING_FORMAT_HLS;
                break;
            case 7:
                str = "d";
                break;
            default:
                xp.g();
                return null;
        }
        sb.append(str);
        return sb.toString();
    }
}
