package defpackage;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import androidx.core.graphics.PaintCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class xu5 {
    public static final Matrix B = new Matrix();
    public et2 A;
    public Canvas a;
    public b b;
    public c c;
    public RectF d;
    public RectF e;
    public Rect f;
    public RectF g;
    public RectF h;
    public Rect i;
    public RectF j;
    public ch4 k;
    public Bitmap l;
    public Canvas m;
    public Rect n;
    public ch4 o;
    public Matrix p;
    public float[] q;
    public Bitmap r;
    public Bitmap s;
    public Canvas t;
    public Canvas u;
    public ch4 v;
    public BlurMaskFilter w;
    public float x = 0.0f;
    public RenderNode y;
    public RenderNode z;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            a = iArr;
            try {
                iArr[c.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.SAVE_LAYER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[c.RENDER_NODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class b {
        public int a = 255;
        public et2 b = null;

        public final boolean a() {
            return this.b != null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c BITMAP;
        public static final c DIRECT;
        public static final c RENDER_NODE;
        public static final c SAVE_LAYER;

        static {
            c cVar = new c("DIRECT", 0);
            DIRECT = cVar;
            c cVar2 = new c("SAVE_LAYER", 1);
            SAVE_LAYER = cVar2;
            c cVar3 = new c("BITMAP", 2);
            BITMAP = cVar3;
            c cVar4 = new c("RENDER_NODE", 3);
            RENDER_NODE = cVar4;
            $VALUES = new c[]{cVar, cVar2, cVar3, cVar4};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public static Bitmap a(RectF rectF, Bitmap.Config config) {
        return Bitmap.createBitmap(Math.max((int) Math.ceil(((double) rectF.width()) * 1.05d), 1), Math.max((int) Math.ceil(((double) rectF.height()) * 1.05d), 1), config);
    }

    public static boolean d(Bitmap bitmap, RectF rectF) {
        return bitmap == null || rectF.width() >= ((float) bitmap.getWidth()) || rectF.height() >= ((float) bitmap.getHeight()) || rectF.width() < ((float) bitmap.getWidth()) * 0.75f || rectF.height() < ((float) bitmap.getHeight()) * 0.75f;
    }

    public final RectF b(RectF rectF, et2 et2Var) {
        if (this.e == null) {
            this.e = new RectF();
        }
        if (this.g == null) {
            this.g = new RectF();
        }
        this.e.set(rectF);
        this.e.offsetTo(rectF.left + et2Var.b, rectF.top + et2Var.c);
        RectF rectF2 = this.e;
        float f = et2Var.a;
        rectF2.inset(-f, -f);
        this.g.set(rectF);
        this.e.union(this.g);
        return this.e;
    }

    public final void c() {
        float f;
        ch4 ch4Var;
        if (this.a == null || this.b == null || this.q == null || this.d == null) {
            ah.f("OffscreenBitmap: finish() call without matching start()");
            return;
        }
        int i = a.a[this.c.ordinal()];
        if (i == 1 || i == 2) {
            this.a.restore();
        } else {
            if (i != 3) {
                if (i == 4) {
                    if (this.y == null) {
                        ah.f("RenderNode is not ready; should've been initialized at start() time");
                        return;
                    }
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 29) {
                        ah.f("RenderNode not supported but we chose it as render strategy");
                        return;
                    }
                    this.a.save();
                    Canvas canvas = this.a;
                    float[] fArr = this.q;
                    canvas.scale(1.0f / fArr[0], 1.0f / fArr[4]);
                    this.y.endRecording();
                    if (this.b.a()) {
                        Canvas canvas2 = this.a;
                        et2 et2Var = this.b.b;
                        if (this.y == null || this.z == null) {
                            ah.f("Cannot render to render node outside a start()/finish() block");
                            return;
                        }
                        if (i2 < 31) {
                            n7.g("RenderEffect is not supported on API level <31");
                            return;
                        }
                        float[] fArr2 = this.q;
                        float f2 = fArr2 != null ? fArr2[0] : 1.0f;
                        f = fArr2 != null ? fArr2[4] : 1.0f;
                        et2 et2Var2 = this.A;
                        if (et2Var2 == null || et2Var.a != et2Var2.a || et2Var.b != et2Var2.b || et2Var.c != et2Var2.c || et2Var.d != et2Var2.d) {
                            RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(et2Var.d, PorterDuff.Mode.SRC_IN));
                            float f3 = et2Var.a;
                            if (f3 > 0.0f) {
                                float f4 = ((f2 + f) * f3) / 2.0f;
                                renderEffectCreateColorFilterEffect = RenderEffect.createBlurEffect(f4, f4, renderEffectCreateColorFilterEffect, Shader.TileMode.CLAMP);
                            }
                            this.z.setRenderEffect(renderEffectCreateColorFilterEffect);
                            this.A = et2Var;
                        }
                        RectF rectFB = b(this.d, et2Var);
                        RectF rectF = new RectF(rectFB.left * f2, rectFB.top * f, rectFB.right * f2, rectFB.bottom * f);
                        this.z.setPosition(0, 0, (int) rectF.width(), (int) rectF.height());
                        RecordingCanvas recordingCanvasBeginRecording = this.z.beginRecording((int) rectF.width(), (int) rectF.height());
                        recordingCanvasBeginRecording.translate((et2Var.b * f2) + (-rectF.left), (et2Var.c * f) + (-rectF.top));
                        recordingCanvasBeginRecording.drawRenderNode(this.y);
                        this.z.endRecording();
                        canvas2.save();
                        canvas2.translate(rectF.left, rectF.top);
                        canvas2.drawRenderNode(this.z);
                        canvas2.restore();
                    }
                    this.a.drawRenderNode(this.y);
                    this.a.restore();
                }
            } else {
                if (this.l == null) {
                    ah.f("Bitmap is not ready; should've been initialized at start() time");
                    return;
                }
                if (this.b.a()) {
                    Canvas canvas3 = this.a;
                    et2 et2Var3 = this.b.b;
                    RectF rectF2 = this.d;
                    if (rectF2 == null || this.l == null) {
                        ah.f("Cannot render to bitmap outside a start()/finish() block");
                        return;
                    }
                    RectF rectFB2 = b(rectF2, et2Var3);
                    Rect rect = this.f;
                    if (rect == null) {
                        rect = new Rect();
                        this.f = rect;
                    }
                    rect.set((int) Math.floor(rectFB2.left), (int) Math.floor(rectFB2.top), (int) Math.ceil(rectFB2.right), (int) Math.ceil(rectFB2.bottom));
                    float[] fArr3 = this.q;
                    float f5 = fArr3 != null ? fArr3[0] : 1.0f;
                    f = fArr3 != null ? fArr3[4] : 1.0f;
                    RectF rectF3 = this.h;
                    if (rectF3 == null) {
                        rectF3 = new RectF();
                        this.h = rectF3;
                    }
                    rectF3.set(rectFB2.left * f5, rectFB2.top * f, rectFB2.right * f5, rectFB2.bottom * f);
                    Rect rect2 = this.i;
                    if (rect2 == null) {
                        rect2 = new Rect();
                        this.i = rect2;
                    }
                    rect2.set(0, 0, Math.round(this.h.width()), Math.round(this.h.height()));
                    if (d(this.r, this.h)) {
                        Bitmap bitmap = this.r;
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        Bitmap bitmap2 = this.s;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                        }
                        this.r = a(this.h, Bitmap.Config.ARGB_8888);
                        this.s = a(this.h, Bitmap.Config.ALPHA_8);
                        this.t = new Canvas(this.r);
                        this.u = new Canvas(this.s);
                    } else {
                        Canvas canvas4 = this.t;
                        if (canvas4 == null || this.u == null || (ch4Var = this.o) == null) {
                            ah.f("If needNewBitmap() returns true, we should have a canvas and bitmap ready");
                            return;
                        } else {
                            canvas4.drawRect(this.i, ch4Var);
                            this.u.drawRect(this.i, this.o);
                        }
                    }
                    if (this.s == null) {
                        ah.f("Expected to have allocated a shadow mask bitmap");
                        return;
                    }
                    if (this.v == null) {
                        this.v = new ch4(1);
                    }
                    RectF rectF4 = this.d;
                    this.u.drawBitmap(this.l, Math.round((rectF4.left - rectFB2.left) * f5), Math.round((rectF4.top - rectFB2.top) * f), (Paint) null);
                    if (this.w == null || this.x != et2Var3.a) {
                        float f6 = ((f5 + f) * et2Var3.a) / 2.0f;
                        if (f6 > 0.0f) {
                            this.w = new BlurMaskFilter(f6, BlurMaskFilter.Blur.NORMAL);
                        } else {
                            this.w = null;
                        }
                        this.x = et2Var3.a;
                    }
                    this.v.setColor(et2Var3.d);
                    float f7 = et2Var3.a;
                    ch4 ch4Var2 = this.v;
                    if (f7 > 0.0f) {
                        ch4Var2.setMaskFilter(this.w);
                    } else {
                        ch4Var2.setMaskFilter(null);
                    }
                    this.v.setFilterBitmap(true);
                    this.t.drawBitmap(this.s, Math.round(et2Var3.b * f5), Math.round(et2Var3.c * f), this.v);
                    canvas3.drawBitmap(this.r, this.i, this.f, this.k);
                }
                Rect rect3 = this.n;
                if (rect3 == null) {
                    rect3 = new Rect();
                    this.n = rect3;
                }
                rect3.set(0, 0, (int) (this.d.width() * this.q[0]), (int) (this.d.height() * this.q[4]));
                this.a.drawBitmap(this.l, this.n, this.d, this.k);
            }
        }
        this.a = null;
    }

    public final Canvas e(Canvas canvas, RectF rectF, b bVar) {
        c cVar;
        if (this.a != null) {
            ah.f("Cannot nest start() calls on a single OffscreenBitmap - call finish() first");
            return null;
        }
        if (this.q == null) {
            this.q = new float[9];
        }
        Matrix matrix = this.p;
        if (matrix == null) {
            matrix = new Matrix();
            this.p = matrix;
        }
        canvas.getMatrix(matrix);
        this.p.getValues(this.q);
        float[] fArr = this.q;
        float f = fArr[0];
        float f2 = fArr[4];
        RectF rectF2 = this.j;
        if (rectF2 == null) {
            rectF2 = new RectF();
            this.j = rectF2;
        }
        rectF2.set(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
        this.a = canvas;
        this.b = bVar;
        if (bVar.a >= 255 && !bVar.a()) {
            cVar = c.DIRECT;
        } else if (bVar.a()) {
            int i = Build.VERSION.SDK_INT;
            cVar = (i < 29 || !canvas.isHardwareAccelerated() || i <= 31) ? c.BITMAP : c.RENDER_NODE;
        } else {
            cVar = c.SAVE_LAYER;
        }
        this.c = cVar;
        RectF rectF3 = this.d;
        if (rectF3 == null) {
            rectF3 = new RectF();
            this.d = rectF3;
        }
        rectF3.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        ch4 ch4Var = this.k;
        if (ch4Var == null) {
            ch4Var = new ch4();
            this.k = ch4Var;
        }
        ch4Var.reset();
        int i2 = a.a[this.c.ordinal()];
        if (i2 == 1) {
            canvas.save();
            return canvas;
        }
        if (i2 == 2) {
            this.k.setAlpha(bVar.a);
            this.k.setColorFilter(null);
            ib9.e(canvas, this.k, rectF);
            return canvas;
        }
        Matrix matrix2 = B;
        if (i2 == 3) {
            if (this.o == null) {
                ch4 ch4Var2 = new ch4();
                this.o = ch4Var2;
                ch4Var2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            if (d(this.l, this.j)) {
                Bitmap bitmap = this.l;
                if (bitmap != null) {
                    bitmap.recycle();
                }
                this.l = a(this.j, Bitmap.Config.ARGB_8888);
                this.m = new Canvas(this.l);
            } else {
                Canvas canvas2 = this.m;
                if (canvas2 == null) {
                    ah.f("If needNewBitmap() returns true, we should have a canvas ready");
                    return null;
                }
                canvas2.setMatrix(matrix2);
                this.m.drawRect(-1.0f, -1.0f, this.j.width() + 1.0f, this.j.height() + 1.0f, this.o);
            }
            PaintCompat.setBlendMode(this.k, null);
            this.k.setColorFilter(null);
            this.k.setAlpha(bVar.a);
            Canvas canvas3 = this.m;
            canvas3.scale(f, f2);
            canvas3.translate(-rectF.left, -rectF.top);
            return canvas3;
        }
        if (i2 != 4) {
            n7.g("Invalid render strategy for OffscreenLayer");
            return null;
        }
        if (Build.VERSION.SDK_INT < 29) {
            ah.f("RenderNode not supported but we chose it as render strategy");
            return null;
        }
        if (this.y == null) {
            this.y = new RenderNode("OffscreenLayer.main");
        }
        if (bVar.a() && this.z == null) {
            this.z = new RenderNode("OffscreenLayer.shadow");
            this.A = null;
        }
        this.y.setAlpha(bVar.a / 255.0f);
        if (bVar.a()) {
            RenderNode renderNode = this.z;
            if (renderNode == null) {
                ah.f("Must initialize shadowRenderNode when we have shadow");
                return null;
            }
            renderNode.setAlpha(bVar.a / 255.0f);
        }
        this.y.setHasOverlappingRendering(true);
        RenderNode renderNode2 = this.y;
        RectF rectF4 = this.j;
        renderNode2.setPosition((int) rectF4.left, (int) rectF4.top, (int) rectF4.right, (int) rectF4.bottom);
        RecordingCanvas recordingCanvasBeginRecording = this.y.beginRecording((int) this.j.width(), (int) this.j.height());
        recordingCanvasBeginRecording.setMatrix(matrix2);
        recordingCanvasBeginRecording.scale(f, f2);
        recordingCanvasBeginRecording.translate(-rectF.left, -rectF.top);
        return recordingCanvasBeginRecording;
    }
}
