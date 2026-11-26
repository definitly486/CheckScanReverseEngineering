package androidx.compose.foundation.shape;

/* JADX INFO: loaded from: classes.dex */
public final class CornerSizeKt {
    private static final CornerSize ZeroCornerSize = new CornerSizeKt$ZeroCornerSize$1();

    public static final CornerSize CornerSize(int i) {
        return new PercentCornerSize(i);
    }

    /* JADX INFO: renamed from: CornerSize-0680j_4, reason: not valid java name */
    public static final CornerSize m2342CornerSize0680j_4(float f) {
        return new DpCornerSize(f, null);
    }

    public static final CornerSize getZeroCornerSize() {
        return ZeroCornerSize;
    }

    public static /* synthetic */ void getZeroCornerSize$annotations() {
    }

    public static final CornerSize CornerSize(float f) {
        return new PxCornerSize(f);
    }
}
