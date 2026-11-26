package androidx.compose.foundation.text.handwriting;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class StylusHandwriting_androidKt {
    private static final boolean isStylusHandwritingSupported;

    static {
        isStylusHandwritingSupported = Build.VERSION.SDK_INT >= 34;
    }

    public static final boolean isStylusHandwritingSupported() {
        return isStylusHandwritingSupported;
    }
}
