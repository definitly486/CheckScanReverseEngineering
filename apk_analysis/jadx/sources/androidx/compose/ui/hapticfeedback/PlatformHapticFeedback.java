package androidx.compose.ui.hapticfeedback;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformHapticFeedback implements HapticFeedback {
    public static final int $stable = 8;
    private final View view;

    public PlatformHapticFeedback(View view) {
        this.view = view;
    }

    @Override // androidx.compose.ui.hapticfeedback.HapticFeedback
    /* JADX INFO: renamed from: performHapticFeedback-CdsT49E */
    public void mo7001performHapticFeedbackCdsT49E(int i) {
        int i2;
        HapticFeedbackType.Companion companion = HapticFeedbackType.Companion;
        if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7009getConfirm5zf0vsI())) {
            i2 = 16;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7010getContextClick5zf0vsI())) {
            i2 = 6;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7011getGestureEnd5zf0vsI())) {
            i2 = 13;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7012getGestureThresholdActivate5zf0vsI())) {
            i2 = 23;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7013getKeyboardTap5zf0vsI())) {
            i2 = 3;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7014getLongPress5zf0vsI())) {
            i2 = 0;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7015getReject5zf0vsI())) {
            i2 = 17;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7016getSegmentFrequentTick5zf0vsI())) {
            i2 = 27;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7017getSegmentTick5zf0vsI())) {
            i2 = 26;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7018getTextHandleMove5zf0vsI())) {
            i2 = 9;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7019getToggleOff5zf0vsI())) {
            i2 = 22;
        } else if (HapticFeedbackType.m7005equalsimpl0(i, companion.m7020getToggleOn5zf0vsI())) {
            i2 = 21;
        } else {
            i2 = HapticFeedbackType.m7005equalsimpl0(i, companion.m7021getVirtualKey5zf0vsI()) ? 1 : -1;
        }
        ViewCompat.performHapticFeedback(this.view, i2);
    }
}
