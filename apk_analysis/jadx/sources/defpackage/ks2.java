package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidColorFilter_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
public final class ks2 extends Painter implements RememberObserver {
    public final Drawable b;
    public final MutableState c;
    public final MutableState d;
    public final fh8 e;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b implements Drawable.Callback {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            drawable.getClass();
            ks2 ks2Var = ks2.this;
            MutableState mutableState = ks2Var.c;
            mutableState.setValue(Integer.valueOf(((Number) mutableState.getValue()).intValue() + 1));
            ks2Var.d.setValue(Size.m6044boximpl(ms2.a(ks2Var.b)));
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            drawable.getClass();
            runnable.getClass();
            ((Handler) ms2.a.getValue()).postAtTime(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            drawable.getClass();
            runnable.getClass();
            ((Handler) ms2.a.getValue()).removeCallbacks(runnable);
        }
    }

    public ks2(Drawable drawable) {
        drawable.getClass();
        this.b = drawable;
        this.c = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
        this.d = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m6044boximpl(ms2.a(drawable)), null, 2, null);
        this.e = new fh8(new ze(this, 3));
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.b.setAlpha(kx6.f(w65.b(f * 255.0f), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter != null ? AndroidColorFilter_androidKt.asAndroidColorFilter(colorFilter) : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyLayoutDirection(LayoutDirection layoutDirection) {
        layoutDirection.getClass();
        int i = a.a[layoutDirection.ordinal()];
        int i2 = 0;
        if (i != 1) {
            if (i != 2) {
                me0.e();
                return false;
            }
            i2 = 1;
        }
        return this.b.setLayoutDirection(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo6926getIntrinsicSizeNHjbRc() {
        return ((Size) this.d.getValue()).m6061unboximpl();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        onForgotten();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        drawScope.getClass();
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        ((Number) this.c.getValue()).intValue();
        try {
            canvas.save();
            int i = Build.VERSION.SDK_INT;
            Drawable drawable = this.b;
            if (i < 28 || i >= 31 || !js2.e(drawable)) {
                drawable.setBounds(0, 0, w65.b(Size.m6056getWidthimpl(drawScope.mo6806getSizeNHjbRc())), w65.b(Size.m6053getHeightimpl(drawScope.mo6806getSizeNHjbRc())));
            } else {
                canvas.scale(Size.m6056getWidthimpl(drawScope.mo6806getSizeNHjbRc()) / Size.m6056getWidthimpl(mo6926getIntrinsicSizeNHjbRc()), Size.m6053getHeightimpl(drawScope.mo6806getSizeNHjbRc()) / Size.m6053getHeightimpl(mo6926getIntrinsicSizeNHjbRc()));
            }
            drawable.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        } finally {
            canvas.restore();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        Drawable drawable = this.b;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        Drawable.Callback callback = (Drawable.Callback) this.e.getValue();
        Drawable drawable = this.b;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }
}
