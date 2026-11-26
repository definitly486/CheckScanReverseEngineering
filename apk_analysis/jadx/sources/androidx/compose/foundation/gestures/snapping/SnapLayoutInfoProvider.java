package androidx.compose.foundation.gestures.snapping;

/* JADX INFO: loaded from: classes.dex */
public interface SnapLayoutInfoProvider {
    default float calculateApproachOffset(float f, float f2) {
        return f2;
    }

    float calculateSnapOffset(float f);
}
