package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;

/* JADX INFO: loaded from: classes3.dex */
public final class e78 implements td2 {
    public final ImageDecoder.Source a;
    public final AutoCloseable b;
    public final zz5 c;
    public final io7 d;

    public static final class a implements td2.a {
        public final io7 a;

        public a(io7 io7Var) {
            this.a = io7Var;
        }

        @Override // td2.a
        public final td2 a(x48 x48Var, zz5 zz5Var) {
            ImageDecoder.Source sourceA;
            Bitmap.Config configA = f24.a(zz5Var);
            if ((configA == Bitmap.Config.ARGB_8888 || configA == Bitmap.Config.HARDWARE) && (sourceA = i78.a(x48Var.a, zz5Var)) != null) {
                return new e78(sourceA, x48Var.a, zz5Var, this.a);
            }
            return null;
        }
    }

    public e78(ImageDecoder.Source source, AutoCloseable autoCloseable, zz5 zz5Var, io7 io7Var) {
        this.a = source;
        this.b = autoCloseable;
        this.c = zz5Var;
        this.d = io7Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.td2
    public final Object a(f02 f02Var) {
        f78 f78Var;
        io7 io7Var;
        if (f02Var instanceof f78) {
            f78Var = (f78) f02Var;
            int i = f78Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                f78Var.o = i - Integer.MIN_VALUE;
            } else {
                f78Var = new f78(this, f02Var);
            }
        } else {
            f78Var = new f78(this, f02Var);
        }
        Object obj = f78Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = f78Var.o;
        if (i2 == 0) {
            r57.b(obj);
            io7 io7Var2 = this.d;
            f78Var.l = io7Var2;
            f78Var.o = 1;
            if (io7Var2.a(f78Var) == a32Var) {
                return a32Var;
            }
            io7Var = io7Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            io7Var = f78Var.l;
            r57.b(obj);
        }
        try {
            AutoCloseable autoCloseable = this.b;
            try {
                n07 n07Var = new n07();
                qd2 qd2Var = new qd2(new dj0(ImageDecoder.decodeBitmap(this.a, new g78(this, n07Var))), n07Var.b);
                aq5.c(autoCloseable, null);
                io7Var.release();
                return qd2Var;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(autoCloseable, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io7Var.release();
            throw th3;
        }
    }
}
