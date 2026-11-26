package com.skydoves.balloon.overlay;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import defpackage.a17;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n36;
import defpackage.oy1;
import defpackage.p80;
import defpackage.q80;
import defpackage.r80;
import defpackage.s80;
import defpackage.t80;
import defpackage.tg5;
import defpackage.u96;
import defpackage.x07;
import defpackage.ze4;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class BalloonAnchorOverlayView extends View {
    public static final /* synthetic */ ze4<Object>[] n;
    public final n36 b;
    public final n36 c;
    public final n36 d;
    public final n36 e;
    public final n36 f;
    public final n36 g;
    public final n36 h;
    public final n36 i;
    public Bitmap j;
    public final Paint k;
    public final Paint l;
    public boolean m;

    static {
        tg5 tg5Var = new tg5(BalloonAnchorOverlayView.class, "anchorView", "getAnchorView()Landroid/view/View;", 0);
        a17 a17Var = x07.a;
        a17Var.getClass();
        tg5 tg5Var2 = new tg5(BalloonAnchorOverlayView.class, "anchorViewList", "getAnchorViewList()Ljava/util/List;", 0);
        a17Var.getClass();
        tg5 tg5Var3 = new tg5(BalloonAnchorOverlayView.class, "overlayColor", "getOverlayColor()I", 0);
        a17Var.getClass();
        tg5 tg5Var4 = new tg5(BalloonAnchorOverlayView.class, "overlayPaddingColor", "getOverlayPaddingColor()I", 0);
        a17Var.getClass();
        tg5 tg5Var5 = new tg5(BalloonAnchorOverlayView.class, "overlayPaddingShader", "getOverlayPaddingShader()Landroid/graphics/Shader;", 0);
        a17Var.getClass();
        tg5 tg5Var6 = new tg5(BalloonAnchorOverlayView.class, "overlayPadding", "getOverlayPadding()Lcom/skydoves/balloon/BalloonOverlayPadding;", 0);
        a17Var.getClass();
        tg5 tg5Var7 = new tg5(BalloonAnchorOverlayView.class, "overlayPosition", "getOverlayPosition()Landroid/graphics/Point;", 0);
        a17Var.getClass();
        tg5 tg5Var8 = new tg5(BalloonAnchorOverlayView.class, "balloonOverlayShape", "getBalloonOverlayShape()Lcom/skydoves/balloon/overlay/BalloonOverlayShape;", 0);
        a17Var.getClass();
        n = new ze4[]{tg5Var, tg5Var2, tg5Var3, tg5Var4, tg5Var5, tg5Var6, tg5Var7, tg5Var8};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.b = u96.p(this, null);
        this.c = u96.p(this, null);
        this.d = u96.p(this, 0);
        this.e = u96.p(this, 0);
        this.f = u96.p(this, null);
        this.g = u96.p(this, new r80());
        this.h = u96.p(this, null);
        this.i = u96.p(this, q80.a);
        Paint paint = new Paint(1);
        this.k = paint;
        Paint paint2 = new Paint(1);
        this.l = paint2;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        paint2.setDither(true);
    }

    private final int getStatusBarHeight() {
        Rect rect = new Rect();
        Context context = getContext();
        context.getClass();
        Activity activityA = oy1.a(context);
        if (activityA == null) {
            return 0;
        }
        activityA.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    public final void a(View view, Canvas canvas) {
        RectF rectF;
        if (view != null) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            rect.offset((int) view.getTranslationX(), (int) view.getTranslationY());
            Point overlayPosition = getOverlayPosition();
            if (overlayPosition != null) {
                float f = overlayPosition.x;
                getOverlayPadding().getClass();
                float f2 = overlayPosition.y;
                getOverlayPadding().getClass();
                float statusBarHeight = (f2 - 0.0f) + getStatusBarHeight();
                float width = view.getWidth() + overlayPosition.x;
                getOverlayPadding().getClass();
                float height = view.getHeight() + overlayPosition.y;
                getOverlayPadding().getClass();
                rectF = new RectF(f - 0.0f, statusBarHeight, width + 0.0f, height + 0.0f + getStatusBarHeight());
            } else {
                float f3 = rect.left;
                getOverlayPadding().getClass();
                float f4 = rect.top;
                getOverlayPadding().getClass();
                float f5 = rect.right;
                getOverlayPadding().getClass();
                float f6 = rect.bottom;
                getOverlayPadding().getClass();
                rectF = new RectF(f3 - 0.0f, f4 - 0.0f, f5 + 0.0f, f6 + 0.0f);
            }
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            RectF rectF2 = new RectF(rectF);
            rectF2.inset(0.0f, 0.0f);
            t80 balloonOverlayShape = getBalloonOverlayShape();
            if (balloonOverlayShape instanceof q80) {
                canvas.drawOval(rectF, this.k);
                canvas.drawOval(rectF2, this.l);
            } else {
                if ((balloonOverlayShape instanceof p80) || (balloonOverlayShape instanceof s80)) {
                    return;
                }
                me0.e();
            }
        }
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        View anchorView;
        View anchorView2;
        Bitmap bitmap;
        canvas.getClass();
        if ((this.m || (bitmap = this.j) == null || bitmap.isRecycled()) && getWidth() != 0 && getHeight() != 0 && (((anchorView = getAnchorView()) == null || anchorView.getWidth() != 0) && ((anchorView2 = getAnchorView()) == null || anchorView2.getHeight() != 0))) {
            Bitmap bitmap2 = this.j;
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            this.j = bitmapCreateBitmap;
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
            Paint paint = this.k;
            paint.setXfermode(porterDuffXfermode);
            paint.setColor(getOverlayColor());
            canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            paint.setColor(0);
            int overlayPaddingColor = getOverlayPaddingColor();
            Paint paint2 = this.l;
            paint2.setColor(overlayPaddingColor);
            paint2.setStyle(Paint.Style.STROKE);
            getOverlayPadding().getClass();
            paint2.setStrokeWidth(0.0f);
            paint2.setShader(getOverlayPaddingShader());
            List<View> anchorViewList = getAnchorViewList();
            if (anchorViewList == null || anchorViewList.isEmpty()) {
                a(getAnchorView(), canvas2);
            } else {
                List<View> anchorViewList2 = getAnchorViewList();
                if (anchorViewList2 != null) {
                    Iterator<T> it = anchorViewList2.iterator();
                    while (it.hasNext()) {
                        a((View) it.next(), canvas2);
                    }
                }
            }
            this.m = false;
        }
        Bitmap bitmap3 = this.j;
        if (bitmap3 == null || bitmap3.isRecycled()) {
            return;
        }
        canvas.drawBitmap(bitmap3, 0.0f, 0.0f, (Paint) null);
    }

    public final View getAnchorView() {
        ze4<Object> ze4Var = n[0];
        n36 n36Var = this.b;
        n36Var.getClass();
        ze4Var.getClass();
        return (View) n36Var.d;
    }

    public final List<View> getAnchorViewList() {
        ze4<Object> ze4Var = n[1];
        n36 n36Var = this.c;
        n36Var.getClass();
        ze4Var.getClass();
        return (List) n36Var.d;
    }

    public final t80 getBalloonOverlayShape() {
        ze4<Object> ze4Var = n[7];
        n36 n36Var = this.i;
        n36Var.getClass();
        ze4Var.getClass();
        return (t80) n36Var.d;
    }

    public final int getOverlayColor() {
        ze4<Object> ze4Var = n[2];
        n36 n36Var = this.d;
        n36Var.getClass();
        ze4Var.getClass();
        return ((Number) n36Var.d).intValue();
    }

    public final r80 getOverlayPadding() {
        ze4<Object> ze4Var = n[5];
        n36 n36Var = this.g;
        n36Var.getClass();
        ze4Var.getClass();
        return (r80) n36Var.d;
    }

    public final int getOverlayPaddingColor() {
        ze4<Object> ze4Var = n[3];
        n36 n36Var = this.e;
        n36Var.getClass();
        ze4Var.getClass();
        return ((Number) n36Var.d).intValue();
    }

    public final Shader getOverlayPaddingShader() {
        ze4<Object> ze4Var = n[4];
        n36 n36Var = this.f;
        n36Var.getClass();
        ze4Var.getClass();
        return (Shader) n36Var.d;
    }

    public final Point getOverlayPosition() {
        ze4<Object> ze4Var = n[6];
        n36 n36Var = this.h;
        n36Var.getClass();
        ze4Var.getClass();
        return (Point) n36Var.d;
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.m = true;
    }

    public final void setAnchorView(View view) {
        this.b.a(this, n[0], view);
    }

    public final void setAnchorViewList(List<? extends View> list) {
        this.c.a(this, n[1], list);
    }

    public final void setBalloonOverlayShape(t80 t80Var) {
        t80Var.getClass();
        this.i.a(this, n[7], t80Var);
    }

    public final void setOverlayColor(int i) {
        this.d.a(this, n[2], Integer.valueOf(i));
    }

    public final void setOverlayPadding(r80 r80Var) {
        r80Var.getClass();
        this.g.a(this, n[5], r80Var);
    }

    public final void setOverlayPaddingColor(int i) {
        this.e.a(this, n[3], Integer.valueOf(i));
    }

    public final void setOverlayPaddingShader(Shader shader) {
        this.f.a(this, n[4], shader);
    }

    public final void setOverlayPosition(Point point) {
        this.h.a(this, n[6], point);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ BalloonAnchorOverlayView(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
