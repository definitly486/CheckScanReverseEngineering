package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawStyleSpan_androidKt {
    /* JADX INFO: renamed from: toAndroidCap-BeK7IIE, reason: not valid java name */
    public static final Paint.Cap m8778toAndroidCapBeK7IIE(int i) {
        StrokeCap.Companion companion = StrokeCap.Companion;
        if (StrokeCap.m6602equalsimpl0(i, companion.m6606getButtKaPHkGw())) {
            return Paint.Cap.BUTT;
        }
        if (StrokeCap.m6602equalsimpl0(i, companion.m6607getRoundKaPHkGw())) {
            return Paint.Cap.ROUND;
        }
        return StrokeCap.m6602equalsimpl0(i, companion.m6608getSquareKaPHkGw()) ? Paint.Cap.SQUARE : Paint.Cap.BUTT;
    }

    /* JADX INFO: renamed from: toAndroidJoin-Ww9F2mQ, reason: not valid java name */
    public static final Paint.Join m8779toAndroidJoinWw9F2mQ(int i) {
        StrokeJoin.Companion companion = StrokeJoin.Companion;
        if (StrokeJoin.m6612equalsimpl0(i, companion.m6617getMiterLxFBmk8())) {
            return Paint.Join.MITER;
        }
        if (StrokeJoin.m6612equalsimpl0(i, companion.m6618getRoundLxFBmk8())) {
            return Paint.Join.ROUND;
        }
        return StrokeJoin.m6612equalsimpl0(i, companion.m6616getBevelLxFBmk8()) ? Paint.Join.BEVEL : Paint.Join.MITER;
    }
}
