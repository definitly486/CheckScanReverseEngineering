package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class s98 implements Closeable {
    public final FileInputStream b;
    public final Charset c;
    public byte[] d;
    public int e;
    public int f;

    public class a extends ByteArrayOutputStream {
        public a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public final String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0) {
                int i2 = i - 1;
                if (((ByteArrayOutputStream) this).buf[i2] == 13) {
                    i = i2;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, s98.this.c.name());
            } catch (UnsupportedEncodingException e) {
                xg.d(e);
                return null;
            }
        }
    }

    public s98(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(hb9.a)) {
            fg.c("Unsupported encoding");
            throw null;
        }
        this.b = fileInputStream;
        this.c = charset;
        this.d = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.b) {
            try {
                if (this.d != null) {
                    this.d = null;
                    this.b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003f  */
    public final String m() {
        int i;
        synchronized (this.b) {
            try {
                byte[] bArr = this.d;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                int i2 = this.e;
                if (i2 >= this.f) {
                    int i3 = this.b.read(bArr, 0, bArr.length);
                    if (i3 == -1) {
                        throw new EOFException();
                    }
                    this.e = 0;
                    this.f = i3;
                    i2 = 0;
                }
                while (i2 != this.f) {
                    byte[] bArr2 = this.d;
                    if (bArr2[i2] == 10) {
                        int i4 = this.e;
                        if (i2 != i4) {
                            i = i2 - 1;
                            if (bArr2[i] != 13) {
                                i = i2;
                            }
                        } else {
                            i = i2;
                        }
                        String str = new String(bArr2, i4, i - i4, this.c.name());
                        this.e = i2 + 1;
                        return str;
                    }
                    i2++;
                }
                a aVar = new a((this.f - this.e) + 80);
                while (true) {
                    byte[] bArr3 = this.d;
                    int i5 = this.e;
                    aVar.write(bArr3, i5, this.f - i5);
                    this.f = -1;
                    FileInputStream fileInputStream = this.b;
                    byte[] bArr4 = this.d;
                    int i6 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (i6 == -1) {
                        throw new EOFException();
                    }
                    this.e = 0;
                    this.f = i6;
                    for (int i7 = 0; i7 != this.f; i7++) {
                        byte[] bArr5 = this.d;
                        if (bArr5[i7] == 10) {
                            int i8 = this.e;
                            if (i7 != i8) {
                                aVar.write(bArr5, i8, i7 - i8);
                            }
                            this.e = i7 + 1;
                            return aVar.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
