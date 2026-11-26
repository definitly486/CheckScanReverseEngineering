package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jh2;
import defpackage.kx6;

/* JADX INFO: loaded from: classes2.dex */
public final class InnerShadowPainter extends Painter {
    public static final int $stable = 8;
    private float alpha;
    private ColorFilter colorFilter;
    private LayoutDirection layoutDirection;
    private final InnerShadowRendererProvider renderCreator;
    private final Shadow shadow;
    private final Shape shape;

    public InnerShadowPainter(Shape shape, Shadow shadow, InnerShadowRendererProvider innerShadowRendererProvider) {
        this.shape = shape;
        this.shadow = shadow;
        this.renderCreator = innerShadowRendererProvider;
        this.alpha = 1.0f;
        this.layoutDirection = LayoutDirection.Ltr;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection = layoutDirection;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public long mo6926getIntrinsicSizeNHjbRc() {
        return Size.Companion.m6064getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(DrawScope drawScope) {
        this.renderCreator.mo6934obtainInnerShadowRenderereZhPAX0(this.shape, drawScope.mo6806getSizeNHjbRc(), drawScope.getLayoutDirection(), drawScope, this.shadow).m6955drawShadowerFMhIw(drawScope, this.colorFilter, drawScope.mo6806getSizeNHjbRc(), this.shadow.m6950getColor0d7_KjU(), this.shadow.getBrush(), kx6.d(this.shadow.getAlpha() * this.alpha, 0.0f, 1.0f), this.shadow.m6949getBlendMode0nO6VwU());
    }

    public /* synthetic */ InnerShadowPainter(Shape shape, Shadow shadow, InnerShadowRendererProvider innerShadowRendererProvider, int i, jh2 jh2Var) {
        this(shape, shadow, (i & 4) != 0 ? InnerShadowRendererProvider.Companion.getDefault() : innerShadowRendererProvider);
    }

    public InnerShadowPainter(Shape shape, Shadow shadow) {
        this(shape, shadow, InnerShadowRendererProvider.Companion.getDefault());
    }
}
