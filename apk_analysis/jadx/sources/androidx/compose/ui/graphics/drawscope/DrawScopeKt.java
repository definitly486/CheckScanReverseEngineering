package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.DegreesKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawScopeKt {
    /* JADX INFO: renamed from: clipPath-KD09W0M, reason: not valid java name */
    public static final void m6846clipPathKD09W0M(DrawScope drawScope, Path path, int i, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6729clipPathmtrdDE(path, i);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: clipPath-KD09W0M$default, reason: not valid java name */
    public static void m6847clipPathKD09W0M$default(DrawScope drawScope, Path path, int i, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6729clipPathmtrdDE(path, i);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: clipRect-rOu3jXo, reason: not valid java name */
    public static final void m6848clipRectrOu3jXo(DrawScope drawScope, float f, float f2, float f3, float f4, int i, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6730clipRectN_I0leg(f, f2, f3, f4, i);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: clipRect-rOu3jXo$default, reason: not valid java name */
    public static void m6849clipRectrOu3jXo$default(DrawScope drawScope, float f, float f2, float f3, float f4, int i, nl3 nl3Var, int i2, Object obj) {
        float f5 = (i2 & 1) != 0 ? 0.0f : f;
        float f6 = (i2 & 2) != 0 ? 0.0f : f2;
        if ((i2 & 4) != 0) {
            f3 = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
        }
        float f7 = f3;
        if ((i2 & 8) != 0) {
            f4 = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        float f8 = f4;
        if ((i2 & 16) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        int i3 = i;
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6730clipRectN_I0leg(f5, f6, f7, f8, i3);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    @ul2
    /* JADX INFO: renamed from: draw-GRGpd60, reason: not valid java name */
    public static final void m6850drawGRGpd60(DrawScope drawScope, Density density, LayoutDirection layoutDirection, Canvas canvas, long j, nl3<? super DrawScope, j59> nl3Var) {
        Density density2 = drawScope.getDrawContext().getDensity();
        LayoutDirection layoutDirection2 = drawScope.getDrawContext().getLayoutDirection();
        Canvas canvas2 = drawScope.getDrawContext().getCanvas();
        long jMo6727getSizeNHjbRc = drawScope.getDrawContext().mo6727getSizeNHjbRc();
        GraphicsLayer graphicsLayer = drawScope.getDrawContext().getGraphicsLayer();
        DrawContext drawContext = drawScope.getDrawContext();
        drawContext.setDensity(density);
        drawContext.setLayoutDirection(layoutDirection);
        drawContext.setCanvas(canvas);
        drawContext.mo6728setSizeuvyYCjk(j);
        drawContext.setGraphicsLayer(null);
        canvas.save();
        try {
            nl3Var.invoke(drawScope);
        } finally {
            canvas.restore();
            DrawContext drawContext2 = drawScope.getDrawContext();
            drawContext2.setDensity(density2);
            drawContext2.setLayoutDirection(layoutDirection2);
            drawContext2.setCanvas(canvas2);
            drawContext2.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
            drawContext2.setGraphicsLayer(graphicsLayer);
        }
    }

    /* JADX INFO: renamed from: draw-ymL40Pk, reason: not valid java name */
    public static final void m6851drawymL40Pk(DrawScope drawScope, Density density, LayoutDirection layoutDirection, Canvas canvas, long j, GraphicsLayer graphicsLayer, nl3<? super DrawScope, j59> nl3Var) {
        Density density2 = drawScope.getDrawContext().getDensity();
        LayoutDirection layoutDirection2 = drawScope.getDrawContext().getLayoutDirection();
        Canvas canvas2 = drawScope.getDrawContext().getCanvas();
        long jMo6727getSizeNHjbRc = drawScope.getDrawContext().mo6727getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = drawScope.getDrawContext().getGraphicsLayer();
        DrawContext drawContext = drawScope.getDrawContext();
        drawContext.setDensity(density);
        drawContext.setLayoutDirection(layoutDirection);
        drawContext.setCanvas(canvas);
        drawContext.mo6728setSizeuvyYCjk(j);
        drawContext.setGraphicsLayer(graphicsLayer);
        canvas.save();
        try {
            nl3Var.invoke(drawScope);
        } finally {
            canvas.restore();
            DrawContext drawContext2 = drawScope.getDrawContext();
            drawContext2.setDensity(density2);
            drawContext2.setLayoutDirection(layoutDirection2);
            drawContext2.setCanvas(canvas2);
            drawContext2.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
            drawContext2.setGraphicsLayer(graphicsLayer2);
        }
    }

    /* JADX INFO: renamed from: draw-ymL40Pk$default, reason: not valid java name */
    public static void m6852drawymL40Pk$default(DrawScope drawScope, Density density, LayoutDirection layoutDirection, Canvas canvas, long j, GraphicsLayer graphicsLayer, nl3 nl3Var, int i, Object obj) {
        if ((i & 16) != 0) {
            graphicsLayer = null;
        }
        Density density2 = drawScope.getDrawContext().getDensity();
        LayoutDirection layoutDirection2 = drawScope.getDrawContext().getLayoutDirection();
        Canvas canvas2 = drawScope.getDrawContext().getCanvas();
        long jMo6727getSizeNHjbRc = drawScope.getDrawContext().mo6727getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = drawScope.getDrawContext().getGraphicsLayer();
        DrawContext drawContext = drawScope.getDrawContext();
        drawContext.setDensity(density);
        drawContext.setLayoutDirection(layoutDirection);
        drawContext.setCanvas(canvas);
        drawContext.mo6728setSizeuvyYCjk(j);
        drawContext.setGraphicsLayer(graphicsLayer);
        canvas.save();
        try {
            nl3Var.invoke(drawScope);
        } finally {
            canvas.restore();
            DrawContext drawContext2 = drawScope.getDrawContext();
            drawContext2.setDensity(density2);
            drawContext2.setLayoutDirection(layoutDirection2);
            drawContext2.setCanvas(canvas2);
            drawContext2.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
            drawContext2.setGraphicsLayer(graphicsLayer2);
        }
    }

    public static final void drawIntoCanvas(DrawScope drawScope, nl3<? super Canvas, j59> nl3Var) {
        nl3Var.invoke(drawScope.getDrawContext().getCanvas());
    }

    public static final void inset(DrawScope drawScope, float f, float f2, float f3, float f4, nl3<? super DrawScope, j59> nl3Var) {
        drawScope.getDrawContext().getTransform().inset(f, f2, f3, f4);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            drawScope.getDrawContext().getTransform().inset(-f, -f2, -f3, -f4);
        }
    }

    public static void inset$default(DrawScope drawScope, float f, float f2, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        drawScope.getDrawContext().getTransform().inset(f, f2, f, f2);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            float f3 = -f;
            float f4 = -f2;
            drawScope.getDrawContext().getTransform().inset(f3, f4, f3, f4);
        }
    }

    /* JADX INFO: renamed from: rotate-Rg1IO4c, reason: not valid java name */
    public static final void m6853rotateRg1IO4c(DrawScope drawScope, float f, long j, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(f, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: rotate-Rg1IO4c$default, reason: not valid java name */
    public static void m6854rotateRg1IO4c$default(DrawScope drawScope, float f, long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = drawScope.mo6805getCenterF1C5BW0();
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(f, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: rotateRad-Rg1IO4c, reason: not valid java name */
    public static final void m6855rotateRadRg1IO4c(DrawScope drawScope, float f, long j, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(DegreesKt.degrees(f), j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: rotateRad-Rg1IO4c$default, reason: not valid java name */
    public static void m6856rotateRadRg1IO4c$default(DrawScope drawScope, float f, long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = drawScope.mo6805getCenterF1C5BW0();
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(DegreesKt.degrees(f), j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: scale-Fgt4K4Q, reason: not valid java name */
    public static final void m6857scaleFgt4K4Q(DrawScope drawScope, float f, float f2, long j, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(f, f2, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: scale-Fgt4K4Q$default, reason: not valid java name */
    public static void m6858scaleFgt4K4Q$default(DrawScope drawScope, float f, float f2, long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            j = drawScope.mo6805getCenterF1C5BW0();
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(f, f2, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: scale-Rg1IO4c, reason: not valid java name */
    public static final void m6859scaleRg1IO4c(DrawScope drawScope, float f, long j, nl3<? super DrawScope, j59> nl3Var) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(f, f, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: scale-Rg1IO4c$default, reason: not valid java name */
    public static void m6860scaleRg1IO4c$default(DrawScope drawScope, float f, long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = drawScope.mo6805getCenterF1C5BW0();
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(f, f, j);
            nl3Var.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    public static final void translate(DrawScope drawScope, float f, float f2, nl3<? super DrawScope, j59> nl3Var) {
        drawScope.getDrawContext().getTransform().translate(f, f2);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            drawScope.getDrawContext().getTransform().translate(-f, -f2);
        }
    }

    public static void translate$default(DrawScope drawScope, float f, float f2, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        drawScope.getDrawContext().getTransform().translate(f, f2);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            drawScope.getDrawContext().getTransform().translate(-f, -f2);
        }
    }

    public static final void withTransform(DrawScope drawScope, nl3<? super DrawTransform, j59> nl3Var, nl3<? super DrawScope, j59> nl3Var2) {
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            nl3Var.invoke(drawContext.getTransform());
            nl3Var2.invoke(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    public static final void inset(DrawScope drawScope, float f, nl3<? super DrawScope, j59> nl3Var) {
        drawScope.getDrawContext().getTransform().inset(f, f, f, f);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            float f2 = -f;
            drawScope.getDrawContext().getTransform().inset(f2, f2, f2, f2);
        }
    }

    public static final void inset(DrawScope drawScope, float f, float f2, nl3<? super DrawScope, j59> nl3Var) {
        drawScope.getDrawContext().getTransform().inset(f, f2, f, f2);
        try {
            nl3Var.invoke(drawScope);
        } finally {
            float f3 = -f;
            float f4 = -f2;
            drawScope.getDrawContext().getTransform().inset(f3, f4, f3, f4);
        }
    }
}
