package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.material3.SearchBarKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.MimeTypes;
import androidx.media3.muxer.MuxerUtil;
import androidx.work.impl.WorkDatabase_Impl;
import iy6.a;
import yads.nq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zi0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zi0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws Exception {
        g23 g23Var;
        boolean z;
        Bitmap bitmapCreateBitmap;
        int i;
        int iMin;
        double dMax;
        int i2 = this.b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                aj0 aj0Var = (aj0) obj;
                BitmapFactory.Options options = new BitmapFactory.Options();
                zz5 zz5Var = aj0Var.b;
                aj0.a aVar = new aj0.a(aj0Var.a.L());
                iy6 iy6Var = new iy6(aVar);
                boolean z2 = true;
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(iy6Var.o().new a(), null, options);
                Exception exc = aVar.c;
                if (exc != null) {
                    throw exc;
                }
                options.inJustDecodeBounds = false;
                Paint paint = m23.a;
                if (aj0Var.d.a(options.outMimeType)) {
                    ExifInterface exifInterface = new ExifInterface(new i23(iy6Var.o().new a()));
                    g23Var = new g23(exifInterface.isFlipped(), exifInterface.getRotationDegrees());
                } else {
                    g23Var = g23.c;
                }
                int i3 = g23Var.b;
                boolean z3 = g23Var.a;
                Exception exc2 = aVar.c;
                if (exc2 != null) {
                    throw exc2;
                }
                options.inMutable = false;
                b53.b<ColorSpace> bVar = f24.c;
                ColorSpace colorSpace = (ColorSpace) c53.b(zz5Var, bVar);
                Context context = zz5Var.a;
                if (colorSpace != null) {
                    options.inPreferredColorSpace = (ColorSpace) c53.b(zz5Var, bVar);
                }
                options.inPremultiplied = ((Boolean) c53.b(zz5Var, f24.d)).booleanValue();
                Bitmap.Config config = (Bitmap.Config) c53.b(zz5Var, f24.b);
                if ((z3 || i3 > 0) && (config == null || config == Bitmap.Config.HARDWARE)) {
                    config = Bitmap.Config.ARGB_8888;
                }
                if (((Boolean) c53.b(zz5Var, f24.g)).booleanValue() && config == Bitmap.Config.ARGB_8888 && aa4.e(options.outMimeType, MimeTypes.IMAGE_JPEG)) {
                    config = Bitmap.Config.RGB_565;
                }
                Bitmap.Config config2 = options.outConfig;
                Bitmap.Config config3 = Bitmap.Config.RGBA_F16;
                if (config2 == config3 && config != Bitmap.Config.HARDWARE) {
                    config = config3;
                }
                options.inPreferredConfig = config;
                int i4 = options.outWidth;
                if (i4 <= 0 || (i = options.outHeight) <= 0) {
                    options.inSampleSize = 1;
                    z = false;
                    options.inScaled = false;
                } else {
                    int i5 = (i3 == 90 || i3 == 270) ? i : i4;
                    if (i3 != 90 && i3 != 270) {
                        i4 = i;
                    }
                    t18 t18Var = zz5Var.b;
                    md7 md7Var = zz5Var.c;
                    b53.b<t18> bVar2 = d24.b;
                    long jA = rd2.a(i5, i4, t18Var, md7Var, (t18) c53.b(zz5Var, bVar2));
                    int i6 = (int) (jA >> 32);
                    int i7 = (int) (jA & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                    int iHighestOneBit = Integer.highestOneBit(i5 / i6);
                    int iHighestOneBit2 = Integer.highestOneBit(i4 / i7);
                    int[] iArr = rd2.a.a;
                    int i8 = iArr[md7Var.ordinal()];
                    if (i8 != 1) {
                        if (i8 == 2) {
                            iMin = Math.max(iHighestOneBit, iHighestOneBit2);
                        } else {
                            me0.e();
                        }
                        return null;
                    }
                    iMin = Math.min(iHighestOneBit, iHighestOneBit2);
                    if (iMin < 1) {
                        iMin = 1;
                    }
                    options.inSampleSize = iMin;
                    double d = iMin;
                    double d2 = ((double) i5) / d;
                    double d3 = ((double) i4) / d;
                    t18 t18Var2 = (t18) c53.b(zz5Var, bVar2);
                    double d4 = ((double) i6) / d2;
                    double d5 = ((double) i7) / d3;
                    int i9 = iArr[md7Var.ordinal()];
                    if (i9 == 1) {
                        dMax = Math.max(d4, d5);
                    } else {
                        if (i9 != 2) {
                            me0.e();
                            return null;
                        }
                        dMax = Math.min(d4, d5);
                    }
                    hn2 hn2Var = t18Var2.a;
                    if (hn2Var instanceof hn2.a) {
                        double d6 = ((double) ((hn2.a) hn2Var).a) / d2;
                        if (dMax > d6) {
                            dMax = d6;
                        }
                    }
                    hn2 hn2Var2 = t18Var2.b;
                    if (hn2Var2 instanceof hn2.a) {
                        double d7 = ((double) ((hn2.a) hn2Var2).a) / d3;
                        if (dMax > d7) {
                            dMax = d7;
                        }
                    }
                    if (zz5Var.d == re6.INEXACT && dMax > 1.0d) {
                        dMax = 1.0d;
                    }
                    boolean z4 = dMax == 1.0d;
                    options.inScaled = !z4;
                    if (!z4) {
                        if (dMax > 1.0d) {
                            options.inDensity = w65.a(2.147483647E9d / dMax);
                            options.inTargetDensity = Integer.MAX_VALUE;
                        } else {
                            options.inDensity = Integer.MAX_VALUE;
                            options.inTargetDensity = w65.a(2.147483647E9d * dMax);
                        }
                    }
                    z = false;
                }
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(iy6Var.new a(), null, options);
                    iy6Var.close();
                    Exception exc3 = aVar.c;
                    if (exc3 != null) {
                        throw exc3;
                    }
                    if (bitmapDecodeStream == null) {
                        ah.f("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                        return null;
                    }
                    bitmapDecodeStream.setDensity(context.getResources().getDisplayMetrics().densityDpi);
                    if (z3 != 0 || i3 > 0) {
                        Matrix matrix = new Matrix();
                        float width = bitmapDecodeStream.getWidth() / 2.0f;
                        float height = bitmapDecodeStream.getHeight() / 2.0f;
                        if (z3) {
                            matrix.postScale(-1.0f, 1.0f, width, height);
                        }
                        if (i3 > 0) {
                            matrix.postRotate(i3, width, height);
                        }
                        RectF rectF = new RectF(0.0f, 0.0f, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight());
                        matrix.mapRect(rectF);
                        float f = rectF.left;
                        if (f != 0.0f || rectF.top != 0.0f) {
                            matrix.postTranslate(-f, -rectF.top);
                        }
                        if (i3 == 90 || i3 == 270) {
                            int height2 = bitmapDecodeStream.getHeight();
                            int width2 = bitmapDecodeStream.getWidth();
                            Bitmap.Config config4 = bitmapDecodeStream.getConfig();
                            if (config4 == null) {
                                config4 = Bitmap.Config.ARGB_8888;
                            }
                            bitmapCreateBitmap = Bitmap.createBitmap(height2, width2, config4);
                        } else {
                            int width3 = bitmapDecodeStream.getWidth();
                            int height3 = bitmapDecodeStream.getHeight();
                            Bitmap.Config config5 = bitmapDecodeStream.getConfig();
                            if (config5 == null) {
                                config5 = Bitmap.Config.ARGB_8888;
                            }
                            bitmapCreateBitmap = Bitmap.createBitmap(width3, height3, config5);
                        }
                        new Canvas(bitmapCreateBitmap).drawBitmap(bitmapDecodeStream, matrix, m23.a);
                        bitmapDecodeStream.recycle();
                        bitmapDecodeStream = bitmapCreateBitmap;
                    }
                    x04 x04VarB = n24.b(new BitmapDrawable(context.getResources(), bitmapDecodeStream));
                    if (options.inSampleSize <= 1 && !options.inScaled) {
                        z2 = z;
                    }
                    return new qd2(x04VarB, z2);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(iy6Var, th);
                        throw th2;
                    }
                }
            case 1:
                return Float.valueOf(((DisplayMetrics) ((od6) obj).h.getValue()).density);
            case 2:
                return Boolean.valueOf(SearchBarKt.SearchBarImpl_j1jLAyQ$lambda$31$lambda$30((Animatable) obj));
            case 3:
                return SelectionController.onRemembered$lambda$0((SelectionController) obj);
            case 4:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$0((TextFieldDecoratorModifierNode) obj);
            case 5:
                return UseCaseCameraRequestControlImpl.useCaseSurfaceManager_delegate$lambda$0((UseCaseCameraRequestControlImpl) obj);
            case 6:
                return WorkDatabase_Impl._workTagDao$lambda$2((WorkDatabase_Impl) obj);
            default:
                return nq0.l0((nq0) obj);
        }
    }
}
