package defpackage;

import androidx.tracing.Trace;
import androidx.webkit.ProxyConfig;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ix3 {
    public static final gx0 a;
    public static final zu3[] b;
    public static final Map<gx0, Integer> c;

    public static final class a {
        public final iy6 b;
        public final ArrayList a = new ArrayList();
        public zu3[] e = new zu3[8];
        public int f = 7;
        public int g = 0;
        public int h = 0;
        public int c = 4096;
        public int d = 4096;

        public a(ey3.a aVar) {
            this.b = new iy6(aVar);
        }

        public final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.e[length].c;
                    i -= i4;
                    this.h -= i4;
                    this.g--;
                    i3++;
                }
                zu3[] zu3VarArr = this.e;
                System.arraycopy(zu3VarArr, i2 + 1, zu3VarArr, i2 + 1 + i3, this.g);
                this.f += i3;
            }
            return i3;
        }

        public final gx0 b(int i) throws IOException {
            if (i >= 0) {
                zu3[] zu3VarArr = ix3.b;
                if (i <= zu3VarArr.length - 1) {
                    return zu3VarArr[i].a;
                }
            }
            int length = this.f + 1 + (i - ix3.b.length);
            if (length >= 0) {
                zu3[] zu3VarArr2 = this.e;
                if (length < zu3VarArr2.length) {
                    return zu3VarArr2[length].a;
                }
            }
            jn.d(i + 1, "Header index too large ");
            return null;
        }

        public final void c(zu3 zu3Var) {
            this.a.add(zu3Var);
            int i = zu3Var.c;
            int i2 = this.d;
            if (i > i2) {
                Arrays.fill(this.e, (Object) null);
                this.f = this.e.length - 1;
                this.g = 0;
                this.h = 0;
                return;
            }
            a((this.h + i) - i2);
            int i3 = this.g + 1;
            zu3[] zu3VarArr = this.e;
            if (i3 > zu3VarArr.length) {
                zu3[] zu3VarArr2 = new zu3[zu3VarArr.length * 2];
                System.arraycopy(zu3VarArr, 0, zu3VarArr2, zu3VarArr.length, zu3VarArr.length);
                this.f = this.e.length - 1;
                this.e = zu3VarArr2;
                zu3VarArr = zu3VarArr2;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            zu3VarArr[i4] = zu3Var;
            this.g++;
            this.h += i;
        }

        public final gx0 d() {
            iy6 iy6Var = this.b;
            byte b = iy6Var.readByte();
            int i = b & 255;
            boolean z = (b & 128) == 128;
            int iE = e(i, Trace.MAX_TRACE_LABEL_LENGTH);
            if (!z) {
                return iy6Var.i(iE);
            }
            hz3 hz3Var = hz3.d;
            long j = iE;
            iy6Var.c0(j);
            byte[] bArrZ = iy6Var.c.Z(j);
            hz3Var.getClass();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            hz3.a aVar = hz3Var.a;
            hz3.a aVar2 = aVar;
            int i2 = 0;
            int i3 = 0;
            for (byte b2 : bArrZ) {
                i2 = (i2 << 8) | (b2 & 255);
                i3 += 8;
                while (i3 >= 8) {
                    aVar2 = aVar2.a[(i2 >>> (i3 - 8)) & 255];
                    if (aVar2.a == null) {
                        byteArrayOutputStream.write(aVar2.b);
                        i3 -= aVar2.c;
                        aVar2 = aVar;
                    } else {
                        i3 -= 8;
                    }
                }
            }
            while (i3 > 0) {
                hz3.a aVar3 = aVar2.a[(i2 << (8 - i3)) & 255];
                hz3.a[] aVarArr = aVar3.a;
                int i4 = aVar3.c;
                if (aVarArr != null || i4 > i3) {
                    break;
                }
                byteArrayOutputStream.write(aVar3.b);
                i3 -= i4;
                aVar2 = aVar;
            }
            return gx0.q(byteArrayOutputStream.toByteArray());
        }

        public final int e(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            do {
                byte b = this.b.readByte();
                int i5 = b & 255;
                if ((b & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (b & 127) << i4;
                i4 += 7;
            } while (i4 < 28);
            ki0.d("Varint overflowed");
            return 0;
        }
    }

    public static final class b {
        public final bu0 a;
        public int c;
        public int e;
        public zu3[] b = new zu3[8];
        public int d = 7;

        public b(bu0 bu0Var) {
            this.a = bu0Var;
        }

        public final void a(zu3 zu3Var) {
            int i;
            int i2 = zu3Var.c;
            if (i2 > 4096) {
                Arrays.fill(this.b, (Object) null);
                this.d = this.b.length - 1;
                this.c = 0;
                this.e = 0;
                return;
            }
            int i3 = (this.e + i2) - 4096;
            if (i3 > 0) {
                int length = this.b.length - 1;
                int i4 = 0;
                while (true) {
                    i = this.d;
                    if (length < i || i3 <= 0) {
                        break;
                    }
                    int i5 = this.b[length].c;
                    i3 -= i5;
                    this.e -= i5;
                    this.c--;
                    i4++;
                    length--;
                }
                zu3[] zu3VarArr = this.b;
                int i6 = i + 1;
                System.arraycopy(zu3VarArr, i6, zu3VarArr, i6 + i4, this.c);
                this.d += i4;
            }
            int i7 = this.c + 1;
            zu3[] zu3VarArr2 = this.b;
            if (i7 > zu3VarArr2.length) {
                zu3[] zu3VarArr3 = new zu3[zu3VarArr2.length * 2];
                System.arraycopy(zu3VarArr2, 0, zu3VarArr3, zu3VarArr2.length, zu3VarArr2.length);
                this.d = this.b.length - 1;
                this.b = zu3VarArr3;
                zu3VarArr2 = zu3VarArr3;
            }
            int i8 = this.d;
            this.d = i8 - 1;
            zu3VarArr2[i8] = zu3Var;
            this.c++;
            this.e += i2;
        }

        public final void b(gx0 gx0Var) {
            c(gx0Var.f(), Trace.MAX_TRACE_LABEL_LENGTH, 0);
            this.a.z0(gx0Var);
        }

        public final void c(int i, int i2, int i3) {
            bu0 bu0Var = this.a;
            if (i < i2) {
                bu0Var.A0(i | i3);
                return;
            }
            bu0Var.A0(i3 | i2);
            int i4 = i - i2;
            if (i4 > 268435455) {
                ki0.d("Varint would overflow reader");
                return;
            }
            while (i4 >= 128) {
                bu0Var.A0(128 | (i4 & Trace.MAX_TRACE_LABEL_LENGTH));
                i4 >>>= 7;
            }
            bu0Var.A0(i4);
        }
    }

    static {
        gx0 gx0Var = gx0.e;
        a = gx0.a.c(StringUtils.PROCESS_POSTFIX_DELIMITER);
        zu3 zu3Var = new zu3(zu3.h, "");
        gx0 gx0Var2 = zu3.e;
        zu3 zu3Var2 = new zu3(gx0Var2, "GET");
        zu3 zu3Var3 = new zu3(gx0Var2, "POST");
        gx0 gx0Var3 = zu3.f;
        zu3 zu3Var4 = new zu3(gx0Var3, "/");
        zu3 zu3Var5 = new zu3(gx0Var3, "/index.html");
        gx0 gx0Var4 = zu3.g;
        zu3 zu3Var6 = new zu3(gx0Var4, ProxyConfig.MATCH_HTTP);
        zu3 zu3Var7 = new zu3(gx0Var4, ProxyConfig.MATCH_HTTPS);
        gx0 gx0Var5 = zu3.d;
        zu3[] zu3VarArr = {zu3Var, zu3Var2, zu3Var3, zu3Var4, zu3Var5, zu3Var6, zu3Var7, new zu3(gx0Var5, "200"), new zu3(gx0Var5, "204"), new zu3(gx0Var5, "206"), new zu3(gx0Var5, "304"), new zu3(gx0Var5, "400"), new zu3(gx0Var5, "404"), new zu3(gx0Var5, "500"), new zu3("accept-charset", ""), new zu3("accept-encoding", "gzip, deflate"), new zu3("accept-language", ""), new zu3("accept-ranges", ""), new zu3("accept", ""), new zu3("access-control-allow-origin", ""), new zu3("age", ""), new zu3("allow", ""), new zu3("authorization", ""), new zu3("cache-control", ""), new zu3("content-disposition", ""), new zu3("content-encoding", ""), new zu3("content-language", ""), new zu3("content-length", ""), new zu3("content-location", ""), new zu3("content-range", ""), new zu3("content-type", ""), new zu3("cookie", ""), new zu3("date", ""), new zu3("etag", ""), new zu3("expect", ""), new zu3("expires", ""), new zu3("from", ""), new zu3("host", ""), new zu3("if-match", ""), new zu3("if-modified-since", ""), new zu3("if-none-match", ""), new zu3("if-range", ""), new zu3("if-unmodified-since", ""), new zu3("last-modified", ""), new zu3(DynamicLink.Builder.KEY_LINK, ""), new zu3(FirebaseAnalytics.Param.LOCATION, ""), new zu3("max-forwards", ""), new zu3("proxy-authenticate", ""), new zu3("proxy-authorization", ""), new zu3("range", ""), new zu3("referer", ""), new zu3("refresh", ""), new zu3("retry-after", ""), new zu3("server", ""), new zu3("set-cookie", ""), new zu3("strict-transport-security", ""), new zu3("transfer-encoding", ""), new zu3("user-agent", ""), new zu3("vary", ""), new zu3("via", ""), new zu3("www-authenticate", "")};
        b = zu3VarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(zu3VarArr[i].a)) {
                linkedHashMap.put(zu3VarArr[i].a, Integer.valueOf(i));
            }
        }
        c = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void a(gx0 gx0Var) {
        int iF = gx0Var.f();
        for (int i = 0; i < iF; i++) {
            byte bN = gx0Var.n(i);
            if (bN >= 65 && bN <= 90) {
                ki0.d("PROTOCOL_ERROR response malformed: mixed case name: ".concat(gx0Var.x()));
                return;
            }
        }
    }
}
