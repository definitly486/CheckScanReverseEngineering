package androidx.compose.foundation.text.input;

import defpackage.aa4;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
final class InputTransformationByValue implements InputTransformation {
    private final bm3<CharSequence, CharSequence, CharSequence> transformation;

    /* JADX WARN: Multi-variable type inference failed */
    public InputTransformationByValue(bm3<? super CharSequence, ? super CharSequence, ? extends CharSequence> bm3Var) {
        this.transformation = bm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InputTransformationByValue copy$default(InputTransformationByValue inputTransformationByValue, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            bm3Var = inputTransformationByValue.transformation;
        }
        return inputTransformationByValue.copy(bm3Var);
    }

    public final bm3<CharSequence, CharSequence, CharSequence> component1() {
        return this.transformation;
    }

    public final InputTransformationByValue copy(bm3<? super CharSequence, ? super CharSequence, ? extends CharSequence> bm3Var) {
        return new InputTransformationByValue(bm3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InputTransformationByValue) && aa4.e(this.transformation, ((InputTransformationByValue) obj).transformation);
    }

    public final bm3<CharSequence, CharSequence, CharSequence> getTransformation() {
        return this.transformation;
    }

    public int hashCode() {
        return this.transformation.hashCode();
    }

    public String toString() {
        return "InputTransformation.byValue(transformation=" + this.transformation + ')';
    }

    @Override // androidx.compose.foundation.text.input.InputTransformation
    public void transformInput(TextFieldBuffer textFieldBuffer) {
        TextFieldCharSequence textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default = TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(textFieldBuffer, 0L, null, null, null, 15, null);
        CharSequence charSequenceInvoke = this.transformation.invoke(textFieldBuffer.getOriginalValue$foundation(), textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default);
        if (charSequenceInvoke == textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default) {
            return;
        }
        if (charSequenceInvoke == textFieldBuffer.getOriginalValue$foundation()) {
            textFieldBuffer.revertAllChanges();
        } else {
            textFieldBuffer.setTextIfChanged$foundation(charSequenceInvoke);
        }
    }
}
