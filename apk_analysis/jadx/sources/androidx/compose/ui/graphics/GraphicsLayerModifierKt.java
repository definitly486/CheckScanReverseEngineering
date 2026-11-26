package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayerModifierKt {
    private static ReusableGraphicsLayerScope reusableGraphicsLayerScope;

    public static final Modifier graphicsLayer(Modifier modifier, nl3<? super GraphicsLayerScope, j59> nl3Var) {
        return modifier.then(new BlockGraphicsLayerElement(nl3Var));
    }

    @ul2
    /* JADX INFO: renamed from: graphicsLayer-2Xn7asI, reason: not valid java name */
    public static final /* synthetic */ Modifier m6392graphicsLayer2Xn7asI(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect) {
        return m6396graphicsLayer_6ThJ44(modifier, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, GraphicsLayerScopeKt.getDefaultShadowColor(), GraphicsLayerScopeKt.getDefaultShadowColor(), CompositingStrategy.Companion.m6321getAutoNrFUSI(), BlendMode.Companion.m6172getSrcOver0nO6VwU(), null);
    }

    @ul2
    /* JADX INFO: renamed from: graphicsLayer-Ap8cVGQ, reason: not valid java name */
    public static final /* synthetic */ Modifier m6394graphicsLayerAp8cVGQ(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i) {
        return m6396graphicsLayer_6ThJ44(modifier, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, i, BlendMode.Companion.m6172getSrcOver0nO6VwU(), null);
    }

    /* JADX INFO: renamed from: graphicsLayer-_6ThJ44, reason: not valid java name */
    public static final Modifier m6396graphicsLayer_6ThJ44(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, int i2, ColorFilter colorFilter) {
        return modifier.then(new GraphicsLayerElement(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, i, i2, colorFilter, null));
    }

    /* JADX INFO: renamed from: graphicsLayer-_6ThJ44$default, reason: not valid java name */
    public static /* synthetic */ Modifier m6397graphicsLayer_6ThJ44$default(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, int i2, ColorFilter colorFilter, int i3, Object obj) {
        return m6396graphicsLayer_6ThJ44(modifier, (i3 & 1) != 0 ? 1.0f : f, (i3 & 2) != 0 ? 1.0f : f2, (i3 & 4) == 0 ? f3 : 1.0f, (i3 & 8) != 0 ? 0.0f : f4, (i3 & 16) != 0 ? 0.0f : f5, (i3 & 32) != 0 ? 0.0f : f6, (i3 & 64) != 0 ? 0.0f : f7, (i3 & 128) != 0 ? 0.0f : f8, (i3 & 256) == 0 ? f9 : 0.0f, (i3 & 512) != 0 ? 8.0f : f10, (i3 & 1024) != 0 ? TransformOrigin.Companion.m6645getCenterSzJe1aQ() : j, (i3 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : shape, (i3 & 4096) != 0 ? false : z, (i3 & 8192) != 0 ? null : renderEffect, (i3 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j2, (32768 & i3) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j3, (65536 & i3) != 0 ? CompositingStrategy.Companion.m6321getAutoNrFUSI() : i, (i3 & 131072) != 0 ? BlendMode.Companion.m6172getSrcOver0nO6VwU() : i2, (i3 & 262144) != 0 ? null : colorFilter);
    }

    @ul2
    /* JADX INFO: renamed from: graphicsLayer-pANQ8Wg, reason: not valid java name */
    public static final /* synthetic */ Modifier m6398graphicsLayerpANQ8Wg(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3) {
        return m6396graphicsLayer_6ThJ44(modifier, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, CompositingStrategy.Companion.m6321getAutoNrFUSI(), BlendMode.Companion.m6172getSrcOver0nO6VwU(), null);
    }

    @ul2
    /* JADX INFO: renamed from: graphicsLayer-sKFY_QE, reason: not valid java name */
    public static final /* synthetic */ Modifier m6400graphicsLayersKFY_QE(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z) {
        return m6397graphicsLayer_6ThJ44$default(modifier, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, null, 0L, 0L, 0, BlendMode.Companion.m6172getSrcOver0nO6VwU(), null, 114688, null);
    }

    /* JADX INFO: renamed from: graphicsLayer-sKFY_QE$default, reason: not valid java name */
    public static /* synthetic */ Modifier m6401graphicsLayersKFY_QE$default(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return m6400graphicsLayersKFY_QE(modifier, f, (i & 2) != 0 ? 1.0f : f2, (i & 4) == 0 ? f3 : 1.0f, (i & 8) != 0 ? 0.0f : f4, (i & 16) != 0 ? 0.0f : f5, (i & 32) != 0 ? 0.0f : f6, (i & 64) != 0 ? 0.0f : f7, (i & 128) != 0 ? 0.0f : f8, (i & 256) == 0 ? f9 : 0.0f, (i & 512) != 0 ? 8.0f : f10, (i & 1024) != 0 ? TransformOrigin.Companion.m6645getCenterSzJe1aQ() : j, (i & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : shape, (i & 4096) != 0 ? false : z);
    }

    public static final Modifier toolingGraphicsLayer(Modifier modifier) {
        return InspectableValueKt.isDebugInspectorInfoEnabled() ? modifier.then(m6397graphicsLayer_6ThJ44$default(Modifier.Companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 0, null, 524287, null)) : modifier;
    }
}
