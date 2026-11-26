package androidx.compose.ui.focus;

import android.graphics.Rect;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusInteropUtils_androidKt {
    private static final int[] tempCoordinates = new int[2];
    private static final Rect tempRect = new Rect();

    public static final androidx.compose.ui.geometry.Rect calculateFocusRectRelativeTo(View view, View view2) {
        int[] iArr = tempCoordinates;
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view2.getLocationInWindow(iArr);
        float f = i - iArr[0];
        float f2 = i2 - iArr[1];
        Rect rect = tempRect;
        view.getFocusedRect(rect);
        int i3 = rect.left;
        return new androidx.compose.ui.geometry.Rect(i3 + f, rect.top + f2, f + i3 + rect.width(), f2 + rect.top + rect.height());
    }

    public static final boolean requestInteropFocus(View view, Integer num, Rect rect) {
        if (num == null) {
            return view.requestFocus();
        }
        if (!(view instanceof ViewGroup)) {
            return view.requestFocus(num.intValue(), rect);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isFocused()) {
            return true;
        }
        if (viewGroup.isFocusable() && !viewGroup.hasFocus()) {
            return viewGroup.requestFocus(num.intValue(), rect);
        }
        if (view instanceof AndroidComposeView) {
            return ((AndroidComposeView) view).requestFocus(num.intValue(), rect);
        }
        if (rect != null) {
            View viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(viewGroup, rect, num.intValue());
            return viewFindNextFocusFromRect != null ? viewFindNextFocusFromRect.requestFocus(num.intValue(), rect) : viewGroup.requestFocus(num.intValue(), rect);
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(viewGroup, viewGroup.hasFocus() ? viewGroup.findFocus() : null, num.intValue());
        return viewFindNextFocus != null ? viewFindNextFocus.requestFocus(num.intValue()) : view.requestFocus(num.intValue());
    }

    /* JADX INFO: renamed from: toAndroidFocusDirection-3ESFkO8, reason: not valid java name */
    public static final Integer m5874toAndroidFocusDirection3ESFkO8(int i) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5873getUpdhqQ8s())) {
            return 33;
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5866getDowndhqQ8s())) {
            return Integer.valueOf(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5869getLeftdhqQ8s())) {
            return 17;
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5872getRightdhqQ8s())) {
            return 66;
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s())) {
            return 2;
        }
        return FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s()) ? 1 : null;
    }

    public static final FocusDirection toFocusDirection(int i) {
        if (i == 1) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5871getPreviousdhqQ8s());
        }
        if (i == 2) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5870getNextdhqQ8s());
        }
        if (i == 17) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5869getLeftdhqQ8s());
        }
        if (i == 33) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5873getUpdhqQ8s());
        }
        if (i == 66) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5872getRightdhqQ8s());
        }
        if (i != 130) {
            return null;
        }
        return FocusDirection.m5859boximpl(FocusDirection.Companion.m5866getDowndhqQ8s());
    }

    /* JADX INFO: renamed from: toFocusDirection-ZmokQxo, reason: not valid java name */
    public static final FocusDirection m5875toFocusDirectionZmokQxo(KeyEvent keyEvent) {
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        Key.Companion companion = Key.Companion;
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7242getNavigatePreviousEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5871getPreviousdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7240getNavigateNextEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5870getNextdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7329getTabEK5gGoQ())) {
            return FocusDirection.m5859boximpl(KeyEvent_androidKt.m7407isShiftPressedZmokQxo(keyEvent) ? FocusDirection.Companion.m5871getPreviousdhqQ8s() : FocusDirection.Companion.m5870getNextdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7159getDirectionRightEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5872getRightdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7158getDirectionLeftEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5869getLeftdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7160getDirectionUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7281getPageUpEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5873getUpdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7280getPageDownEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5866getDowndhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7154getDirectionCenterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7168getEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7265getNumPadEnterEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5867getEnterdhqQ8s());
        }
        if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7097getBackEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7171getEscapeEK5gGoQ())) {
            return FocusDirection.m5859boximpl(FocusDirection.Companion.m5868getExitdhqQ8s());
        }
        return null;
    }

    public static final LayoutDirection toLayoutDirection(int i) {
        if (i == 0) {
            return LayoutDirection.Ltr;
        }
        if (i != 1) {
            return null;
        }
        return LayoutDirection.Rtl;
    }
}
