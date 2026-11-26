package androidx.compose.foundation.text.input.internal;

import androidx.compose.ui.text.TextRange;
import defpackage.dm3;

/* JADX INFO: loaded from: classes.dex */
public final class TransformedTextFieldStateKt {
    public static final <R> R getIndexTransformationType(TransformedTextFieldState transformedTextFieldState, int i, dm3<? super IndexTransformationType, ? super TextRange, ? super TextRange, ? extends R> dm3Var) {
        IndexTransformationType indexTransformationType;
        long jM2833mapFromTransformedjx7JFs = transformedTextFieldState.m2833mapFromTransformedjx7JFs(i);
        long jM2836mapToTransformedGEjPoXI = transformedTextFieldState.m2836mapToTransformedGEjPoXI(jM2833mapFromTransformedjx7JFs);
        if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) && TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = IndexTransformationType.Untransformed;
        } else if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = (!TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) ? IndexTransformationType.Deletion : IndexTransformationType.Insertion;
        } else {
            indexTransformationType = IndexTransformationType.Replacement;
        }
        return dm3Var.invoke(indexTransformationType, TextRange.m8479boximpl(jM2833mapFromTransformedjx7JFs), TextRange.m8479boximpl(jM2836mapToTransformedGEjPoXI));
    }
}
