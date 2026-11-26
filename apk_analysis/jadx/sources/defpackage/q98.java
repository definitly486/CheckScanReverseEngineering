package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class q98 extends Writer {
    public final Appendable b;
    public final a c = new a();

    public static class a implements CharSequence {
        public char[] b;
        public String c;

        @Override // java.lang.CharSequence
        public final char charAt(int i) {
            return this.b[i];
        }

        @Override // java.lang.CharSequence
        public final int length() {
            return this.b.length;
        }

        @Override // java.lang.CharSequence
        public final CharSequence subSequence(int i, int i2) {
            return new String(this.b, i, i2 - i);
        }

        @Override // java.lang.CharSequence
        public final String toString() {
            String str = this.c;
            if (str != null) {
                return str;
            }
            String str2 = new String(this.b);
            this.c = str2;
            return str2;
        }
    }

    public q98(Appendable appendable) {
        this.b = appendable;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) throws IOException {
        this.b.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Appendable appendable = this.b;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() throws IOException {
        Appendable appendable = this.b;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) throws IOException {
        a aVar = this.c;
        aVar.b = cArr;
        aVar.c = null;
        this.b.append(aVar, i, i2 + i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        this.b.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        this.b.append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
        this.b.append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) throws IOException {
        Objects.requireNonNull(str);
        this.b.append(str, i, i2 + i);
    }

    @Override // java.io.Writer
    public final void write(int i) throws IOException {
        this.b.append((char) i);
    }
}
