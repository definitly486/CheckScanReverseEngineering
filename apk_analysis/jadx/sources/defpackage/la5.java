package defpackage;

import androidx.tracing.Trace;
import com.google.common.io.BaseEncoding;
import com.tapjoy.TJKeyValueStorageKt;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class la5 {
    public static final Logger c = Logger.getLogger(la5.class.getName());
    public static final a d = new a();
    public static final BaseEncoding e;
    public Object[] a;
    public int b;

    public class a implements c<String> {
        @Override // la5.c
        public final String a(String str) {
            return str;
        }

        @Override // la5.c
        public final String b(String str) {
            return str;
        }
    }

    public static class b<T> extends d<T> {
        public final c<T> e;

        public b(String str, c cVar) {
            super(str, false, cVar);
            o8.i(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            o8.l(cVar, "marshaller");
            this.e = cVar;
        }

        @Override // la5.d
        public final T a(byte[] bArr) {
            return this.e.b(new String(bArr, StandardCharsets.US_ASCII));
        }

        @Override // la5.d
        public final byte[] b(T t) {
            String strA = this.e.a(t);
            o8.l(strA, "null marshaller.toAsciiString()");
            return strA.getBytes(StandardCharsets.US_ASCII);
        }
    }

    public interface c<T> {
        String a(T t);

        T b(String str);
    }

    public static abstract class d<T> {
        public static final BitSet d;
        public final String a;
        public final byte[] b;
        public final Object c;

        static {
            BitSet bitSet = new BitSet(Trace.MAX_TRACE_LABEL_LENGTH);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
                bitSet.set(c);
            }
            for (char c2 = 'a'; c2 <= 'z'; c2 = (char) (c2 + 1)) {
                bitSet.set(c2);
            }
            d = bitSet;
        }

        public d(String str, boolean z, Object obj) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            o8.l(lowerCase, "name");
            o8.f(!lowerCase.isEmpty(), "token must have at least 1 tchar");
            if (lowerCase.equals("connection")) {
                la5.c.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
            }
            for (int i = 0; i < lowerCase.length(); i++) {
                char cCharAt = lowerCase.charAt(i);
                if ((!z || cCharAt != ':' || i != 0) && !d.get(cCharAt)) {
                    fg.c(ma8.a("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
                    throw null;
                }
            }
            this.a = lowerCase;
            this.b = lowerCase.getBytes(StandardCharsets.US_ASCII);
            this.c = obj;
        }

        public abstract T a(byte[] bArr);

        public abstract byte[] b(T t);

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.a.equals(((d) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.d(new StringBuilder("Key{name='"), this.a, "'}");
        }
    }

    public static final class e<T> {
        public e() {
            throw null;
        }
    }

    public static final class f<T> extends d<T> {
        public final g<T> e;

        public f(String str, boolean z, g<T> gVar) {
            super(str, z, gVar);
            o8.i(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            this.e = gVar;
        }

        @Override // la5.d
        public final T a(byte[] bArr) {
            return this.e.b(bArr);
        }

        @Override // la5.d
        public final byte[] b(T t) {
            byte[] bArrA = this.e.a(t);
            o8.l(bArrA, "null marshaller.toAsciiString()");
            return bArrA;
        }
    }

    public interface g<T> {
        byte[] a(T t);

        T b(byte[] bArr);
    }

    static {
        BaseEncoding.c cVar = BaseEncoding.a;
        Character ch = cVar.e;
        BaseEncoding.c cVarG = cVar;
        if (ch != null) {
            cVarG = cVar.g(cVar.d, null);
        }
        e = cVarG;
    }

    public final <T> void a(d<T> dVar) {
        if (this.b == 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = this.b;
            if (i >= i3) {
                Arrays.fill(this.a, i2 * 2, i3 * 2, (Object) null);
                this.b = i2;
                return;
            }
            int i4 = i * 2;
            if (!Arrays.equals(dVar.b, (byte[]) this.a[i4])) {
                Object[] objArr = this.a;
                int i5 = i2 * 2;
                objArr[i5] = (byte[]) objArr[i4];
                Object obj = objArr[i4 + 1];
                if (objArr instanceof byte[][]) {
                    b(objArr.length);
                }
                this.a[i5 + 1] = obj;
                i2++;
            }
            i++;
        }
    }

    public final void b(int i) {
        Object[] objArr = new Object[i];
        int i2 = this.b;
        if (i2 != 0) {
            System.arraycopy(this.a, 0, objArr, 0, i2 * 2);
        }
        this.a = objArr;
    }

    public final <T> T c(d<T> dVar) {
        int i;
        int i2 = this.b;
        do {
            i2--;
            if (i2 < 0) {
                return null;
            }
            i = i2 * 2;
        } while (!Arrays.equals(dVar.b, (byte[]) this.a[i]));
        Object obj = this.a[i + 1];
        if (obj instanceof byte[]) {
            return dVar.a((byte[]) obj);
        }
        ((e) obj).getClass();
        return dVar.a(null);
    }

    public final void d(la5 la5Var) {
        int i = la5Var.b;
        if (i == 0) {
            return;
        }
        Object[] objArr = this.a;
        int length = objArr != null ? objArr.length : 0;
        int i2 = this.b;
        int i3 = length - (i2 * 2);
        if (i2 == 0 || i3 < i * 2) {
            b((i * 2) + (i2 * 2));
        }
        System.arraycopy(la5Var.a, 0, this.a, this.b * 2, la5Var.b * 2);
        this.b += la5Var.b;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    public final <T> void e(d<T> dVar, T t) {
        o8.l(dVar, TJKeyValueStorageKt.KEY);
        o8.l(t, "value");
        int i = this.b;
        int i2 = i * 2;
        if (i2 == 0) {
            b(Math.max(i * 4, 8));
        } else {
            Object[] objArr = this.a;
            if (i2 == (objArr != null ? objArr.length : 0)) {
                b(Math.max(i * 4, 8));
            }
        }
        int i3 = this.b;
        this.a[i3 * 2] = dVar.b;
        this.a[(i3 * 2) + 1] = dVar.b(t);
        this.b++;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i = 0; i < this.b; i++) {
            if (i != 0) {
                sb.append(',');
            }
            int i2 = i * 2;
            byte[] bArr = (byte[]) this.a[i2];
            Charset charset = StandardCharsets.US_ASCII;
            String str = new String(bArr, charset);
            sb.append(str);
            sb.append('=');
            boolean zEndsWith = str.endsWith("-bin");
            Object[] objArr = this.a;
            byte[] bArr2 = null;
            if (zEndsWith) {
                Object obj = objArr[i2 + 1];
                if (obj instanceof byte[]) {
                    bArr2 = (byte[]) obj;
                } else {
                    ((e) obj).getClass();
                }
                sb.append(e.c(bArr2));
            } else {
                Object obj2 = objArr[i2 + 1];
                if (obj2 instanceof byte[]) {
                    bArr2 = (byte[]) obj2;
                } else {
                    ((e) obj2).getClass();
                }
                sb.append(new String(bArr2, charset));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
