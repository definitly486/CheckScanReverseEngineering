package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ShadowKt {
    public static final Modifier dropShadow(Modifier modifier, Shape shape, Shadow shadow) {
        return modifier.then(new SimpleDropShadowElement(shape, shadow));
    }

    public static final Modifier innerShadow(Modifier modifier, Shape shape, Shadow shadow) {
        return modifier.then(new SimpleInnerShadowElement(shape, shadow));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resetShadow(ShadowScope shadowScope) {
        shadowScope.setRadius(0.0f);
        shadowScope.setSpread(0.0f);
        shadowScope.mo5751setOffsetk4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
        shadowScope.mo5750setColor8_81llA(Color.Companion.m6258getBlack0d7_KjU());
        shadowScope.setBrush(null);
        shadowScope.setAlpha(1.0f);
        shadowScope.mo5749setBlendModes9anfk8(BlendMode.Companion.m6172getSrcOver0nO6VwU());
    }

    /* JADX INFO: renamed from: shadow-s4CzXII, reason: not valid java name */
    public static final Modifier m5829shadows4CzXII(Modifier modifier, float f, Shape shape, boolean z, long j, long j2) {
        return (Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) > 0 || z) ? modifier.then(new ShadowGraphicsLayerElement(f, shape, z, j, j2, null)) : modifier;
    }

    /* JADX INFO: renamed from: shadow-s4CzXII$default, reason: not valid java name */
    public static /* synthetic */ Modifier m5830shadows4CzXII$default(Modifier modifier, float f, Shape shape, boolean z, long j, long j2, int i, Object obj) {
        boolean z2;
        Shape rectangleShape = (i & 2) != 0 ? RectangleShapeKt.getRectangleShape() : shape;
        if ((i & 4) != 0) {
            z2 = Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) > 0;
        } else {
            z2 = z;
        }
        return m5829shadows4CzXII(modifier, f, rectangleShape, z2, (i & 8) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j, (i & 16) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j2);
    }

    @ul2
    /* JADX INFO: renamed from: shadow-ziNgDLE, reason: not valid java name */
    public static final /* synthetic */ Modifier m5831shadowziNgDLE(Modifier modifier, float f, Shape shape, boolean z) {
        return m5829shadows4CzXII(modifier, f, shape, z, GraphicsLayerScopeKt.getDefaultShadowColor(), GraphicsLayerScopeKt.getDefaultShadowColor());
    }

    /* JADX INFO: renamed from: shadow-ziNgDLE$default, reason: not valid java name */
    public static /* synthetic */ Modifier m5832shadowziNgDLE$default(Modifier modifier, float f, Shape shape, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        if ((i & 4) != 0) {
            z = Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) > 0;
        }
        return m5831shadowziNgDLE(modifier, f, shape, z);
    }

    public static final Modifier dropShadow(Modifier modifier, Shape shape, nl3<? super DropShadowScope, j59> nl3Var) {
        return modifier.then(new BlockDropShadowElement(shape, nl3Var));
    }

    public static final Modifier innerShadow(Modifier modifier, Shape shape, nl3<? super InnerShadowScope, j59> nl3Var) {
        return modifier.then(new BlockInnerShadowElement(shape, nl3Var));
    }
}
