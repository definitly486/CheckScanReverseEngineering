package androidx.compose.ui.draganddrop;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeDragShadowBuilder extends View.DragShadowBuilder {
    public static final int $stable = 8;
    private final long decorationSize;
    private final Density density;
    private final nl3<DrawScope, j59> drawDragDecoration;

    /* JADX WARN: Multi-variable type inference failed */
    private ComposeDragShadowBuilder(Density density, long j, nl3<? super DrawScope, j59> nl3Var) {
        this.density = density;
        this.decorationSize = j;
        this.drawDragDecoration = nl3Var;
    }

    @Override // android.view.View.DragShadowBuilder
    public void onDrawShadow(Canvas canvas) {
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        Density density = this.density;
        long j = this.decorationSize;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        androidx.compose.ui.graphics.Canvas Canvas = AndroidCanvas_androidKt.Canvas(canvas);
        nl3<DrawScope, j59> nl3Var = this.drawDragDecoration;
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density densityComponent1 = drawParams.component1();
        LayoutDirection layoutDirectionComponent2 = drawParams.component2();
        androidx.compose.ui.graphics.Canvas canvasComponent3 = drawParams.component3();
        long jM6723component4NHjbRc = drawParams.m6723component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(density);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(Canvas);
        drawParams2.m6726setSizeuvyYCjk(j);
        Canvas.save();
        nl3Var.invoke(canvasDrawScope);
        Canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(densityComponent1);
        drawParams3.setLayoutDirection(layoutDirectionComponent2);
        drawParams3.setCanvas(canvasComponent3);
        drawParams3.m6726setSizeuvyYCjk(jM6723component4NHjbRc);
    }

    @Override // android.view.View.DragShadowBuilder
    public void onProvideShadowMetrics(Point point, Point point2) {
        Density density = this.density;
        point.set(density.mo1428roundToPx0680j_4(density.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (this.decorationSize >> 32)))), density.mo1428roundToPx0680j_4(density.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (this.decorationSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))));
        point2.set(point.x / 2, point.y / 2);
    }

    public /* synthetic */ ComposeDragShadowBuilder(Density density, long j, nl3 nl3Var, jh2 jh2Var) {
        this(density, j, nl3Var);
    }
}
