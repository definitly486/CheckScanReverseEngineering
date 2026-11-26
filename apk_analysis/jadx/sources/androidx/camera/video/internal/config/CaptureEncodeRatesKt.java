package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import defpackage.aa4;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureEncodeRatesKt {
    private static final String TAG = "CaptureEncodeRates";

    private static final boolean isInvalidCaptureToEncodeRatio(Rational rational) {
        return aa4.e(rational, Rational.NaN) || aa4.e(rational, Rational.ZERO) || aa4.e(rational, Rational.NEGATIVE_INFINITY) || aa4.e(rational, Rational.POSITIVE_INFINITY);
    }

    public static final int toCaptureRate(int i, Rational rational) {
        if (rational == null) {
            return i;
        }
        if (!isInvalidCaptureToEncodeRatio(rational)) {
            return w65.b(rational.floatValue() * i);
        }
        Logger.w(TAG, "Invalid capture-to-encode ratio: " + rational);
        return i;
    }

    public static final int toEncodeRate(int i, Rational rational) {
        if (rational == null) {
            return i;
        }
        if (!isInvalidCaptureToEncodeRatio(rational)) {
            return w65.b(i / rational.floatValue());
        }
        Logger.w(TAG, "Invalid capture-to-encode ratio: " + rational);
        return i;
    }
}
