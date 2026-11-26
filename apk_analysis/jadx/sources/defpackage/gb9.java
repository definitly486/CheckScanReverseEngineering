package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.tracing.Trace;
import androidx.webkit.ProxyConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class gb9 {
    public static final byte[] a;
    public static final jv3 b = jv3.b.c(new String[0]);
    public static final c57 c;
    public static final yz5 d;
    public static final TimeZone e;
    public static final g17 f;
    public static final String g;

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        bu0 bu0Var = new bu0();
        bu0Var.write(bArr, 0, 0);
        c = new c57(null, 0L, bu0Var);
        c(0L, 0L, 0L);
        new f37(null, 0, bArr);
        gx0 gx0Var = gx0.e;
        d = yz5.a.b(gx0.a.b("efbbbf"), gx0.a.b("feff"), gx0.a.b("fffe"), gx0.a.b("0000ffff"), gx0.a.b("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        timeZone.getClass();
        e = timeZone;
        f = new g17("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        g = ta8.U(ta8.T(OkHttpClient.class.getName(), "okhttp3."), "Client");
    }

    public static final boolean a(fz3 fz3Var, fz3 fz3Var2) {
        fz3Var.getClass();
        return aa4.e(fz3Var.d, fz3Var2.d) && fz3Var.e == fz3Var2.e && aa4.e(fz3Var.a, fz3Var2.a);
    }

    public static final int b(long j, TimeUnit timeUnit) {
        if (j < 0) {
            j2.d("timeout".concat(" < 0"));
            return 0;
        }
        if (timeUnit == null) {
            ah.f("unit == null");
            return 0;
        }
        long millis = timeUnit.toMillis(j);
        if (millis > SieveCacheKt.NodeLinkMask) {
            c9.f("timeout".concat(" too large."));
            return 0;
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        c9.f("timeout".concat(" too small."));
        return 0;
    }

    public static final void c(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void d(Closeable closeable) {
        closeable.getClass();
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void e(Socket socket) {
        socket.getClass();
        try {
            socket.close();
        } catch (AssertionError e2) {
            throw e2;
        } catch (RuntimeException e3) {
            if (!aa4.e(e3.getMessage(), "bio == null")) {
                throw e3;
            }
        } catch (Exception unused) {
        }
    }

    public static final int f(int i, int i2, String str, String str2) {
        str.getClass();
        while (i < i2) {
            if (ta8.E(str2, str.charAt(i))) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int g(String str, char c2, int i, int i2) {
        str.getClass();
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final String h(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final boolean i(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        strArr.getClass();
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                int i = 0;
                while (true) {
                    if (i < strArr2.length) {
                        int i2 = i + 1;
                        try {
                            if (comparator.compare(str, strArr2[i]) == 0) {
                                return true;
                            }
                            i = i2;
                        } catch (ArrayIndexOutOfBoundsException e2) {
                            ag.g(e2.getMessage());
                            return false;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long j(z47 z47Var) {
        String strA = z47Var.g.a("Content-Length");
        if (strA == null) {
            return -1L;
        }
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @SafeVarargs
    public static final <T> List<T> k(T... tArr) {
        Object[] objArr = (Object[]) tArr.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(u96.i(Arrays.copyOf(objArr, objArr.length)));
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public static final int l(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (aa4.f(cCharAt, 31) <= 0 || aa4.f(cCharAt, Trace.MAX_TRACE_LABEL_LENGTH) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int m(int i, int i2, String str) {
        str.getClass();
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int n(int i, int i2, String str) {
        str.getClass();
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char cCharAt = str.charAt(i3);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i3 + 1;
                }
                if (i3 != i) {
                    i3--;
                }
            }
        }
        return i;
    }

    public static final String[] o(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        strArr2.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean p(String str) {
        str.getClass();
        return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");
    }

    public static final int q(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' > c2 || c2 >= 'G') {
            return -1;
        }
        return c2 - '7';
    }

    public static final Charset r(wu0 wu0Var, Charset charset) {
        wu0Var.getClass();
        charset.getClass();
        int iF0 = wu0Var.f0(d);
        if (iF0 == -1) {
            return charset;
        }
        if (iF0 == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            charset2.getClass();
            return charset2;
        }
        if (iF0 == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            charset3.getClass();
            return charset3;
        }
        if (iF0 == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            charset4.getClass();
            return charset4;
        }
        if (iF0 == 3) {
            ha1.a.getClass();
            Charset charset5 = ha1.e;
            if (charset5 != null) {
                return charset5;
            }
            Charset charsetForName = Charset.forName("UTF-32BE");
            charsetForName.getClass();
            ha1.e = charsetForName;
            return charsetForName;
        }
        if (iF0 != 4) {
            xp.g();
            return null;
        }
        ha1.a.getClass();
        Charset charset6 = ha1.d;
        if (charset6 != null) {
            return charset6;
        }
        Charset charsetForName2 = Charset.forName("UTF-32LE");
        charsetForName2.getClass();
        ha1.d = charsetForName2;
        return charsetForName2;
    }

    public static final int s(wu0 wu0Var) {
        return (wu0Var.readByte() & 255) | ((wu0Var.readByte() & 255) << 16) | ((wu0Var.readByte() & 255) << 8);
    }

    public static final boolean t(v48 v48Var, int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        long jNanoTime = System.nanoTime();
        long jC = v48Var.r().e() ? v48Var.r().c() - jNanoTime : Long.MAX_VALUE;
        v48Var.r().d(Math.min(jC, timeUnit.toNanos(i)) + jNanoTime);
        try {
            bu0 bu0Var = new bu0();
            while (v48Var.t0(bu0Var, 8192L) != -1) {
                bu0Var.p();
            }
            if (jC == Long.MAX_VALUE) {
                v48Var.r().a();
                return true;
            }
            v48Var.r().d(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                v48Var.r().a();
                return false;
            }
            v48Var.r().d(jNanoTime + jC);
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                v48Var.r().a();
            } else {
                v48Var.r().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final jv3 u(List<av3> list) {
        jv3.a aVar = new jv3.a();
        for (av3 av3Var : list) {
            aVar.c(av3Var.a.x(), av3Var.b.x());
        }
        return aVar.e();
    }

    public static final String v(fz3 fz3Var, boolean z) {
        int i;
        fz3Var.getClass();
        int i2 = fz3Var.e;
        String strD = fz3Var.d;
        if (ta8.D(strD, StringUtils.PROCESS_POSTFIX_DELIMITER, false)) {
            strD = lt0.d(']', "[", strD);
        }
        if (!z) {
            String str = fz3Var.a;
            str.getClass();
            if (str.equals(ProxyConfig.MATCH_HTTP)) {
                i = 80;
            } else {
                i = str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
            }
            if (i2 == i) {
                return strD;
            }
        }
        return strD + ':' + i2;
    }

    public static final <T> List<T> w(List<? extends T> list) {
        list.getClass();
        List<T> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public static final int x(int i, String str) {
        if (str == null) {
            return i;
        }
        try {
            long j = Long.parseLong(str);
            if (j > SieveCacheKt.NodeLinkMask) {
                return Integer.MAX_VALUE;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static final String y(int i, int i2, String str) {
        str.getClass();
        int iM = m(i, i2, str);
        return str.substring(iM, n(iM, i2, str));
    }
}
