package defpackage;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b57 implements Closeable {
    public a b;

    public static final class a extends Reader {
        public final wu0 b;
        public final Charset c;
        public boolean d;
        public InputStreamReader e;

        public a(wu0 wu0Var, Charset charset) {
            wu0Var.getClass();
            charset.getClass();
            this.b = wu0Var;
            this.c = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            j59 j59Var;
            this.d = true;
            InputStreamReader inputStreamReader = this.e;
            if (inputStreamReader != null) {
                inputStreamReader.close();
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                this.b.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            cArr.getClass();
            if (this.d) {
                ki0.d("Stream closed");
                return 0;
            }
            InputStreamReader inputStreamReader = this.e;
            if (inputStreamReader == null) {
                wu0 wu0Var = this.b;
                inputStreamReader = new InputStreamReader(wu0Var.w0(), gb9.r(wu0Var, this.c));
                this.e = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i, i2);
        }
    }

    public abstract wu0 L();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        gb9.d(L());
    }

    public final byte[] m() throws IOException {
        long jO = o();
        if (jO > SieveCacheKt.NodeLinkMask) {
            ki0.d(r01.c(jO, "Cannot buffer entire body for content length: "));
            return null;
        }
        wu0 wu0VarL = L();
        try {
            byte[] bArrC = wu0VarL.C();
            wu0VarL.close();
            int length = bArrC.length;
            if (jO == -1 || jO == length) {
                return bArrC;
            }
            throw new IOException("Content-Length (" + jO + ") and stream length (" + length + ") disagree");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(wu0VarL, th);
                throw th2;
            }
        }
    }

    public final Reader n() {
        Charset charsetA;
        a aVar = this.b;
        if (aVar == null) {
            wu0 wu0VarL = L();
            j95 j95VarP = p();
            if (j95VarP == null || (charsetA = j95VarP.a(ha1.b)) == null) {
                charsetA = ha1.b;
            }
            aVar = new a(wu0VarL, charsetA);
            this.b = aVar;
        }
        return aVar;
    }

    public abstract long o();

    public abstract j95 p();

    public final String v() throws IOException {
        Charset charsetA;
        wu0 wu0VarL = L();
        try {
            j95 j95VarP = p();
            if (j95VarP == null || (charsetA = j95VarP.a(ha1.b)) == null) {
                charsetA = ha1.b;
            }
            String strF = wu0VarL.F(gb9.r(wu0VarL, charsetA));
            wu0VarL.close();
            return strF;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(wu0VarL, th);
                throw th2;
            }
        }
    }
}
