package defpackage;

import androidx.tracing.Trace;
import androidx.webkit.ProxyConfig;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class jx3 {
    public static final av3[] a;
    public static final Map<gx0, Integer> b;

    public static final class a {
        public final iy6 c;
        public int f;
        public int g;
        public int a = 4096;
        public final ArrayList b = new ArrayList();
        public av3[] d = new av3[8];
        public int e = 7;

        public a(uy3.b bVar) {
            this.c = new iy6(bVar);
        }

        public final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.d.length;
                while (true) {
                    length--;
                    i2 = this.e;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    av3 av3Var = this.d[length];
                    av3Var.getClass();
                    int i4 = av3Var.c;
                    i -= i4;
                    this.g -= i4;
                    this.f--;
                    i3++;
                }
                av3[] av3VarArr = this.d;
                int i5 = i2 + 1;
                System.arraycopy(av3VarArr, i5, av3VarArr, i5 + i3, this.f);
                this.e += i3;
            }
            return i3;
        }

        public final gx0 b(int i) throws IOException {
            if (i >= 0) {
                av3[] av3VarArr = jx3.a;
                if (i <= av3VarArr.length - 1) {
                    return av3VarArr[i].a;
                }
            }
            int length = this.e + 1 + (i - jx3.a.length);
            if (length >= 0) {
                av3[] av3VarArr2 = this.d;
                if (length < av3VarArr2.length) {
                    av3 av3Var = av3VarArr2[length];
                    av3Var.getClass();
                    return av3Var.a;
                }
            }
            jn.d(i + 1, "Header index too large ");
            return null;
        }

        public final void c(av3 av3Var) {
            this.b.add(av3Var);
            int i = av3Var.c;
            int i2 = this.a;
            if (i > i2) {
                av3[] av3VarArr = this.d;
                aq5.t(null, av3VarArr, 0, av3VarArr.length);
                this.e = this.d.length - 1;
                this.f = 0;
                this.g = 0;
                return;
            }
            a((this.g + i) - i2);
            int i3 = this.f + 1;
            av3[] av3VarArr2 = this.d;
            if (i3 > av3VarArr2.length) {
                av3[] av3VarArr3 = new av3[av3VarArr2.length * 2];
                System.arraycopy(av3VarArr2, 0, av3VarArr3, av3VarArr2.length, av3VarArr2.length);
                this.e = this.d.length - 1;
                this.d = av3VarArr3;
                av3VarArr2 = av3VarArr3;
            }
            int i4 = this.e;
            this.e = i4 - 1;
            av3VarArr2[i4] = av3Var;
            this.f++;
            this.g += i;
        }

        public final gx0 d() {
            iy6 iy6Var = this.c;
            byte b = iy6Var.readByte();
            byte[] bArr = gb9.a;
            int i = b & 255;
            int i2 = 0;
            boolean z = (b & 128) == 128;
            long jE = e(i, Trace.MAX_TRACE_LABEL_LENGTH);
            if (!z) {
                return iy6Var.i(jE);
            }
            bu0 bu0Var = new bu0();
            iz3.a aVar = iz3.c;
            iz3.a aVar2 = aVar;
            int i3 = 0;
            for (long j = 0; j < jE; j++) {
                byte b2 = iy6Var.readByte();
                byte[] bArr2 = gb9.a;
                i2 = (i2 << 8) | (b2 & 255);
                i3 += 8;
                while (i3 >= 8) {
                    iz3.a[] aVarArr = aVar2.a;
                    aVarArr.getClass();
                    aVar2 = aVarArr[(i2 >>> (i3 - 8)) & 255];
                    aVar2.getClass();
                    if (aVar2.a == null) {
                        bu0Var.A0(aVar2.b);
                        i3 -= aVar2.c;
                        aVar2 = aVar;
                    } else {
                        i3 -= 8;
                    }
                }
            }
            while (i3 > 0) {
                iz3.a[] aVarArr2 = aVar2.a;
                aVarArr2.getClass();
                iz3.a aVar3 = aVarArr2[(i2 << (8 - i3)) & 255];
                aVar3.getClass();
                int i4 = aVar3.c;
                if (aVar3.a != null || i4 > i3) {
                    break;
                }
                bu0Var.A0(aVar3.b);
                i3 -= i4;
                aVar2 = aVar;
            }
            return bu0Var.i(bu0Var.c);
        }

        public final int e(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                byte b = this.c.readByte();
                byte[] bArr = gb9.a;
                int i5 = b & 255;
                if ((b & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (b & 127) << i4;
                i4 += 7;
            }
        }
    }

    public static final class b {
        public final bu0 a;
        public boolean c;
        public int g;
        public int h;
        public int b = Integer.MAX_VALUE;
        public int d = 4096;
        public av3[] e = new av3[8];
        public int f = 7;

        public b(bu0 bu0Var) {
            this.a = bu0Var;
        }

        public final void a(int i) {
            int i2;
            if (i > 0) {
                int length = this.e.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    av3 av3Var = this.e[length];
                    av3Var.getClass();
                    i -= av3Var.c;
                    int i4 = this.h;
                    av3 av3Var2 = this.e[length];
                    av3Var2.getClass();
                    this.h = i4 - av3Var2.c;
                    this.g--;
                    i3++;
                    length--;
                }
                av3[] av3VarArr = this.e;
                int i5 = i2 + 1;
                System.arraycopy(av3VarArr, i5, av3VarArr, i5 + i3, this.g);
                av3[] av3VarArr2 = this.e;
                int i6 = this.f + 1;
                Arrays.fill(av3VarArr2, i6, i6 + i3, (Object) null);
                this.f += i3;
            }
        }

        public final void b(av3 av3Var) {
            int i = av3Var.c;
            int i2 = this.d;
            if (i > i2) {
                av3[] av3VarArr = this.e;
                aq5.t(null, av3VarArr, 0, av3VarArr.length);
                this.f = this.e.length - 1;
                this.g = 0;
                this.h = 0;
                return;
            }
            a((this.h + i) - i2);
            int i3 = this.g + 1;
            av3[] av3VarArr2 = this.e;
            if (i3 > av3VarArr2.length) {
                av3[] av3VarArr3 = new av3[av3VarArr2.length * 2];
                System.arraycopy(av3VarArr2, 0, av3VarArr3, av3VarArr2.length, av3VarArr2.length);
                this.f = this.e.length - 1;
                this.e = av3VarArr3;
                av3VarArr2 = av3VarArr3;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            av3VarArr2[i4] = av3Var;
            this.g++;
            this.h += i;
        }

        public final void c(gx0 gx0Var) throws EOFException {
            gx0Var.getClass();
            int[] iArr = iz3.a;
            int iF = gx0Var.f();
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < iF; i++) {
                byte bN = gx0Var.n(i);
                byte[] bArr = gb9.a;
                j2 += (long) iz3.b[bN & 255];
            }
            int i2 = (int) ((j2 + 7) >> 3);
            int iF2 = gx0Var.f();
            bu0 bu0Var = this.a;
            if (i2 >= iF2) {
                e(gx0Var.f(), Trace.MAX_TRACE_LABEL_LENGTH, 0);
                bu0Var.z0(gx0Var);
                return;
            }
            bu0 bu0Var2 = new bu0();
            int[] iArr2 = iz3.a;
            int iF3 = gx0Var.f();
            int i3 = 0;
            for (int i4 = 0; i4 < iF3; i4++) {
                byte bN2 = gx0Var.n(i4);
                byte[] bArr2 = gb9.a;
                int i5 = bN2 & 255;
                int i6 = iz3.a[i5];
                byte b = iz3.b[i5];
                j = (j << b) | ((long) i6);
                i3 += b;
                while (i3 >= 8) {
                    i3 -= 8;
                    bu0Var2.A0((int) (j >> i3));
                }
            }
            if (i3 > 0) {
                bu0Var2.A0((int) ((j << (8 - i3)) | (255 >>> i3)));
            }
            gx0 gx0VarI = bu0Var2.i(bu0Var2.c);
            e(gx0VarI.f(), Trace.MAX_TRACE_LABEL_LENGTH, 128);
            bu0Var.z0(gx0VarI);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0069  */
        public final void d(ArrayList arrayList) throws EOFException {
            int length;
            int length2;
            if (this.c) {
                int i = this.b;
                if (i < this.d) {
                    e(i, 31, 32);
                }
                this.c = false;
                this.b = Integer.MAX_VALUE;
                e(this.d, 31, 32);
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                av3 av3Var = (av3) arrayList.get(i2);
                gx0 gx0VarV = av3Var.a.v();
                gx0 gx0Var = av3Var.b;
                Integer num = jx3.b.get(gx0VarV);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (2 > length2 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else {
                        av3[] av3VarArr = jx3.a;
                        if (aa4.e(av3VarArr[iIntValue].b, gx0Var)) {
                            length = length2;
                        } else if (aa4.e(av3VarArr[length2].b, gx0Var)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.e.length;
                    for (int i3 = this.f + 1; i3 < length3; i3++) {
                        av3 av3Var2 = this.e[i3];
                        av3Var2.getClass();
                        if (aa4.e(av3Var2.a, gx0VarV)) {
                            av3 av3Var3 = this.e[i3];
                            av3Var3.getClass();
                            if (aa4.e(av3Var3.b, gx0Var)) {
                                length2 = jx3.a.length + (i3 - this.f);
                                break;
                            } else if (length == -1) {
                                length = (i3 - this.f) + jx3.a.length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    e(length2, Trace.MAX_TRACE_LABEL_LENGTH, 128);
                } else if (length == -1) {
                    this.a.A0(64);
                    c(gx0VarV);
                    c(gx0Var);
                    b(av3Var);
                } else {
                    gx0 gx0Var2 = av3.d;
                    gx0VarV.getClass();
                    gx0Var2.getClass();
                    if (!gx0VarV.s(0, gx0Var2, gx0Var2.f()) || aa4.e(av3.i, gx0VarV)) {
                        e(length, 63, 64);
                        c(gx0Var);
                        b(av3Var);
                    } else {
                        e(length, 15, 0);
                        c(gx0Var);
                    }
                }
            }
        }

        public final void e(int i, int i2, int i3) {
            bu0 bu0Var = this.a;
            if (i < i2) {
                bu0Var.A0(i | i3);
                return;
            }
            bu0Var.A0(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                bu0Var.A0(128 | (i4 & Trace.MAX_TRACE_LABEL_LENGTH));
                i4 >>>= 7;
            }
            bu0Var.A0(i4);
        }
    }

    static {
        av3 av3Var = new av3(av3.i, "");
        gx0 gx0Var = av3.f;
        av3 av3Var2 = new av3(gx0Var, "GET");
        av3 av3Var3 = new av3(gx0Var, "POST");
        gx0 gx0Var2 = av3.g;
        av3 av3Var4 = new av3(gx0Var2, "/");
        av3 av3Var5 = new av3(gx0Var2, "/index.html");
        gx0 gx0Var3 = av3.h;
        av3 av3Var6 = new av3(gx0Var3, ProxyConfig.MATCH_HTTP);
        av3 av3Var7 = new av3(gx0Var3, ProxyConfig.MATCH_HTTPS);
        gx0 gx0Var4 = av3.e;
        av3[] av3VarArr = {av3Var, av3Var2, av3Var3, av3Var4, av3Var5, av3Var6, av3Var7, new av3(gx0Var4, "200"), new av3(gx0Var4, "204"), new av3(gx0Var4, "206"), new av3(gx0Var4, "304"), new av3(gx0Var4, "400"), new av3(gx0Var4, "404"), new av3(gx0Var4, "500"), new av3("accept-charset", ""), new av3("accept-encoding", "gzip, deflate"), new av3("accept-language", ""), new av3("accept-ranges", ""), new av3("accept", ""), new av3("access-control-allow-origin", ""), new av3("age", ""), new av3("allow", ""), new av3("authorization", ""), new av3("cache-control", ""), new av3("content-disposition", ""), new av3("content-encoding", ""), new av3("content-language", ""), new av3("content-length", ""), new av3("content-location", ""), new av3("content-range", ""), new av3("content-type", ""), new av3("cookie", ""), new av3("date", ""), new av3("etag", ""), new av3("expect", ""), new av3("expires", ""), new av3("from", ""), new av3("host", ""), new av3("if-match", ""), new av3("if-modified-since", ""), new av3("if-none-match", ""), new av3("if-range", ""), new av3("if-unmodified-since", ""), new av3("last-modified", ""), new av3(DynamicLink.Builder.KEY_LINK, ""), new av3(FirebaseAnalytics.Param.LOCATION, ""), new av3("max-forwards", ""), new av3("proxy-authenticate", ""), new av3("proxy-authorization", ""), new av3("range", ""), new av3("referer", ""), new av3("refresh", ""), new av3("retry-after", ""), new av3("server", ""), new av3("set-cookie", ""), new av3("strict-transport-security", ""), new av3("transfer-encoding", ""), new av3("user-agent", ""), new av3("vary", ""), new av3("via", ""), new av3("www-authenticate", "")};
        a = av3VarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(av3VarArr[i].a)) {
                linkedHashMap.put(av3VarArr[i].a, Integer.valueOf(i));
            }
        }
        Map<gx0, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        b = mapUnmodifiableMap;
    }

    public static void a(gx0 gx0Var) {
        gx0Var.getClass();
        int iF = gx0Var.f();
        for (int i = 0; i < iF; i++) {
            byte bN = gx0Var.n(i);
            if (65 <= bN && bN < 91) {
                ki0.d("PROTOCOL_ERROR response malformed: mixed case name: ".concat(gx0Var.x()));
                return;
            }
        }
    }
}
