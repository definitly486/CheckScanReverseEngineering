package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.shadow.ShadowContext;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheDrawScope implements Density {
    public static final int $stable = 0;
    private BuildDrawCacheParams cacheParams = EmptyBuildDrawCacheParams.INSTANCE;
    private ContentDrawScope contentDrawScope;
    private DrawResult drawResult;
    private ll3<? extends GraphicsContext> graphicsContextProvider;

    /* JADX INFO: renamed from: record-TdoYBX4$default, reason: not valid java name */
    public static /* synthetic */ void m5766recordTdoYBX4$default(CacheDrawScope cacheDrawScope, GraphicsLayer graphicsLayer, Density density, LayoutDirection layoutDirection, long j, nl3 nl3Var, int i, Object obj) {
        Density density2 = density;
        if ((i & 1) != 0) {
            density2 = cacheDrawScope;
        }
        if ((i & 2) != 0) {
            layoutDirection = cacheDrawScope.getLayoutDirection();
        }
        if ((i & 4) != 0) {
            j = IntSizeKt.m9224toIntSizeuvyYCjk(cacheDrawScope.m5767getSizeNHjbRc());
        }
        cacheDrawScope.m5768recordTdoYBX4(graphicsLayer, density2, layoutDirection, j, nl3Var);
    }

    public final BuildDrawCacheParams getCacheParams$ui() {
        return this.cacheParams;
    }

    public final ContentDrawScope getContentDrawScope$ui() {
        return this.contentDrawScope;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.cacheParams.getDensity().getDensity();
    }

    public final DrawResult getDrawResult$ui() {
        return this.drawResult;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.cacheParams.getDensity().getFontScale();
    }

    public final ll3<GraphicsContext> getGraphicsContextProvider$ui() {
        return this.graphicsContextProvider;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.cacheParams.getLayoutDirection();
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m5767getSizeNHjbRc() {
        return this.cacheParams.mo5765getSizeNHjbRc();
    }

    public final GraphicsLayer obtainGraphicsLayer() {
        ll3<? extends GraphicsContext> ll3Var = this.graphicsContextProvider;
        ll3Var.getClass();
        return ll3Var.invoke().createGraphicsLayer();
    }

    public final ShadowContext obtainShadowContext() {
        ll3<? extends GraphicsContext> ll3Var = this.graphicsContextProvider;
        ll3Var.getClass();
        return ll3Var.invoke().getShadowContext();
    }

    public final DrawResult onDrawBehind(nl3<? super DrawScope, j59> nl3Var) {
        return onDrawWithContent(new AnonymousClass1(nl3Var));
    }

    public final DrawResult onDrawWithContent(nl3<? super ContentDrawScope, j59> nl3Var) {
        DrawResult drawResult = new DrawResult(nl3Var);
        this.drawResult = drawResult;
        return drawResult;
    }

    /* JADX INFO: renamed from: record-TdoYBX4, reason: not valid java name */
    public final void m5768recordTdoYBX4(GraphicsLayer graphicsLayer, Density density, LayoutDirection layoutDirection, long j, nl3<? super ContentDrawScope, j59> nl3Var) {
        ContentDrawScope contentDrawScope = this.contentDrawScope;
        contentDrawScope.getClass();
        contentDrawScope.mo6807recordJVtK1S4(graphicsLayer, j, new CacheDrawScope$record$1$1(nl3Var, contentDrawScope, density, layoutDirection, contentDrawScope.getDrawContext().getDensity(), contentDrawScope.getDrawContext().getLayoutDirection()));
    }

    public final void setCacheParams$ui(BuildDrawCacheParams buildDrawCacheParams) {
        this.cacheParams = buildDrawCacheParams;
    }

    public final void setContentDrawScope$ui(ContentDrawScope contentDrawScope) {
        this.contentDrawScope = contentDrawScope;
    }

    public final void setDrawResult$ui(DrawResult drawResult) {
        this.drawResult = drawResult;
    }

    public final void setGraphicsContextProvider$ui(ll3<? extends GraphicsContext> ll3Var) {
        this.graphicsContextProvider = ll3Var;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.draw.CacheDrawScope$onDrawBehind$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<ContentDrawScope, j59> {
        final /* synthetic */ nl3<DrawScope, j59> $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super DrawScope, j59> nl3Var) {
            super(1);
            this.$block = nl3Var;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ContentDrawScope contentDrawScope) {
            this.$block.invoke(contentDrawScope);
            contentDrawScope.drawContent();
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(ContentDrawScope contentDrawScope) {
            invoke2(contentDrawScope);
            return j59.a;
        }
    }
}
