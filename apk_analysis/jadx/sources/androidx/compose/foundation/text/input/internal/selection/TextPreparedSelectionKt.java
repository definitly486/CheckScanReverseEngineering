package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.text.input.internal.IndexTransformationType;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.WedgeAffinity;
import androidx.compose.ui.text.TextRange;
import defpackage.me0;

/* JADX INFO: loaded from: classes.dex */
public final class TextPreparedSelectionKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndexTransformationType.values().length];
            try {
                iArr[IndexTransformationType.Untransformed.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IndexTransformationType.Deletion.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IndexTransformationType.Replacement.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IndexTransformationType.Insertion.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final long calculateNextCursorPositionAndWedgeAffinity(int i, int i2, TransformedTextFieldState transformedTextFieldState) {
        IndexTransformationType indexTransformationType;
        if (i == -1) {
            return CursorAndWedgeAffinity.m2848constructorimpl(i2);
        }
        boolean z = i > i2;
        long jM2833mapFromTransformedjx7JFs = transformedTextFieldState.m2833mapFromTransformedjx7JFs(i);
        long jM2836mapToTransformedGEjPoXI = transformedTextFieldState.m2836mapToTransformedGEjPoXI(jM2833mapFromTransformedjx7JFs);
        if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) && TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = IndexTransformationType.Untransformed;
        } else if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = (!TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) ? IndexTransformationType.Deletion : IndexTransformationType.Insertion;
        } else {
            indexTransformationType = IndexTransformationType.Replacement;
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[indexTransformationType.ordinal()];
        if (i3 == 1) {
            return CursorAndWedgeAffinity.m2849constructorimpl(i, z ? WedgeAffinity.Start : WedgeAffinity.End);
        }
        if (i3 == 2) {
            return CursorAndWedgeAffinity.m2848constructorimpl(i);
        }
        if (i3 == 3) {
            return z ? CursorAndWedgeAffinity.m2849constructorimpl(TextRange.m8486getEndimpl(jM2836mapToTransformedGEjPoXI), WedgeAffinity.Start) : CursorAndWedgeAffinity.m2849constructorimpl(TextRange.m8491getStartimpl(jM2836mapToTransformedGEjPoXI), WedgeAffinity.End);
        }
        if (i3 != 4) {
            me0.e();
            return 0L;
        }
        if (z) {
            return i == TextRange.m8491getStartimpl(jM2836mapToTransformedGEjPoXI) ? CursorAndWedgeAffinity.m2849constructorimpl(i, WedgeAffinity.Start) : CursorAndWedgeAffinity.m2849constructorimpl(TextRange.m8486getEndimpl(jM2836mapToTransformedGEjPoXI), WedgeAffinity.End);
        }
        return i == TextRange.m8486getEndimpl(jM2836mapToTransformedGEjPoXI) ? CursorAndWedgeAffinity.m2849constructorimpl(i, WedgeAffinity.End) : CursorAndWedgeAffinity.m2849constructorimpl(TextRange.m8491getStartimpl(jM2836mapToTransformedGEjPoXI), WedgeAffinity.Start);
    }
}
