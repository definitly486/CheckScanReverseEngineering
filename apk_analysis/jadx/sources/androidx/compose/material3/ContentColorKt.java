package androidx.compose.material3;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentColorKt {
    private static final ProvidableCompositionLocal<Color> LocalContentColor = CompositionLocalKt.compositionLocalOf$default(null, new ll3<Color>() { // from class: androidx.compose.material3.ContentColorKt$LocalContentColor$1
        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ Color invoke() {
            return Color.m6222boximpl(m3326invoke0d7_KjU());
        }

        /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
        public final long m3326invoke0d7_KjU() {
            return Color.Companion.m6258getBlack0d7_KjU();
        }
    }, 1, null);

    public static final ProvidableCompositionLocal<Color> getLocalContentColor() {
        return LocalContentColor;
    }
}
