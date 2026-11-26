package androidx.compose.ui.graphics;

import defpackage.nj0;
import defpackage.oj0;

/* JADX INFO: loaded from: classes2.dex */
final class BlendModeColorFilterHelper {
    public static final BlendModeColorFilterHelper INSTANCE = new BlendModeColorFilterHelper();

    private BlendModeColorFilterHelper() {
    }

    /* JADX INFO: renamed from: BlendModeColorFilter-xETnrds, reason: not valid java name */
    public final android.graphics.BlendModeColorFilter m6176BlendModeColorFilterxETnrds(long j, int i) {
        oj0.a();
        return nj0.a(ColorKt.m6286toArgb8_81llA(j), AndroidBlendMode_androidKt.m6079toAndroidBlendModes9anfk8(i));
    }

    public final BlendModeColorFilter createBlendModeColorFilter(android.graphics.BlendModeColorFilter blendModeColorFilter) {
        return new BlendModeColorFilter(ColorKt.Color(blendModeColorFilter.getColor()), AndroidBlendMode_androidKt.toComposeBlendMode(blendModeColorFilter.getMode()), blendModeColorFilter, null);
    }
}
