package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheDrawScope$record$1$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ nl3<ContentDrawScope, j59> $block;
    final /* synthetic */ Density $density;
    final /* synthetic */ LayoutDirection $layoutDirection;
    final /* synthetic */ Density $prevDensity;
    final /* synthetic */ LayoutDirection $prevLayoutDirection;
    final /* synthetic */ ContentDrawScope $scope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CacheDrawScope$record$1$1(nl3<? super ContentDrawScope, j59> nl3Var, ContentDrawScope contentDrawScope, Density density, LayoutDirection layoutDirection, Density density2, LayoutDirection layoutDirection2) {
        super(1);
        this.$block = nl3Var;
        this.$scope = contentDrawScope;
        this.$density = density;
        this.$layoutDirection = layoutDirection;
        this.$prevDensity = density2;
        this.$prevLayoutDirection = layoutDirection2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        DrawContext drawContext = drawScope.getDrawContext();
        Density density = this.$density;
        LayoutDirection layoutDirection = this.$layoutDirection;
        drawContext.setDensity(density);
        drawContext.setLayoutDirection(layoutDirection);
        try {
            this.$block.invoke(this.$scope);
        } finally {
            DrawContext drawContext2 = drawScope.getDrawContext();
            Density density2 = this.$prevDensity;
            LayoutDirection layoutDirection2 = this.$prevLayoutDirection;
            drawContext2.setDensity(density2);
            drawContext2.setLayoutDirection(layoutDirection2);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
