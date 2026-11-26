package androidx.compose.material3;

import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.kx6;
import defpackage.ta8;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
final class DateVisualTransformation implements VisualTransformation {
    private final int dateFormatLength;
    private final DateInputFormat dateInputFormat;
    private final DateVisualTransformation$dateOffsetTranslator$1 dateOffsetTranslator = new OffsetMapping() { // from class: androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1
        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int originalToTransformed(int i) {
            if (i < this.this$0.firstDelimiterOffset) {
                return i;
            }
            if (i < this.this$0.secondDelimiterOffset) {
                return i + 1;
            }
            return i <= this.this$0.dateFormatLength ? i + 2 : this.this$0.dateFormatLength + 2;
        }

        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int transformedToOriginal(int i) {
            if (i <= this.this$0.firstDelimiterOffset - 1) {
                return i;
            }
            if (i <= this.this$0.secondDelimiterOffset - 1) {
                return i - 1;
            }
            return i <= this.this$0.dateFormatLength + 1 ? i - 2 : this.this$0.dateFormatLength;
        }
    };
    private final int firstDelimiterOffset;
    private final int secondDelimiterOffset;

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1] */
    public DateVisualTransformation(DateInputFormat dateInputFormat) {
        this.dateInputFormat = dateInputFormat;
        this.firstDelimiterOffset = ta8.J(dateInputFormat.getDelimiter(), 0, 6, dateInputFormat.getPatternWithDelimiters());
        this.secondDelimiterOffset = ta8.O(dateInputFormat.getPatternWithDelimiters(), dateInputFormat.getDelimiter(), 0, 6);
        this.dateFormatLength = dateInputFormat.getPatternWithoutDelimiters().length();
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText filter(AnnotatedString annotatedString) {
        String text;
        int i = 0;
        if (annotatedString.getText().length() > this.dateFormatLength) {
            String text2 = annotatedString.getText();
            y74 y74VarN = kx6.n(0, this.dateFormatLength);
            text2.getClass();
            y74VarN.getClass();
            text = text2.substring(y74VarN.b, y74VarN.c + 1);
        } else {
            text = annotatedString.getText();
        }
        String str = "";
        int i2 = 0;
        while (i < text.length()) {
            int i3 = i2 + 1;
            str = str + text.charAt(i);
            if (i3 == this.firstDelimiterOffset || i2 + 2 == this.secondDelimiterOffset) {
                str = str + this.dateInputFormat.getDelimiter();
            }
            i++;
            i2 = i3;
        }
        return new TransformedText(new AnnotatedString(str, null, 2, null), this.dateOffsetTranslator);
    }
}
