package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class wn5 implements View.OnLayoutChangeListener {
    public final kn b;
    public final ys c;
    public final xn5 d;
    public final rd3 e;
    public final Drawable f;

    public wn5(kn knVar, ys ysVar, xn5 xn5Var, rd3 rd3Var, Drawable drawable) {
        this.b = knVar;
        this.c = ysVar;
        this.d = xn5Var;
        this.e = rd3Var;
        this.f = drawable;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x008a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    public final void a(ImageView imageView) {
        Bitmap bitmap;
        rn5 rn5Var;
        ArrayList arrayList;
        Object obj;
        pn pnVar;
        float f;
        float f2;
        String str;
        rn5 rn5Var2;
        pn pnVar2;
        rn5 rn5Var3;
        float fWidth;
        int i;
        String str2;
        String str3;
        Drawable drawable = this.f;
        BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
        if (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null || imageView.getWidth() == 0 || imageView.getHeight() == 0) {
            return;
        }
        RectF rectF = new RectF(0.0f, 0.0f, imageView.getWidth(), imageView.getHeight());
        if (rectF.height() == 0.0f) {
            return;
        }
        kn knVar = this.b;
        rd3 rd3Var = this.e;
        knVar.getClass();
        zn5 zn5Var = rd3Var.e;
        if (zn5Var != null && (pnVar = zn5Var.e) != null) {
            String str4 = pnVar.d;
            boolean z = (str4 == null || (str3 = pnVar.a) == null || !str4.equals(str3)) ? false : true;
            String str5 = pnVar.c;
            boolean z2 = (str5 == null || (str2 = pnVar.b) == null || !str5.equals(str2)) ? false : true;
            if (z || z2) {
                kn knVar2 = this.b;
                rd3 rd3Var2 = this.e;
                knVar2.getClass();
                zn5 zn5Var2 = rd3Var2.e;
                if (zn5Var2 == null || (pnVar2 = zn5Var2.e) == null || (rn5Var3 = zn5Var2.f) == null) {
                    f = 0.0f;
                    f2 = 1.0f;
                    str = null;
                } else {
                    float fWidth2 = rectF.width();
                    float fHeight = rectF.height();
                    float f3 = rd3Var2.a;
                    float f4 = rd3Var2.b;
                    float f5 = rn5Var3.c;
                    float f6 = rn5Var3.d;
                    if (fWidth2 == 0.0f || fHeight == 0.0f || f3 == 0.0f || f4 == 0.0f || f5 == 0.0f || f6 == 0.0f) {
                        f = 0.0f;
                        f2 = 1.0f;
                    } else {
                        f2 = 1.0f;
                        f = 0.0f;
                        if (rectF.width() / rectF.height() > rn5Var3.c / rn5Var3.d) {
                            fWidth = rectF.height();
                            i = rn5Var3.d;
                        } else {
                            fWidth = rectF.width();
                            i = rn5Var3.c;
                        }
                        if (fWidth / i <= 1.0f) {
                            if (fWidth2 / fHeight > f5 / f6) {
                                if (defpackage.aa4.e(pnVar2.b, pnVar2.c)) {
                                    str = pnVar2.b;
                                }
                            } else if (defpackage.aa4.e(pnVar2.a, pnVar2.d)) {
                                str = pnVar2.a;
                            }
                        } else if (fWidth2 / fHeight > f3 / f4) {
                            if (defpackage.aa4.e(pnVar2.b, pnVar2.c)) {
                                str = pnVar2.b;
                            }
                        } else if (defpackage.aa4.e(pnVar2.a, pnVar2.d)) {
                            str = pnVar2.a;
                        }
                    }
                    str = null;
                }
                zn5 zn5Var3 = this.e.e;
                if (zn5Var3 == null || (rn5Var2 = zn5Var3.f) == null) {
                    return;
                }
                xn5 xn5Var = this.d;
                if (str == null) {
                    xn5Var.a(imageView, bitmap, rn5Var2);
                    return;
                }
                xn5Var.getClass();
                float width = imageView.getWidth();
                float height = imageView.getHeight();
                float width2 = bitmap.getWidth();
                float height2 = bitmap.getHeight();
                int i2 = rn5Var2.c;
                float f7 = i2;
                int i3 = rn5Var2.d;
                float f8 = i3;
                if (height == f || f8 == f || height2 == f) {
                    return;
                }
                float f9 = width / height;
                float f10 = f9 < f7 / f8 ? width / f7 : height / f8;
                if (f10 > f2) {
                    f10 = f9 < width2 / height2 ? width / width2 : height / height2;
                }
                float f11 = (width / 2.0f) - (((i2 / 2) + rn5Var2.a) * f10);
                float f12 = (height / 2.0f) - (((i3 / 2) + rn5Var2.b) * f10);
                xn5Var.a.setScale(f10, f10);
                xn5Var.a.postTranslate(f11, f12);
                imageView.setScaleType(ImageView.ScaleType.MATRIX);
                imageView.setImageMatrix(xn5Var.a);
                imageView.setBackgroundColor(Color.parseColor(str));
                if (((av3) bv3.a(imageView.getContext(), "YadPreferenceFile")).a("preference_smart_centers_debug_enabled", false)) {
                    Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                    Canvas canvas = new Canvas(bitmapCopy);
                    Rect rect = xn5Var.c;
                    int i4 = rn5Var2.a;
                    int i5 = rn5Var2.b;
                    rect.set(i4, i5, rn5Var2.c + i4, rn5Var2.d + i5);
                    canvas.drawRect(rect, xn5Var.b);
                    imageView.setImageBitmap(bitmapCopy);
                    return;
                }
                return;
            }
        }
        ys ysVar = this.c;
        rd3 rd3Var3 = this.e;
        ysVar.getClass();
        RectF rectF2 = new RectF(0.0f, 0.0f, rd3Var3.a, rd3Var3.b);
        zn5 zn5Var4 = rd3Var3.e;
        if (zn5Var4 == null || (arrayList = zn5Var4.g) == null) {
            rn5Var = null;
        } else {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                while (it.hasNext()) {
                    rn5 rn5Var4 = (rn5) it.next();
                    next = (rn5) next;
                    float fA = vn5.a(next, rectF, rectF2);
                    float fA2 = vn5.a(rn5Var4, rectF, rectF2);
                    if (fA != Float.MAX_VALUE) {
                        if (fA == fA2) {
                            if (next.e > rn5Var4.e) {
                            }
                        } else if (fA > fA2) {
                        }
                    }
                    next = rn5Var4;
                }
                obj = next;
            } else {
                obj = null;
            }
            rn5Var = (rn5) obj;
        }
        if (rn5Var != null) {
            this.d.a(imageView, bitmap, rn5Var);
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        ImageView imageView = view instanceof ImageView ? (ImageView) view : null;
        if (imageView == null) {
            return;
        }
        boolean z = (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) ? false : true;
        boolean z2 = (i4 == i2 || i == i3) ? false : true;
        if (z && z2) {
            a(imageView);
        }
    }
}
