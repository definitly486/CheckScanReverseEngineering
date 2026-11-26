package defpackage;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.m0;
import com.google.protobuf.q;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class fx0 implements Iterable<Byte>, Serializable {
    public static final h c = new h(q.b);
    public static final e d;
    public int b = 0;

    public final class a extends b {
        public int b = 0;
        public final int c;

        public a() {
            this.c = fx0.this.size();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b < this.c;
        }

        @Override // fx0.f
        public final byte nextByte() {
            int i = this.b;
            if (i < this.c) {
                this.b = i + 1;
                return fx0.this.i(i);
            }
            qz0.e();
            return (byte) 0;
        }
    }

    public static abstract class b implements f {
        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class c implements e {
        @Override // fx0.e
        public final byte[] copyFrom(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    public static final class d extends h {
        public final int f;
        public final int g;

        public d(byte[] bArr, int i, int i2) {
            super(bArr);
            fx0.b(i, i + i2, bArr.length);
            this.f = i;
            this.g = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // fx0.h, defpackage.fx0
        public final byte a(int i) {
            int i2 = this.g;
            if (((i2 - (i + 1)) | i) >= 0) {
                return this.e[this.f + i];
            }
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(jh.b(i, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(rz0.c(i, i2, "Index > length: ", ", "));
        }

        @Override // fx0.h, defpackage.fx0
        public final void g(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.e, this.f + i, bArr, i2, i3);
        }

        @Override // fx0.h, defpackage.fx0
        public final byte i(int i) {
            return this.e[this.f + i];
        }

        @Override // fx0.h
        public final int r() {
            return this.f;
        }

        @Override // fx0.h, defpackage.fx0
        public final int size() {
            return this.g;
        }

        public Object writeReplace() {
            byte[] bArr;
            int size = size();
            if (size == 0) {
                bArr = q.b;
            } else {
                byte[] bArr2 = new byte[size];
                g(bArr2, 0, 0, size);
                bArr = bArr2;
            }
            return new h(bArr);
        }
    }

    public interface e {
        byte[] copyFrom(byte[] bArr, int i, int i2);
    }

    public interface f extends Iterator<Byte> {
        byte nextByte();
    }

    public static abstract class g extends fx0 {
        @Override // defpackage.fx0, java.lang.Iterable
        public final Iterator<Byte> iterator() {
            return new a();
        }
    }

    public static class h extends g {
        public final byte[] e;

        public h(byte[] bArr) {
            bArr.getClass();
            this.e = bArr;
        }

        @Override // defpackage.fx0
        public byte a(int i) {
            return this.e[i];
        }

        @Override // defpackage.fx0
        public final boolean equals(Object obj) {
            if (obj != this) {
                if ((obj instanceof fx0) && size() == ((fx0) obj).size()) {
                    if (size() != 0) {
                        if (!(obj instanceof h)) {
                            return obj.equals(this);
                        }
                        h hVar = (h) obj;
                        int i = this.b;
                        int i2 = hVar.b;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int size = size();
                            if (size <= hVar.size()) {
                                int i3 = 0 + size;
                                if (i3 <= hVar.size()) {
                                    if (!(hVar instanceof h)) {
                                        return hVar.n(0, i3).equals(n(0, size));
                                    }
                                    byte[] bArr = hVar.e;
                                    int iR = r() + size;
                                    int iR2 = r();
                                    int iR3 = hVar.r() + 0;
                                    while (iR2 < iR) {
                                        if (this.e[iR2] == bArr[iR3]) {
                                            iR2++;
                                            iR3++;
                                        }
                                    }
                                    return true;
                                }
                                ln.f(hVar.size(), bg.f(0, size, "Ran off end of other: ", ", ", ", "));
                            } else {
                                hm.e(size, size());
                            }
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // defpackage.fx0
        public void g(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.e, i, bArr, i2, i3);
        }

        @Override // defpackage.fx0
        public byte i(int i) {
            return this.e[i];
        }

        @Override // defpackage.fx0
        public final boolean j() {
            int iR = r();
            return m0.a.e(this.e, iR, size() + iR);
        }

        @Override // defpackage.fx0
        public final com.google.protobuf.f k() {
            return com.google.protobuf.f.f(this.e, r(), size(), true);
        }

        @Override // defpackage.fx0
        public final int m(int i, int i2, int i3) {
            int iR = r() + i2;
            Charset charset = q.a;
            for (int i4 = iR; i4 < iR + i3; i4++) {
                i = (i * 31) + this.e[i4];
            }
            return i;
        }

        @Override // defpackage.fx0
        public final fx0 n(int i, int i2) {
            int iB = fx0.b(i, i2, size());
            if (iB == 0) {
                return fx0.c;
            }
            return new d(this.e, r() + i, iB);
        }

        @Override // defpackage.fx0
        public final String o(Charset charset) {
            return new String(this.e, r(), size(), charset);
        }

        @Override // defpackage.fx0
        public final void q(CodedOutputStream codedOutputStream) {
            codedOutputStream.O(this.e, r(), size());
        }

        public int r() {
            return 0;
        }

        @Override // defpackage.fx0
        public int size() {
            return this.e.length;
        }
    }

    public static final class i implements e {
        @Override // fx0.e
        public final byte[] copyFrom(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    static {
        d = xf.a() ? new i() : new c();
    }

    public static int b(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            yq.d(kv2.b(i2, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i3 < i2) {
            yq.d(rz0.c(i2, i3, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        yq.d(rz0.c(i3, i4, "End index: ", " >= "));
        return 0;
    }

    public static h d(byte[] bArr, int i2, int i3) {
        b(i2, i2 + i3, bArr.length);
        return new h(d.copyFrom(bArr, i2, i3));
    }

    public static h f(String str) {
        return new h(str.getBytes(q.a));
    }

    public abstract byte a(int i2);

    public abstract boolean equals(Object obj);

    public abstract void g(byte[] bArr, int i2, int i3, int i4);

    public final int hashCode() {
        int iM = this.b;
        if (iM == 0) {
            int size = size();
            iM = m(size, 0, size);
            if (iM == 0) {
                iM = 1;
            }
            this.b = iM;
        }
        return iM;
    }

    public abstract byte i(int i2);

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new a();
    }

    public abstract boolean j();

    public abstract com.google.protobuf.f k();

    public abstract int m(int i2, int i3, int i4);

    public abstract fx0 n(int i2, int i3);

    public abstract String o(Charset charset);

    public final String p() {
        return size() == 0 ? "" : o(q.a);
    }

    public abstract void q(CodedOutputStream codedOutputStream);

    public abstract int size();

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return me0.d(mz0.a(size(), "<ByteString@", hexString, " size=", " contents=\""), size() <= 50 ? m57.a(this) : m57.a(n(0, 47)).concat("..."), "\">");
    }
}
