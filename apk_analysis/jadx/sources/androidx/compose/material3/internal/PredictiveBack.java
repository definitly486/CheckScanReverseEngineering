package androidx.compose.material3.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class PredictiveBack {
    public static final int $stable = 0;
    public static final PredictiveBack INSTANCE = new PredictiveBack();

    private PredictiveBack() {
    }

    public final float transform$material3(float f) {
        return BackHandlerKt.PredictiveBackEasing.transform(f);
    }
}
