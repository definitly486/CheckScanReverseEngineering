package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.kx6;

/* JADX INFO: loaded from: classes2.dex */
public final class DropShadowPainter extends Painter {
    public static final int $stable = 8;
    private float alpha;
    private ColorFilter colorFilter;
    private LayoutDirection layoutDirection;
    private final DropShadowRendererProvider renderCreator;
    private final Shadow shadow;
    private final Shape shape;

    public DropShadowPainter(Shape shape, Shadow shadow, DropShadowRendererProvider dropShadowRendererProvider) {
        this.shape = shape;
        this.shadow = shadow;
        this.renderCreator = dropShadowRendererProvider;
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
        DropShadowRenderer dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0 = this.renderCreator.mo6933obtainDropShadowRenderereZhPAX0(this.shape, drawScope.mo6806getSizeNHjbRc(), drawScope.getLayoutDirection(), drawScope, this.shadow);
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(DpOffset.m9103getXD9Ej5fM(this.shadow.m6951getOffsetRKDOV3M()));
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(DpOffset.m9105getYD9Ej5fM(this.shadow.m6951getOffsetRKDOV3M()));
        drawScope.getDrawContext().getTransform().translate(fMo1434toPx0680j_4, fMo1434toPx0680j_5);
        try {
            dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0.m6955drawShadowerFMhIw(drawScope, this.colorFilter, drawScope.mo6806getSizeNHjbRc(), dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0.getShadow().m6950getColor0d7_KjU(), dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0.getShadow().getBrush(), kx6.d(this.alpha * dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0.getShadow().getAlpha(), 0.0f, 1.0f), dropShadowRendererMo6933obtainDropShadowRenderereZhPAX0.getShadow().m6949getBlendMode0nO6VwU());
        } finally {
            drawScope.getDrawContext().getTransform().translate(-fMo1434toPx0680j_4, -fMo1434toPx0680j_5);
        }
    }

    public DropShadowPainter(Shape shape, Shadow shadow) {
        this(shape, shadow, DropShadowRendererProvider.Companion.getDefault());
    }
}
