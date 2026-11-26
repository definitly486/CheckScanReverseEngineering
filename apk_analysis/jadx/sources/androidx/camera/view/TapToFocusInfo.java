package androidx.camera.view;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public final class TapToFocusInfo {
    private final int focusState;
    private final PointF tapPoint;

    public TapToFocusInfo(int i, PointF pointF) {
        this.focusState = i;
        this.tapPoint = pointF;
    }

    public final int getFocusState() {
        return this.focusState;
    }

    public final PointF getTapPoint() {
        return this.tapPoint;
    }
}
