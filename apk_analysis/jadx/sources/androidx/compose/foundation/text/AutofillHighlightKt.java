package androidx.compose.foundation.text;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import defpackage.iz;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class AutofillHighlightKt {
    private static final ProvidableCompositionLocal<Brush> LocalAutofillHighlightBrush = CompositionLocalKt.compositionLocalOf$default(null, new iz(0), 1, null);
    private static final ProvidableCompositionLocal<Color> LocalAutofillHighlightColor = CompositionLocalKt.compositionLocalOf$default(null, new ll3<Color>() { // from class: androidx.compose.foundation.text.AutofillHighlightKt$LocalAutofillHighlightColor$1
        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ Color invoke() {
            return Color.m6222boximpl(m2448invoke0d7_KjU());
        }

        /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
        public final long m2448invoke0d7_KjU() {
            return AutofillHighlight_androidKt.autofillHighlightColor();
        }
    }, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Brush LocalAutofillHighlightBrush$lambda$0() {
        return new SolidColor(AutofillHighlight_androidKt.autofillHighlightColor(), null);
    }

    public static final ProvidableCompositionLocal<Brush> getLocalAutofillHighlightBrush() {
        return LocalAutofillHighlightBrush;
    }

    public static final ProvidableCompositionLocal<Color> getLocalAutofillHighlightColor() {
        return LocalAutofillHighlightColor;
    }

    @ul2
    public static /* synthetic */ void getLocalAutofillHighlightColor$annotations() {
    }

    /* JADX INFO: renamed from: resolveAutofillHighlight-WkMS-hQ, reason: not valid java name */
    public static final Brush m2447resolveAutofillHighlightWkMShQ(Brush brush, long j, long j2) {
        return !Color.m6233equalsimpl0(j, j2) ? new SolidColor(j, null) : brush;
    }
}
