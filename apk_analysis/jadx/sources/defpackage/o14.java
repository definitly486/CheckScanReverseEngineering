package defpackage;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media3.muxer.WebmConstants;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class o14 extends nd0 {
    public final ch4 D;
    public final Rect E;
    public final Rect F;
    public final RectF G;
    public final sx4 H;
    public ac9 I;
    public ac9 J;
    public final ht2 K;
    public xu5 L;
    public xu5.b M;

    public o14(ox4 ox4Var, xk4 xk4Var) {
        super(ox4Var, xk4Var);
        this.D = new ch4(3);
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
        String str = xk4Var.g;
        nw4 nw4Var = ox4Var.b;
        this.H = nw4Var == null ? null : (sx4) ((HashMap) nw4Var.c()).get(str);
        ft2 ft2Var = this.p.x;
        if (ft2Var != null) {
            this.K = new ht2(this, this, ft2Var);
        }
    }

    @Override // defpackage.nd0, defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        Bitmap bitmapT;
        super.b(rectF, matrix, z);
        sx4 sx4Var = this.H;
        if (sx4Var != null) {
            int i = sx4Var.b;
            int i2 = sx4Var.a;
            float fC = ib9.c();
            if (this.o.o || (bitmapT = t()) == null) {
                rectF.set(0.0f, 0.0f, i2 * fC, i * fC);
            } else {
                rectF.set(0.0f, 0.0f, bitmapT.getWidth() * fC, bitmapT.getHeight() * fC);
            }
            this.n.mapRect(rectF);
        }
    }

    @Override // defpackage.nd0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        if (obj == vx4.I) {
            this.I = new ac9(by4Var, null);
            return;
        }
        if (obj == vx4.L) {
            this.J = new ac9(by4Var, null);
            return;
        }
        ht2 ht2Var = this.K;
        if (obj == 5 && ht2Var != null) {
            ht2Var.c.k(by4Var);
            return;
        }
        if (obj == vx4.E && ht2Var != null) {
            ht2Var.b(by4Var);
            return;
        }
        if (obj == vx4.F && ht2Var != null) {
            ht2Var.e.k(by4Var);
            return;
        }
        if (obj == vx4.G && ht2Var != null) {
            ht2Var.f.k(by4Var);
        } else {
            if (obj != vx4.H || ht2Var == null) {
                return;
            }
            ht2Var.g.k(by4Var);
        }
    }

    @Override // defpackage.nd0
    public final void l(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        sx4 sx4Var;
        Bitmap bitmapT = t();
        if (bitmapT == null || bitmapT.isRecycled() || (sx4Var = this.H) == null) {
            return;
        }
        float fC = ib9.c();
        ch4 ch4Var = this.D;
        ch4Var.setAlpha(i);
        ac9 ac9Var = this.I;
        if (ac9Var != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var.f());
        }
        ht2 ht2Var = this.K;
        if (ht2Var != null) {
            et2Var = ht2Var.a(matrix, i);
        }
        int width = bitmapT.getWidth();
        int height = bitmapT.getHeight();
        Rect rect = this.E;
        rect.set(0, 0, width, height);
        boolean z = this.o.o;
        Rect rect2 = this.F;
        if (z) {
            rect2.set(0, 0, (int) (sx4Var.a * fC), (int) (sx4Var.b * fC));
        } else {
            rect2.set(0, 0, (int) (bitmapT.getWidth() * fC), (int) (bitmapT.getHeight() * fC));
        }
        boolean z2 = et2Var != null;
        if (z2) {
            if (this.L == null) {
                this.L = new xu5();
            }
            xu5.b bVar = this.M;
            if (bVar == null) {
                bVar = new xu5.b();
                this.M = bVar;
            }
            xu5.b bVar2 = bVar;
            bVar.a = 255;
            bVar.b = null;
            et2Var.getClass();
            et2 et2Var2 = new et2(et2Var);
            bVar2.b = et2Var2;
            et2Var2.b(i);
            float f = rect2.left;
            float f2 = rect2.top;
            float f3 = rect2.right;
            float f4 = rect2.bottom;
            RectF rectF = this.G;
            rectF.set(f, f2, f3, f4);
            matrix.mapRect(rectF);
            canvas = this.L.e(canvas, rectF, this.M);
        }
        canvas.save();
        canvas.concat(matrix);
        canvas.drawBitmap(bitmapT, rect, rect2, ch4Var);
        if (z2) {
            this.L.c();
            if (this.L.c == xu5.c.RENDER_NODE) {
                return;
            }
        }
        canvas.restore();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    public final Bitmap t() {
        Bitmap bitmapD;
        Bitmap bitmap;
        ac9 ac9Var = this.J;
        if (ac9Var != null && (bitmap = (Bitmap) ac9Var.f()) != null) {
            return bitmap;
        }
        String str = this.p.g;
        ox4 ox4Var = this.o;
        a14 a14Var = ox4Var.i;
        if (a14Var != null) {
            Context contextH = ox4Var.h();
            Context context = a14Var.a;
            if (contextH != null) {
                if (context instanceof Application) {
                    contextH = contextH.getApplicationContext();
                }
                if (contextH != context) {
                    ox4Var.i = null;
                }
            } else if (context != null) {
                ox4Var.i = null;
            }
        }
        a14 a14Var2 = ox4Var.i;
        if (a14Var2 == null) {
            a14Var2 = new a14(ox4Var.getCallback(), ox4Var.j, ox4Var.b.c());
            ox4Var.i = a14Var2;
        }
        String str2 = a14Var2.b;
        sx4 sx4Var = a14Var2.c.get(str);
        if (sx4Var == null) {
            bitmapD = null;
        } else {
            int i = sx4Var.b;
            int i2 = sx4Var.a;
            bitmapD = sx4Var.f;
            if (bitmapD == null) {
                Context context2 = a14Var2.a;
                if (context2 == null) {
                    bitmapD = null;
                } else {
                    String str3 = sx4Var.d;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = WebmConstants.MkvEbmlElement.BLOCK_GROUP;
                    if (!str3.startsWith("data:") || str3.indexOf("base64,") <= 0) {
                        try {
                            if (TextUtils.isEmpty(str2)) {
                                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                            }
                            try {
                                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context2.getAssets().open(str2 + str3), null, options);
                                if (bitmapDecodeStream == null) {
                                    gv4.b("Decoded image `" + str + "` is null.");
                                    bitmapD = null;
                                } else {
                                    bitmapD = ib9.d(bitmapDecodeStream, i2, i);
                                    synchronized (a14.d) {
                                        a14Var2.c.get(str).f = bitmapD;
                                    }
                                }
                            } catch (IllegalArgumentException e) {
                                gv4.c("Unable to decode image `" + str + "`.", e);
                            }
                        } catch (IOException e2) {
                            gv4.c("Unable to open asset.", e2);
                        }
                    } else {
                        try {
                            byte[] bArrDecode = Base64.decode(str3.substring(str3.indexOf(44) + 1), 0);
                            try {
                                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                                if (bitmapDecodeByteArray == null) {
                                    gv4.b("Decoded image `" + str + "` is null.");
                                    bitmapD = null;
                                } else {
                                    bitmapD = ib9.d(bitmapDecodeByteArray, i2, i);
                                    synchronized (a14.d) {
                                        a14Var2.c.get(str).f = bitmapD;
                                    }
                                }
                            } catch (IllegalArgumentException e3) {
                                gv4.c("Unable to decode image `" + str + "`.", e3);
                            }
                        } catch (IllegalArgumentException e4) {
                            gv4.c("data URL did not have correct base64 format.", e4);
                        }
                    }
                }
            }
        }
        if (bitmapD != null) {
            return bitmapD;
        }
        sx4 sx4Var2 = this.H;
        if (sx4Var2 != null) {
            return sx4Var2.f;
        }
        return null;
    }
}
