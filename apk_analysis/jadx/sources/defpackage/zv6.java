package defpackage;

import androidx.media3.common.C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zv6 implements Closeable, Iterable<byte[]> {
    public static final byte[] m = new byte[4096];
    public final RandomAccessFile b;
    public final File c;
    public final boolean d;
    public final int e;
    public long f;
    public int g;
    public b h;
    public b i;
    public final byte[] j;
    public int k = 0;
    public boolean l;

    public static final class a {
        public final File a;
        public boolean b = false;

        public a(File file) {
            this.a = file;
        }

        public final zv6 a() throws IOException {
            boolean z = this.b;
            File file = this.a;
            if (!file.exists()) {
                File file2 = new File(file.getPath() + ".tmp");
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
                try {
                    randomAccessFile.setLength(4096L);
                    randomAccessFile.seek(0L);
                    if (z) {
                        randomAccessFile.writeInt(4096);
                    } else {
                        randomAccessFile.writeInt(C.RATE_UNSET_INT);
                        randomAccessFile.writeLong(4096L);
                    }
                    randomAccessFile.close();
                    if (!file2.renameTo(file)) {
                        ki0.d("Rename failed!");
                        return null;
                    }
                } catch (Throwable th) {
                    randomAccessFile.close();
                    throw th;
                }
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
            try {
                return new zv6(file, randomAccessFile2, this.b);
            } catch (Throwable th2) {
                randomAccessFile2.close();
                throw th2;
            }
        }
    }

    public static class b {
        public static final b c = new b(0, 0);
        public final long a;
        public final int b;

        public b(long j, int i) {
            this.a = j;
            this.b = i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(b.class.getSimpleName());
            sb.append("[position=");
            sb.append(this.a);
            sb.append(", length=");
            return l2.e(sb, "]", this.b);
        }
    }

    public final class c implements Iterator<byte[]> {
        public int b = 0;
        public long c;
        public int d;

        public c() {
            this.c = zv6.this.h.a;
            this.d = zv6.this.k;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            zv6 zv6Var = zv6.this;
            if (zv6Var.l) {
                ah.f("closed");
                return false;
            }
            if (zv6Var.k == this.d) {
                return this.b != zv6Var.g;
            }
            ln.e();
            return false;
        }

        @Override // java.util.Iterator
        public final byte[] next() throws IOException {
            zv6 zv6Var = zv6.this;
            if (zv6Var.l) {
                ah.f("closed");
                return null;
            }
            if (zv6Var.k != this.d) {
                ln.e();
                return null;
            }
            int i = zv6Var.g;
            if (i == 0) {
                qz0.e();
                return null;
            }
            if (this.b >= i) {
                qz0.e();
                return null;
            }
            b bVarB = zv6Var.b(this.c);
            long j = bVarB.a;
            int i2 = bVarB.b;
            byte[] bArr = new byte[i2];
            long j2 = 4 + j;
            long jO = zv6Var.o(j2);
            this.c = jO;
            zv6Var.n(jO, bArr, bVarB.b, false);
            this.c = zv6Var.o(j2 + ((long) i2));
            this.b++;
            return bArr;
        }

        @Override // java.util.Iterator
        public final void remove() {
            zv6 zv6Var = zv6.this;
            if (zv6Var.k != this.d) {
                ln.e();
                return;
            }
            if (zv6Var.g == 0) {
                qz0.e();
            } else {
                if (this.b != 1) {
                    n1.e("Removal is only permitted from the head.");
                    return;
                }
                zv6Var.m();
                this.d = zv6Var.k;
                this.b--;
            }
        }
    }

    public zv6(File file, RandomAccessFile randomAccessFile, boolean z) throws IOException {
        long jA;
        long jA2;
        int i = 32;
        byte[] bArr = new byte[32];
        this.j = bArr;
        this.c = file;
        this.b = randomAccessFile;
        randomAccessFile.seek(0L);
        randomAccessFile.readFully(bArr);
        boolean z2 = (z || (bArr[0] & 128) == 0) ? false : true;
        this.d = z2;
        if (z2) {
            this.e = 32;
            int iA = ((int) a(bArr, 0, 4)) & Integer.MAX_VALUE;
            if (iA != 1) {
                ki0.d(kv2.b(iA, "Unable to read version ", " format. Supported versions are 1 and legacy."));
                throw null;
            }
            this.f = a(bArr, 4, 8);
            this.g = (int) a(bArr, 12, 4);
            jA2 = a(bArr, 16, 8);
            jA = a(bArr, 24, 8);
        } else {
            this.e = 16;
            this.f = (int) a(bArr, 0, 4);
            this.g = (int) a(bArr, 4, 4);
            long jA3 = (int) a(bArr, 8, 4);
            jA = (int) a(bArr, 12, 4);
            i = 16;
            jA2 = jA3;
        }
        long j = this.f;
        long length = randomAccessFile.length();
        long j2 = this.f;
        if (j > length) {
            StringBuilder sbF = xp.f(j2, "File is truncated. Expected length: ", ", Actual length: ");
            sbF.append(randomAccessFile.length());
            throw new IOException(sbF.toString());
        }
        if (j2 <= i) {
            ki0.d(k2.b(this.f, ") is invalid.", new StringBuilder("File is corrupt; length stored in header (")));
            throw null;
        }
        this.h = b(jA2);
        this.i = b(jA);
    }

    public static long a(byte[] bArr, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j = (j << 8) + (((long) bArr[i + i3]) & 255);
        }
        return j;
    }

    public static void v(byte[] bArr, int i, int i2) {
        long j = i2;
        for (int i3 = 3; i3 >= 0; i3--) {
            bArr[(i + 3) - i3] = (byte) (j >> (i3 * 8));
        }
    }

    public final b b(long j) throws IOException {
        if (j == 0) {
            return b.c;
        }
        byte[] bArr = this.j;
        n(j, bArr, 4, false);
        return new b(j, (int) a(bArr, 0, 4));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.l = true;
        this.b.close();
    }

    @Override // java.lang.Iterable
    public final Iterator<byte[]> iterator() {
        return new c();
    }

    public final void m() throws IOException {
        int i = this.g;
        byte[] bArr = m;
        if (1 == i) {
            if (this.l) {
                ah.f("closed");
                return;
            }
            p(0, 4096L, 0L, 0L);
            int i2 = this.e;
            RandomAccessFile randomAccessFile = this.b;
            randomAccessFile.seek(i2);
            randomAccessFile.write(bArr, 0, 4096 - i2);
            this.g = 0;
            b bVar = b.c;
            this.h = bVar;
            this.i = bVar;
            if (this.f > 4096) {
                randomAccessFile.setLength(4096L);
                randomAccessFile.getChannel().force(true);
            }
            this.f = 4096L;
            this.k++;
            return;
        }
        if (i == 0) {
            qz0.e();
            return;
        }
        if (1 > i) {
            fg.c(l2.e(new StringBuilder("Cannot remove more elements (1) than present in queue ("), ").", this.g));
            return;
        }
        b bVar2 = this.h;
        long j = bVar2.a;
        int i3 = bVar2.b;
        long j2 = i3 + 4;
        long jO = o(4 + j + ((long) i3));
        byte[] bArr2 = this.j;
        n(jO, bArr2, 4, false);
        int iA = (int) a(bArr2, 0, 4);
        p(this.g - 1, this.f, jO, this.i.a);
        this.g--;
        this.k++;
        this.h = new b(jO, iA);
        long j3 = j2;
        long j4 = j;
        while (j3 > 0) {
            int iMin = (int) Math.min(j3, 4096L);
            n(j4, bArr, iMin, true);
            long j5 = iMin;
            j3 -= j5;
            j4 += j5;
        }
    }

    public final void n(long j, byte[] bArr, int i, boolean z) throws IOException {
        long jO = o(j);
        long j2 = ((long) i) + jO;
        long j3 = this.f;
        RandomAccessFile randomAccessFile = this.b;
        if (j2 <= j3) {
            randomAccessFile.seek(jO);
            if (z) {
                randomAccessFile.write(bArr, 0, i);
                return;
            } else {
                randomAccessFile.readFully(bArr, 0, i);
                return;
            }
        }
        int i2 = (int) (j3 - jO);
        randomAccessFile.seek(jO);
        if (z) {
            randomAccessFile.write(bArr, 0, i2);
        } else {
            randomAccessFile.readFully(bArr, 0, i2);
        }
        int i3 = i - i2;
        randomAccessFile.seek(this.e);
        if (z) {
            randomAccessFile.write(bArr, i2, i3);
        } else {
            randomAccessFile.readFully(bArr, i2, i3);
        }
    }

    public final long o(long j) {
        long j2 = this.f;
        return j < j2 ? j : (((long) this.e) + j) - j2;
    }

    public final void p(int i, long j, long j2, long j3) throws IOException {
        RandomAccessFile randomAccessFile = this.b;
        randomAccessFile.seek(0L);
        boolean z = this.d;
        byte[] bArr = this.j;
        if (!z) {
            v(bArr, 0, (int) j);
            v(bArr, 4, i);
            v(bArr, 8, (int) j2);
            v(bArr, 12, (int) j3);
            randomAccessFile.write(bArr, 0, 16);
            return;
        }
        v(bArr, 0, C.RATE_UNSET_INT);
        for (int i2 = 7; i2 >= 0; i2--) {
            bArr[11 - i2] = (byte) (j >> (i2 * 8));
        }
        v(bArr, 12, i);
        for (int i3 = 7; i3 >= 0; i3--) {
            bArr[23 - i3] = (byte) (j2 >> (i3 * 8));
        }
        for (int i4 = 7; i4 >= 0; i4--) {
            bArr[31 - i4] = (byte) (j3 >> (i4 * 8));
        }
        randomAccessFile.write(bArr, 0, 32);
    }

    public final String toString() {
        return "QueueFile{file=" + this.c + ", zero=true, versioned=" + this.d + ", length=" + this.f + ", size=" + this.g + ", first=" + this.h + ", last=" + this.i + '}';
    }
}
