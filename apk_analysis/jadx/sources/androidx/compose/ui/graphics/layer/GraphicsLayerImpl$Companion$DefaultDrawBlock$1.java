package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayerImpl$Companion$DefaultDrawBlock$1 extends gh4 implements nl3<DrawScope, j59> {
    public static final GraphicsLayerImpl$Companion$DefaultDrawBlock$1 INSTANCE = new GraphicsLayerImpl$Companion$DefaultDrawBlock$1();

    public GraphicsLayerImpl$Companion$DefaultDrawBlock$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        DrawScope.m6800drawRectnJ9OG0$default(drawScope, Color.Companion.m6267getTransparent0d7_KjU(), 0L, 0L, 0.0f, null, null, 0, 126, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
