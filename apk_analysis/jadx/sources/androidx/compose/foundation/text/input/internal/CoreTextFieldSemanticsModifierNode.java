package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.autofill.FillableData_androidKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import defpackage.a22;
import defpackage.aa4;
import defpackage.b22;
import defpackage.c22;
import defpackage.d22;
import defpackage.dm3;
import defpackage.e22;
import defpackage.g22;
import defpackage.hk;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kg0;
import defpackage.lk;
import defpackage.nk;
import defpackage.pg0;
import defpackage.ta8;
import defpackage.u96;
import defpackage.z12;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CoreTextFieldSemanticsModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public static final int $stable = 8;
    private boolean enabled;
    private FocusRequester focusRequester;
    private ImeOptions imeOptions;
    private boolean isPassword;
    private TextFieldSelectionManager manager;
    private OffsetMapping offsetMapping;
    private boolean readOnly;
    private LegacyTextFieldState state;
    private TransformedText transformedText;
    private TextFieldValue value;

    public CoreTextFieldSemanticsModifierNode(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, boolean z3, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.transformedText = transformedText;
        this.value = textFieldValue;
        this.state = legacyTextFieldState;
        this.readOnly = z;
        this.enabled = z2;
        this.isPassword = z3;
        this.offsetMapping = offsetMapping;
        this.manager = textFieldSelectionManager;
        this.imeOptions = imeOptions;
        this.focusRequester = focusRequester;
        textFieldSelectionManager.setRequestAutofillAction$foundation(new c22(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        DelegatableNodeKt.requestAutofill(coreTextFieldSemanticsModifierNode);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$1(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, FillableData fillableData) {
        coreTextFieldSemanticsModifierNode.state.setJustAutofilled(true);
        coreTextFieldSemanticsModifierNode.state.setAutofillHighlightOn(true);
        LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.state;
        CharSequence textValue = fillableData.getTextValue();
        textValue.getClass();
        coreTextFieldSemanticsModifierNode.handleTextUpdateFromSemantics(legacyTextFieldState, (String) textValue, coreTextFieldSemanticsModifierNode.readOnly, coreTextFieldSemanticsModifierNode.enabled);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$10(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        coreTextFieldSemanticsModifierNode.manager.cut$foundation();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$11(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        coreTextFieldSemanticsModifierNode.manager.paste$foundation();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$2(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, List list) {
        if (coreTextFieldSemanticsModifierNode.state.getLayoutResult() == null) {
            return false;
        }
        TextLayoutResultProxy layoutResult = coreTextFieldSemanticsModifierNode.state.getLayoutResult();
        layoutResult.getClass();
        list.add(layoutResult.getValue());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$3(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, AnnotatedString annotatedString) {
        coreTextFieldSemanticsModifierNode.handleTextUpdateFromSemantics(coreTextFieldSemanticsModifierNode.state, annotatedString.getText(), coreTextFieldSemanticsModifierNode.readOnly, coreTextFieldSemanticsModifierNode.enabled);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$4(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, SemanticsPropertyReceiver semanticsPropertyReceiver, AnnotatedString annotatedString) {
        if (coreTextFieldSemanticsModifierNode.readOnly || !coreTextFieldSemanticsModifierNode.enabled) {
            return false;
        }
        androidx.compose.ui.text.input.TextInputSession inputSession = coreTextFieldSemanticsModifierNode.state.getInputSession();
        if (inputSession != null) {
            TextFieldDelegate.Companion.onEditCommand$foundation(u96.i(new FinishComposingTextCommand(), new CommitTextCommand(annotatedString, 1)), coreTextFieldSemanticsModifierNode.state.getProcessor(), coreTextFieldSemanticsModifierNode.state.getOnValueChange(), inputSession);
            return true;
        }
        coreTextFieldSemanticsModifierNode.state.getOnValueChange().invoke(new TextFieldValue(ta8.V(coreTextFieldSemanticsModifierNode.value.getText(), TextRange.m8491getStartimpl(coreTextFieldSemanticsModifierNode.value.m8741getSelectiond9O1mEE()), TextRange.m8486getEndimpl(coreTextFieldSemanticsModifierNode.value.m8741getSelectiond9O1mEE()), annotatedString).toString(), TextRangeKt.TextRange(annotatedString.length() + TextRange.m8491getStartimpl(coreTextFieldSemanticsModifierNode.value.m8741getSelectiond9O1mEE())), (TextRange) null, 4, (jh2) null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$5(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i, int i2, boolean z) {
        if (!z) {
            i = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(i);
        }
        if (!z) {
            i2 = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(i2);
        }
        if (!coreTextFieldSemanticsModifierNode.enabled) {
            return false;
        }
        if (i == TextRange.m8491getStartimpl(coreTextFieldSemanticsModifierNode.value.m8741getSelectiond9O1mEE()) && i2 == TextRange.m8486getEndimpl(coreTextFieldSemanticsModifierNode.value.m8741getSelectiond9O1mEE())) {
            return false;
        }
        if (Math.min(i, i2) < 0 || Math.max(i, i2) > coreTextFieldSemanticsModifierNode.value.getAnnotatedString().length()) {
            coreTextFieldSemanticsModifierNode.manager.exitSelectionMode$foundation();
            return false;
        }
        if (z || i == i2) {
            coreTextFieldSemanticsModifierNode.manager.exitSelectionMode$foundation();
        } else {
            TextFieldSelectionManager.enterSelectionMode$foundation$default(coreTextFieldSemanticsModifierNode.manager, false, 1, null);
        }
        coreTextFieldSemanticsModifierNode.state.getOnValueChange().invoke(new TextFieldValue(coreTextFieldSemanticsModifierNode.value.getAnnotatedString(), TextRangeKt.TextRange(i, i2), (TextRange) null, 4, (jh2) null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$6(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        coreTextFieldSemanticsModifierNode.state.getOnImeActionPerformed().invoke(ImeAction.m8656boximpl(coreTextFieldSemanticsModifierNode.imeOptions.m8688getImeActioneUduSuo()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$7(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        CoreTextFieldKt.requestFocusAndShowKeyboardIfNeeded(coreTextFieldSemanticsModifierNode.state, coreTextFieldSemanticsModifierNode.focusRequester, !coreTextFieldSemanticsModifierNode.readOnly);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$8(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        TextFieldSelectionManager.enterSelectionMode$foundation$default(coreTextFieldSemanticsModifierNode.manager, false, 1, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$9(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        TextFieldSelectionManager.copy$foundation$default(coreTextFieldSemanticsModifierNode.manager, false, 1, null);
        return true;
    }

    private final void handleTextUpdateFromSemantics(LegacyTextFieldState legacyTextFieldState, String str, boolean z, boolean z2) {
        if (z || !z2) {
            return;
        }
        androidx.compose.ui.text.input.TextInputSession inputSession = legacyTextFieldState.getInputSession();
        if (inputSession != null) {
            TextFieldDelegate.Companion.onEditCommand$foundation(u96.i(new DeleteAllCommand(), new CommitTextCommand(str, 1)), legacyTextFieldState.getProcessor(), legacyTextFieldState.getOnValueChange(), inputSession);
        } else {
            legacyTextFieldState.getOnValueChange().invoke(new TextFieldValue(str, TextRangeKt.TextRange(str.length()), (TextRange) null, 4, (jh2) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateNodeSemantics$lambda$0(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode) {
        DelegatableNodeKt.requestAutofill(coreTextFieldSemanticsModifierNode);
        return j59.a;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setInputText(semanticsPropertyReceiver, this.value.getAnnotatedString());
        SemanticsPropertiesKt.setEditableText(semanticsPropertyReceiver, this.transformedText.getText());
        SemanticsPropertiesKt.m8282setTextSelectionRangeFDrldGo(semanticsPropertyReceiver, this.value.m8741getSelectiond9O1mEE());
        SemanticsPropertiesKt.setContentDataType(semanticsPropertyReceiver, ContentDataType.Companion.getText());
        FillableData fillableDataCreateFromText = FillableData_androidKt.createFromText(FillableData.Companion, this.value.getAnnotatedString());
        if (fillableDataCreateFromText != null) {
            SemanticsPropertiesKt.setFillableData(semanticsPropertyReceiver, fillableDataCreateFromText);
        }
        int i = 2;
        int i2 = 1;
        SemanticsPropertiesKt.onFillData$default(semanticsPropertyReceiver, null, new lk(this, i), 1, null);
        int iM8689getKeyboardTypePjHm6EE = this.imeOptions.m8689getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion = KeyboardType.Companion;
        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion.m8728getEmailPjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getEmailAddress());
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion.m8731getPasswordPjHm6EE()) || KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion.m8730getNumberPasswordPjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getPassword());
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion.m8732getPhonePjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getPhoneNumber());
        }
        if (!this.enabled) {
            SemanticsPropertiesKt.disabled(semanticsPropertyReceiver);
        }
        if (this.isPassword) {
            SemanticsPropertiesKt.password(semanticsPropertyReceiver);
        }
        int i3 = 0;
        boolean z = this.enabled && !this.readOnly;
        SemanticsPropertiesKt.setEditable(semanticsPropertyReceiver, z);
        SemanticsPropertiesKt.getTextLayoutResult$default(semanticsPropertyReceiver, null, new nk(this, i), 1, null);
        if (z) {
            SemanticsPropertiesKt.setText$default(semanticsPropertyReceiver, null, new d22(this, i3), 1, null);
            SemanticsPropertiesKt.insertTextAtCursor$default(semanticsPropertyReceiver, null, new e22(i3, this, semanticsPropertyReceiver), 1, null);
        }
        SemanticsPropertiesKt.setSelection$default(semanticsPropertyReceiver, null, new dm3() { // from class: f22
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$5(this.b, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue()));
            }
        }, 1, null);
        SemanticsPropertiesKt.m8277onImeAction9UiTYpY$default(semanticsPropertyReceiver, this.imeOptions.m8688getImeActioneUduSuo(), null, new pg0(this, i), 2, null);
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new g22(this, i3), 1, null);
        SemanticsPropertiesKt.onLongClick$default(semanticsPropertyReceiver, null, new hk(this, i2), 1, null);
        if (!TextRange.m8485getCollapsedimpl(this.value.m8741getSelectiond9O1mEE()) && !this.isPassword) {
            SemanticsPropertiesKt.copyText$default(semanticsPropertyReceiver, null, new a22(this, i3), 1, null);
            if (this.enabled && !this.readOnly) {
                SemanticsPropertiesKt.cutText$default(semanticsPropertyReceiver, null, new b22(this, i3), 1, null);
            }
        }
        if (!this.enabled || this.readOnly) {
            return;
        }
        SemanticsPropertiesKt.pasteText$default(semanticsPropertyReceiver, null, new kg0(this, i2), 1, null);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    public final ImeOptions getImeOptions() {
        return this.imeOptions;
    }

    public final TextFieldSelectionManager getManager() {
        return this.manager;
    }

    public final OffsetMapping getOffsetMapping() {
        return this.offsetMapping;
    }

    public final boolean getReadOnly() {
        return this.readOnly;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    public final LegacyTextFieldState getState() {
        return this.state;
    }

    public final TransformedText getTransformedText() {
        return this.transformedText;
    }

    public final TextFieldValue getValue() {
        return this.value;
    }

    public final boolean isPassword() {
        return this.isPassword;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setFocusRequester(FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final void setImeOptions(ImeOptions imeOptions) {
        this.imeOptions = imeOptions;
    }

    public final void setManager(TextFieldSelectionManager textFieldSelectionManager) {
        this.manager = textFieldSelectionManager;
    }

    public final void setOffsetMapping(OffsetMapping offsetMapping) {
        this.offsetMapping = offsetMapping;
    }

    public final void setPassword(boolean z) {
        this.isPassword = z;
    }

    public final void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    public final void setState(LegacyTextFieldState legacyTextFieldState) {
        this.state = legacyTextFieldState;
    }

    public final void setTransformedText(TransformedText transformedText) {
        this.transformedText = transformedText;
    }

    public final void setValue(TextFieldValue textFieldValue) {
        this.value = textFieldValue;
    }

    public final void updateNodeSemantics(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, boolean z3, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        boolean z4 = this.enabled;
        boolean z5 = false;
        boolean z6 = z4 && !this.readOnly;
        boolean z7 = this.isPassword;
        ImeOptions imeOptions2 = this.imeOptions;
        TextFieldSelectionManager textFieldSelectionManager2 = this.manager;
        if (z2 && !z) {
            z5 = true;
        }
        this.transformedText = transformedText;
        this.value = textFieldValue;
        this.state = legacyTextFieldState;
        this.readOnly = z;
        this.enabled = z2;
        this.offsetMapping = offsetMapping;
        this.manager = textFieldSelectionManager;
        this.imeOptions = imeOptions;
        this.focusRequester = focusRequester;
        if (z2 != z4 || z5 != z6 || !aa4.e(imeOptions, imeOptions2) || z3 != z7 || !TextRange.m8485getCollapsedimpl(textFieldValue.m8741getSelectiond9O1mEE())) {
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if (aa4.e(textFieldSelectionManager, textFieldSelectionManager2)) {
            return;
        }
        textFieldSelectionManager.setRequestAutofillAction$foundation(new z12(this, 0));
    }
}
