package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultImeEditCommandScope implements ImeEditCommandScope {
    public static final int $stable = 8;
    private int batchDepth;
    private TextFieldBuffer batchEditTextFieldBuffer;
    private final MutableVector<nl3<TextFieldBuffer, j59>> editCommands = new MutableVector<>(new nl3[16], 0);
    private final TransformedTextFieldState transformedTextFieldState;

    public DefaultImeEditCommandScope(TransformedTextFieldState transformedTextFieldState) {
        this.transformedTextFieldState = transformedTextFieldState;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public boolean beginBatchEdit() {
        this.batchDepth++;
        return true;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public void edit(nl3<? super TextFieldBuffer, j59> nl3Var) {
        beginBatchEdit();
        this.editCommands.add(nl3Var);
        endBatchEdit();
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public boolean endBatchEdit() {
        int i = this.batchDepth - 1;
        this.batchDepth = i;
        if (i == 0 && this.editCommands.getSize() != 0) {
            TransformedTextFieldState transformedTextFieldState = this.transformedTextFieldState;
            TextFieldState textFieldState = transformedTextFieldState.textFieldState;
            InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
            TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
            textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
            TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
            if (!this.transformedTextFieldState.isTransformed()) {
                this.batchEditTextFieldBuffer = mainBuffer$foundation;
            }
            MutableVector<nl3<TextFieldBuffer, j59>> mutableVector = this.editCommands;
            nl3<TextFieldBuffer, j59>[] nl3VarArr = mutableVector.content;
            int size = mutableVector.getSize();
            for (int i2 = 0; i2 < size; i2++) {
                nl3VarArr[i2].invoke(mainBuffer$foundation);
            }
            transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
            textFieldState.commitEditAsUser(inputTransformation, false, textFieldEditUndoBehavior);
            textFieldState.setUserCommit(true);
            this.editCommands.clear();
        }
        return this.batchDepth > 0;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public int getTransformedLength() {
        TextFieldBuffer textFieldBuffer = this.batchEditTextFieldBuffer;
        return textFieldBuffer != null ? textFieldBuffer.getLength() : this.transformedTextFieldState.getVisualText().length();
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    /* JADX INFO: renamed from: mapFromTransformed-GEjPoXI */
    public long mo2692mapFromTransformedGEjPoXI(long j) {
        return this.transformedTextFieldState.isTransformed() ? this.transformedTextFieldState.m2834mapFromTransformedGEjPoXI(j) : j;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    /* JADX INFO: renamed from: mapToTransformed-GEjPoXI */
    public long mo2693mapToTransformedGEjPoXI(long j) {
        return this.transformedTextFieldState.isTransformed() ? this.transformedTextFieldState.m2836mapToTransformedGEjPoXI(j) : j;
    }
}
