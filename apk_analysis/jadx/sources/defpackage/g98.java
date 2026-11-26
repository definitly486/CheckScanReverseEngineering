package defpackage;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public final class g98 implements i47<InputStream, Bitmap> {
    public final vq2 a;
    public final pr b;

    public static class a implements vq2.b {
        public final i07 a;
        public final l13 b;

        public a(i07 i07Var, l13 l13Var) {
            this.a = i07Var;
            this.b = l13Var;
        }

        @Override // vq2.b
        public final void a() {
            i07 i07Var = this.a;
            synchronized (i07Var) {
                i07Var.d = i07Var.b.length;
            }
        }

        @Override // vq2.b
        public final void b(ij0 ij0Var, Bitmap bitmap) throws IOException {
            IOException iOException = this.b.c;
            if (iOException != null) {
                if (bitmap == null) {
                    throw iOException;
                }
                ij0Var.c(bitmap);
                throw iOException;
            }
        }
    }

    public g98(vq2 vq2Var, pr prVar) {
        this.a = vq2Var;
        this.b = prVar;
    }

    @Override // defpackage.i47
    public final e47<Bitmap> a(InputStream inputStream, int i, int i2, xz5 xz5Var) {
        boolean z;
        i07 i07Var;
        l13 l13Var;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof i07) {
            i07Var = (i07) inputStream2;
            z = false;
        } else {
            z = true;
            i07Var = new i07(inputStream2, this.b);
        }
        ArrayDeque arrayDeque = l13.d;
        synchronized (arrayDeque) {
            l13Var = (l13) arrayDeque.poll();
        }
        if (l13Var == null) {
            l13Var = new l13();
        }
        l13 l13Var2 = l13Var;
        l13Var2.b = i07Var;
        q05 q05Var = new q05(l13Var2);
        a aVar = new a(i07Var, l13Var2);
        try {
            vq2 vq2Var = this.a;
            kj0 kj0VarA = vq2Var.a(new z14.b(q05Var, vq2Var.d, vq2Var.c), i, i2, xz5Var, aVar);
            l13Var2.c = null;
            l13Var2.b = null;
            synchronized (arrayDeque) {
                arrayDeque.offer(l13Var2);
            }
            return kj0VarA;
        } finally {
            l13Var2.c = null;
            l13Var2.b = null;
            ArrayDeque arrayDeque2 = l13.d;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(l13Var2);
                if (z) {
                    i07Var.release();
                }
            }
        }
    }

    @Override // defpackage.i47
    public final boolean b(InputStream inputStream, xz5 xz5Var) {
        return true;
    }
}
