package androidx.compose.ui.node;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public interface OwnedLayer {
    void destroy();

    void drawLayer(Canvas canvas, GraphicsLayer graphicsLayer);

    float getFrameRate();

    /* JADX INFO: renamed from: getUnderlyingMatrix-sQKQjiQ, reason: not valid java name */
    float[] mo8076getUnderlyingMatrixsQKQjiQ();

    void invalidate();

    /* JADX INFO: renamed from: inverseTransform-58bKbWc, reason: not valid java name */
    void mo8077inverseTransform58bKbWc(float[] fArr);

    boolean isFrameRateFromParent();

    /* JADX INFO: renamed from: isInLayer-k-4lQ0M, reason: not valid java name */
    boolean mo8078isInLayerk4lQ0M(long j);

    void mapBounds(MutableRect mutableRect, boolean z);

    /* JADX INFO: renamed from: mapOffset-8S9VItk, reason: not valid java name */
    long mo8079mapOffset8S9VItk(long j, boolean z);

    /* JADX INFO: renamed from: move--gyyYBs, reason: not valid java name */
    void mo8080movegyyYBs(long j);

    /* JADX INFO: renamed from: resize-ozmzZPI, reason: not valid java name */
    void mo8081resizeozmzZPI(long j);

    void reuseLayer(bm3<? super Canvas, ? super GraphicsLayer, j59> bm3Var, ll3<j59> ll3Var);

    void setFrameRate(float f);

    void setFrameRateFromParent(boolean z);

    /* JADX INFO: renamed from: transform-58bKbWc, reason: not valid java name */
    void mo8082transform58bKbWc(float[] fArr);

    void updateDisplayList();

    void updateLayerProperties(ReusableGraphicsLayerScope reusableGraphicsLayerScope);
}
