package defpackage;

import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class h88 {
    public static final List<h88> d;
    public static final h88 e;
    public static final h88 f;
    public static final h88 g;
    public static final h88 h;
    public static final h88 i;
    public static final h88 j;
    public static final h88 k;
    public static final h88 l;
    public static final h88 m;
    public static final la5.f n;
    public static final la5.f o;
    public final a a;
    public final String b;
    public final Throwable c;

    public enum a {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);

        private final int value;
        private final byte[] valueAscii;

        a(int i) {
            this.value = i;
            this.valueAscii = Integer.toString(i).getBytes(StandardCharsets.US_ASCII);
        }

        public final h88 a() {
            return h88.d.get(this.value);
        }

        public final int d() {
            return this.value;
        }

        public final byte[] e() {
            return this.valueAscii;
        }
    }

    public static final class b implements la5.g<h88> {
        @Override // la5.g
        public final byte[] a(h88 h88Var) {
            a aVar = h88Var.a;
            a aVar2 = a.OK;
            return aVar.e();
        }

        @Override // la5.g
        public final h88 b(byte[] bArr) {
            int i;
            byte b;
            char c = 0;
            if (bArr.length == 1 && bArr[0] == 48) {
                return h88.e;
            }
            int length = bArr.length;
            if (length != 1) {
                if (length == 2 && (b = bArr[0]) >= 48 && b <= 57) {
                    i = (b - 48) * 10;
                    c = 1;
                }
                return h88.g.h("Unknown code ".concat(new String(bArr, StandardCharsets.US_ASCII)));
            }
            i = 0;
            byte b2 = bArr[c];
            if (b2 >= 48 && b2 <= 57) {
                int i2 = (b2 - 48) + i;
                List<h88> list = h88.d;
                if (i2 < list.size()) {
                    return list.get(i2);
                }
            }
            return h88.g.h("Unknown code ".concat(new String(bArr, StandardCharsets.US_ASCII)));
        }
    }

    public static final class c implements la5.g<String> {
        public static final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

        @Override // la5.g
        public final byte[] a(String str) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            int i = 0;
            while (i < bytes.length) {
                byte b = bytes[i];
                if (b < 32 || b >= 126 || b == 37) {
                    byte[] bArr = new byte[((bytes.length - i) * 3) + i];
                    if (i != 0) {
                        System.arraycopy(bytes, 0, bArr, 0, i);
                    }
                    int i2 = i;
                    while (i < bytes.length) {
                        byte b2 = bytes[i];
                        if (b2 < 32 || b2 >= 126 || b2 == 37) {
                            bArr[i2] = 37;
                            byte[] bArr2 = a;
                            bArr[i2 + 1] = bArr2[(b2 >> 4) & 15];
                            bArr[i2 + 2] = bArr2[b2 & 15];
                            i2 += 3;
                        } else {
                            bArr[i2] = b2;
                            i2++;
                        }
                        i++;
                    }
                    return Arrays.copyOf(bArr, i2);
                }
                i++;
            }
            return bytes;
        }

        @Override // la5.g
        public final String b(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                if (b < 32 || b >= 126 || (b == 37 && i + 2 < bArr.length)) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                    int i2 = 0;
                    while (i2 < bArr.length) {
                        if (bArr[i2] == 37 && i2 + 2 < bArr.length) {
                            try {
                                byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i2 + 1, 2, StandardCharsets.US_ASCII), 16));
                                i2 += 3;
                            } catch (NumberFormatException unused) {
                                byteBufferAllocate.put(bArr[i2]);
                                i2++;
                            }
                        }
                        byteBufferAllocate.put(bArr[i2]);
                        i2++;
                    }
                    return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), StandardCharsets.UTF_8);
                }
            }
            return new String(bArr, 0);
        }
    }

    static {
        TreeMap treeMap = new TreeMap();
        for (a aVar : a.values()) {
            h88 h88Var = (h88) treeMap.put(Integer.valueOf(aVar.d()), new h88(aVar, null, null));
            if (h88Var != null) {
                n2.e("Code value duplication between ", h88Var.a.name(), " & ", aVar.name());
                return;
            }
        }
        d = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        e = a.OK.a();
        f = a.CANCELLED.a();
        g = a.UNKNOWN.a();
        a.INVALID_ARGUMENT.a();
        h = a.DEADLINE_EXCEEDED.a();
        a.NOT_FOUND.a();
        a.ALREADY_EXISTS.a();
        i = a.PERMISSION_DENIED.a();
        a.UNAUTHENTICATED.a();
        j = a.RESOURCE_EXHAUSTED.a();
        k = a.FAILED_PRECONDITION.a();
        a.ABORTED.a();
        a.OUT_OF_RANGE.a();
        a.UNIMPLEMENTED.a();
        l = a.INTERNAL.a();
        m = a.UNAVAILABLE.a();
        a.DATA_LOSS.a();
        b bVar = new b();
        BitSet bitSet = la5.d.d;
        n = new la5.f("grpc-status", false, bVar);
        o = new la5.f("grpc-message", false, new c());
    }

    public h88(a aVar, String str, Throwable th) {
        this.a = aVar;
        this.b = str;
        this.c = th;
    }

    public static String c(h88 h88Var) {
        String str = h88Var.b;
        a aVar = h88Var.a;
        if (str == null) {
            return aVar.toString();
        }
        return aVar + ": " + h88Var.b;
    }

    public static h88 d(int i2) {
        if (i2 >= 0) {
            List<h88> list = d;
            if (i2 < list.size()) {
                return list.get(i2);
            }
        }
        return g.h("Unknown code " + i2);
    }

    public static h88 e(Throwable th) {
        o8.l(th, "t");
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof StatusException) {
                return ((StatusException) cause).b;
            }
            if (cause instanceof StatusRuntimeException) {
                return ((StatusRuntimeException) cause).b;
            }
        }
        return g.g(th);
    }

    public final StatusRuntimeException a() {
        return new StatusRuntimeException(this, null);
    }

    public final h88 b(String str) {
        Throwable th = this.c;
        String str2 = this.b;
        a aVar = this.a;
        return str2 == null ? new h88(aVar, str, th) : new h88(aVar, me0.c(str2, "\n", str), th);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final boolean f() {
        return a.OK == this.a;
    }

    public final h88 g(Throwable th) {
        return Objects.equals(this.c, th) ? this : new h88(this.a, this.b, th);
    }

    public final h88 h(String str) {
        return Objects.equals(this.b, str) ? this : new h88(this.a, str, this.c);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a.name(), "code");
        aVarB.d(this.b, "description");
        Throwable th = this.c;
        Object string = th;
        if (th != null) {
            Object obj = xt8.a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        aVarB.d(string, "cause");
        return aVarB.toString();
    }
}
