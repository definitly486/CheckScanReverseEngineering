package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidVertexMode_androidKt {
    /* JADX INFO: renamed from: toAndroidVertexMode-JOOmi9M, reason: not valid java name */
    public static final android.graphics.Canvas.VertexMode m6136toAndroidVertexModeJOOmi9M(int i) {
        VertexMode.Companion companion = VertexMode.Companion;
        if (VertexMode.m6650equalsimpl0(i, companion.m6656getTrianglesc2xauaI())) {
            return android.graphics.Canvas.VertexMode.TRIANGLES;
        }
        if (VertexMode.m6650equalsimpl0(i, companion.m6655getTriangleStripc2xauaI())) {
            return android.graphics.Canvas.VertexMode.TRIANGLE_STRIP;
        }
        return VertexMode.m6650equalsimpl0(i, companion.m6654getTriangleFanc2xauaI()) ? android.graphics.Canvas.VertexMode.TRIANGLE_FAN : android.graphics.Canvas.VertexMode.TRIANGLES;
    }
}
