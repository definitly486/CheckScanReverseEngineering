package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.StringsHelpers_jvmAndAndroidKt;
import androidx.compose.foundation.text.input.TextFieldCharSequence;

/* JADX INFO: loaded from: classes.dex */
public final class CodepointTransformationKt {
    public static final CodepointTransformation mask(CodepointTransformation.Companion companion, char c) {
        return new MaskCodepointTransformation(c);
    }

    public static final CharSequence toVisualText(TextFieldCharSequence textFieldCharSequence, CodepointTransformation codepointTransformation, OffsetMappingCalculator offsetMappingCalculator) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (i < textFieldCharSequence.length()) {
            int iCodePointAt = CodepointHelpers_jvmAndAndroidKt.codePointAt(textFieldCharSequence, i);
            int iTransform = codepointTransformation.transform(i2, iCodePointAt);
            int iCharCount = CodepointHelpers_jvmAndAndroidKt.charCount(iCodePointAt);
            if (iTransform != iCodePointAt) {
                offsetMappingCalculator.recordEditOperation(sb.length(), sb.length() + iCharCount, CodepointHelpers_jvmAndAndroidKt.charCount(iTransform));
                z = true;
            }
            StringsHelpers_jvmAndAndroidKt.appendCodePointX(sb, iTransform);
            i += iCharCount;
            i2++;
        }
        return z ? sb.toString() : textFieldCharSequence;
    }
}
