package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.OutputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldBufferKt;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c29;
import defpackage.c31;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.r57;
import defpackage.zya;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TransformedTextFieldState {
    public static final int $stable = 0;
    private static final Companion Companion = new Companion(null);
    private final CodepointTransformation codepointTransformation;
    private final State<TransformedText> codepointTransformedText;
    private InputTransformation inputTransformation;
    private final OutputTransformation outputTransformation;
    private final State<TransformedText> outputTransformedText;
    private final MutableState selectionWedgeAffinity$delegate;
    private final TextFieldState textFieldState;

    public static final class TransformedText {
        private final OffsetMappingCalculator offsetMapping;
        private final TextFieldCharSequence text;

        public TransformedText(TextFieldCharSequence textFieldCharSequence, OffsetMappingCalculator offsetMappingCalculator) {
            this.text = textFieldCharSequence;
            this.offsetMapping = offsetMappingCalculator;
        }

        public static /* synthetic */ TransformedText copy$default(TransformedText transformedText, TextFieldCharSequence textFieldCharSequence, OffsetMappingCalculator offsetMappingCalculator, int i, Object obj) {
            if ((i & 1) != 0) {
                textFieldCharSequence = transformedText.text;
            }
            if ((i & 2) != 0) {
                offsetMappingCalculator = transformedText.offsetMapping;
            }
            return transformedText.copy(textFieldCharSequence, offsetMappingCalculator);
        }

        public final TextFieldCharSequence component1() {
            return this.text;
        }

        public final OffsetMappingCalculator component2() {
            return this.offsetMapping;
        }

        public final TransformedText copy(TextFieldCharSequence textFieldCharSequence, OffsetMappingCalculator offsetMappingCalculator) {
            return new TransformedText(textFieldCharSequence, offsetMappingCalculator);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TransformedText)) {
                return false;
            }
            TransformedText transformedText = (TransformedText) obj;
            return aa4.e(this.text, transformedText.text) && aa4.e(this.offsetMapping, transformedText.offsetMapping);
        }

        public final OffsetMappingCalculator getOffsetMapping() {
            return this.offsetMapping;
        }

        public final TextFieldCharSequence getText() {
            return this.text;
        }

        public int hashCode() {
            return this.offsetMapping.hashCode() + (this.text.hashCode() * 31);
        }

        public String toString() {
            return "TransformedText(text=" + ((Object) this.text) + ", offsetMapping=" + this.offsetMapping + ')';
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TransformedTextFieldState$collectImeNotifications$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.TransformedTextFieldState", f = "TransformedTextFieldState.kt", l = {769}, m = "collectImeNotifications", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransformedTextFieldState.this.collectImeNotifications(null, this);
        }
    }

    public TransformedTextFieldState(TextFieldState textFieldState, InputTransformation inputTransformation, CodepointTransformation codepointTransformation, final OutputTransformation outputTransformation) {
        this.textFieldState = textFieldState;
        this.inputTransformation = inputTransformation;
        this.codepointTransformation = codepointTransformation;
        this.outputTransformation = outputTransformation;
        this.outputTransformedText = outputTransformation != null ? SnapshotStateKt.derivedStateOf(new ll3() { // from class: b29
            @Override // defpackage.ll3
            public final Object invoke() {
                return TransformedTextFieldState.outputTransformedText$lambda$0$0(this.b, outputTransformation);
            }
        }) : null;
        this.codepointTransformedText = codepointTransformation != null ? SnapshotStateKt.derivedStateOf(new c29(0, this, codepointTransformation)) : null;
        this.selectionWedgeAffinity$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new SelectionWedgeAffinity(WedgeAffinity.Start), null, 2, null);
    }

    private static final TransformedText calculateTransformedText(TextFieldCharSequence textFieldCharSequence, OutputTransformation outputTransformation, SelectionWedgeAffinity selectionWedgeAffinity) {
        return Companion.calculateTransformedText(textFieldCharSequence, outputTransformation, selectionWedgeAffinity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransformedText codepointTransformedText$lambda$0$0(TransformedTextFieldState transformedTextFieldState, CodepointTransformation codepointTransformation) {
        TextFieldCharSequence value$foundation;
        TransformedText value;
        Companion companion = Companion;
        State<TransformedText> state = transformedTextFieldState.outputTransformedText;
        if (state == null || (value = state.getValue()) == null || (value$foundation = value.getText()) == null) {
            value$foundation = transformedTextFieldState.textFieldState.getValue$foundation();
        }
        return companion.calculateTransformedText(value$foundation, codepointTransformation, transformedTextFieldState.getSelectionWedgeAffinity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectImeNotifications$lambda$0(TextFieldState.NotifyImeListener notifyImeListener, TransformedTextFieldState transformedTextFieldState, TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
        TextFieldCharSequence text;
        TransformedText transformedTextCalculateTransformedText = Companion.calculateTransformedText(textFieldCharSequence, transformedTextFieldState.outputTransformation, transformedTextFieldState.getSelectionWedgeAffinity());
        if (transformedTextCalculateTransformedText != null && (text = transformedTextCalculateTransformedText.getText()) != null) {
            textFieldCharSequence = text;
        }
        notifyImeListener.onChange(textFieldCharSequence, transformedTextFieldState.getVisualText(), z);
    }

    public static /* synthetic */ void editUntransformedTextAsUser$default(TransformedTextFieldState transformedTextFieldState, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        TextFieldState textFieldState = transformedTextFieldState.textFieldState;
        InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        nl3Var.invoke(mainBuffer$foundation);
        transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    /* JADX INFO: renamed from: mapFromTransformed-xdX6-G0, reason: not valid java name */
    private static final long m2828mapFromTransformedxdX6G0(long j, OffsetMappingCalculator offsetMappingCalculator) {
        return Companion.m2842mapFromTransformedxdX6G0(j, offsetMappingCalculator);
    }

    /* JADX INFO: renamed from: mapToTransformed-XGyztTk, reason: not valid java name */
    private static final long m2829mapToTransformedXGyztTk(long j, OffsetMappingCalculator offsetMappingCalculator, SelectionWedgeAffinity selectionWedgeAffinity) {
        return Companion.m2843mapToTransformedXGyztTk(j, offsetMappingCalculator, selectionWedgeAffinity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransformedText outputTransformedText$lambda$0$0(TransformedTextFieldState transformedTextFieldState, OutputTransformation outputTransformation) {
        return Companion.calculateTransformedText(transformedTextFieldState.textFieldState.getValue$foundation(), outputTransformation, transformedTextFieldState.getSelectionWedgeAffinity());
    }

    public static /* synthetic */ void replaceSelectedText$default(TransformedTextFieldState transformedTextFieldState, CharSequence charSequence, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        transformedTextFieldState.replaceSelectedText(charSequence, z, textFieldEditUndoBehavior, z2);
    }

    /* JADX INFO: renamed from: replaceText-M8tDOmk$default, reason: not valid java name */
    public static /* synthetic */ void m2830replaceTextM8tDOmk$default(TransformedTextFieldState transformedTextFieldState, CharSequence charSequence, long j, TextFieldEditUndoBehavior textFieldEditUndoBehavior, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        }
        TextFieldEditUndoBehavior textFieldEditUndoBehavior2 = textFieldEditUndoBehavior;
        if ((i & 8) != 0) {
            z = true;
        }
        transformedTextFieldState.m2837replaceTextM8tDOmk(charSequence, j, textFieldEditUndoBehavior2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateWedgeAffinity(TextFieldBuffer textFieldBuffer) {
        if (textFieldBuffer.getChangeTracker$foundation().getChangeCount() <= 0 || !TextRange.m8485getCollapsedimpl(textFieldBuffer.m2657getSelectiond9O1mEE())) {
            return;
        }
        setSelectionWedgeAffinity(new SelectionWedgeAffinity(WedgeAffinity.Start));
    }

    public final void collapseSelectionToEnd() {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        TextFieldBufferKt.setSelectionCoerced$default(mainBuffer$foundation, TextRange.m8486getEndimpl(mainBuffer$foundation.m2657getSelectiond9O1mEE()), 0, 2, null);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final void collapseSelectionToMax() {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        TextFieldBufferKt.setSelectionCoerced$default(mainBuffer$foundation, TextRange.m8488getMaximpl(mainBuffer$foundation.m2657getSelectiond9O1mEE()), 0, 2, null);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object collectImeNotifications(final TextFieldState.NotifyImeListener notifyImeListener, e02<?> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            if (this.outputTransformation != null) {
                notifyImeListener = new TextFieldState.NotifyImeListener(this) { // from class: a29
                    public final /* synthetic */ TransformedTextFieldState b;

                    {
                        this.b = this;
                    }

                    @Override // androidx.compose.foundation.text.input.TextFieldState.NotifyImeListener
                    public final void onChange(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
                        TransformedTextFieldState.collectImeNotifications$lambda$0(notifyImeListener, this.b, textFieldCharSequence, textFieldCharSequence2, z);
                    }
                };
            }
            anonymousClass1.L$0 = notifyImeListener;
            anonymousClass1.label = 1;
            c31 c31Var = new c31(1, zya.b(anonymousClass1));
            c31Var.u();
            this.textFieldState.addNotifyImeListener$foundation(notifyImeListener);
            c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.compose.foundation.text.input.internal.TransformedTextFieldState$collectImeNotifications$2$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    this.this$0.textFieldState.removeNotifyImeListener$foundation(notifyImeListener);
                }

                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                    invoke2(th);
                    return j59.a;
                }
            });
            if (c31Var.s() == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    public final void deleteSelectedText() {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.NeverMerge;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        TextFieldBufferKt.delete(mainBuffer$foundation, TextRange.m8489getMinimpl(mainBuffer$foundation.m2657getSelectiond9O1mEE()), TextRange.m8488getMaximpl(mainBuffer$foundation.m2657getSelectiond9O1mEE()));
        TextFieldBufferKt.setSelectionCoerced$default(mainBuffer$foundation, TextRange.m8489getMinimpl(mainBuffer$foundation.m2657getSelectiond9O1mEE()), 0, 2, null);
        updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final void editUntransformedTextAsUser(boolean z, nl3<? super TextFieldBuffer, j59> nl3Var) {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        nl3Var.invoke(mainBuffer$foundation);
        updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransformedTextFieldState)) {
            return false;
        }
        TransformedTextFieldState transformedTextFieldState = (TransformedTextFieldState) obj;
        if (aa4.e(this.textFieldState, transformedTextFieldState.textFieldState) && aa4.e(this.codepointTransformation, transformedTextFieldState.codepointTransformation)) {
            return aa4.e(this.outputTransformation, transformedTextFieldState.outputTransformation);
        }
        return false;
    }

    public final TextFieldCharSequence getOutputText() {
        TransformedText value;
        TextFieldCharSequence text;
        State<TransformedText> state = this.outputTransformedText;
        return (state == null || (value = state.getValue()) == null || (text = value.getText()) == null) ? getUntransformedText() : text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SelectionWedgeAffinity getSelectionWedgeAffinity() {
        return (SelectionWedgeAffinity) this.selectionWedgeAffinity$delegate.getValue();
    }

    /* JADX INFO: renamed from: getUntransformedComposition-MzsxiRA, reason: not valid java name */
    public final TextRange m2831getUntransformedCompositionMzsxiRA() {
        return this.textFieldState.m2666getCompositionMzsxiRA();
    }

    public final TextFieldCharSequence getUntransformedText() {
        return this.textFieldState.getValue$foundation();
    }

    public final boolean getUserCommit() {
        return this.textFieldState.getUserCommit$foundation();
    }

    public final TextFieldCharSequence getVisualText() {
        TransformedText value;
        TextFieldCharSequence text;
        State<TransformedText> state = this.codepointTransformedText;
        return (state == null || (value = state.getValue()) == null || (text = value.getText()) == null) ? getOutputText() : text;
    }

    public int hashCode() {
        int iHashCode = this.textFieldState.hashCode() * 31;
        CodepointTransformation codepointTransformation = this.codepointTransformation;
        int iHashCode2 = (iHashCode + (codepointTransformation != null ? codepointTransformation.hashCode() : 0)) * 31;
        OutputTransformation outputTransformation = this.outputTransformation;
        return iHashCode2 + (outputTransformation != null ? outputTransformation.hashCode() : 0);
    }

    /* JADX INFO: renamed from: highlightCharsIn-7RAjNK8, reason: not valid java name */
    public final void m2832highlightCharsIn7RAjNK8(int i, long j) {
        long jM2834mapFromTransformedGEjPoXI = m2834mapFromTransformedGEjPoXI(j);
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        textFieldState.getMainBuffer$foundation().m2658setHighlightK7f2yys$foundation(i, TextRange.m8491getStartimpl(jM2834mapFromTransformedGEjPoXI), TextRange.m8486getEndimpl(jM2834mapFromTransformedGEjPoXI));
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final boolean isTransformed() {
        return (this.outputTransformation == null && this.codepointTransformation == null) ? false : true;
    }

    /* JADX INFO: renamed from: mapFromTransformed--jx7JFs, reason: not valid java name */
    public final long m2833mapFromTransformedjx7JFs(int i) {
        TransformedText value;
        TransformedText value2;
        State<TransformedText> state = this.outputTransformedText;
        OffsetMappingCalculator offsetMapping = null;
        OffsetMappingCalculator offsetMapping2 = (state == null || (value2 = state.getValue()) == null) ? null : value2.getOffsetMapping();
        State<TransformedText> state2 = this.codepointTransformedText;
        if (state2 != null && (value = state2.getValue()) != null) {
            offsetMapping = value.getOffsetMapping();
        }
        long jM2781mapFromDestjx7JFs = offsetMapping != null ? offsetMapping.m2781mapFromDestjx7JFs(i) : TextRangeKt.TextRange(i);
        return offsetMapping2 != null ? Companion.m2842mapFromTransformedxdX6G0(jM2781mapFromDestjx7JFs, offsetMapping2) : jM2781mapFromDestjx7JFs;
    }

    /* JADX INFO: renamed from: mapFromTransformed-GEjPoXI, reason: not valid java name */
    public final long m2834mapFromTransformedGEjPoXI(long j) {
        TransformedText value;
        TransformedText value2;
        State<TransformedText> state = this.outputTransformedText;
        OffsetMappingCalculator offsetMapping = null;
        OffsetMappingCalculator offsetMapping2 = (state == null || (value2 = state.getValue()) == null) ? null : value2.getOffsetMapping();
        State<TransformedText> state2 = this.codepointTransformedText;
        if (state2 != null && (value = state2.getValue()) != null) {
            offsetMapping = value.getOffsetMapping();
        }
        if (offsetMapping != null) {
            j = Companion.m2842mapFromTransformedxdX6G0(j, offsetMapping);
        }
        return offsetMapping2 != null ? Companion.m2842mapFromTransformedxdX6G0(j, offsetMapping2) : j;
    }

    /* JADX INFO: renamed from: mapToTransformed--jx7JFs, reason: not valid java name */
    public final long m2835mapToTransformedjx7JFs(int i) {
        TransformedText value;
        TransformedText value2;
        State<TransformedText> state = this.outputTransformedText;
        OffsetMappingCalculator offsetMapping = null;
        OffsetMappingCalculator offsetMapping2 = (state == null || (value2 = state.getValue()) == null) ? null : value2.getOffsetMapping();
        State<TransformedText> state2 = this.codepointTransformedText;
        if (state2 != null && (value = state2.getValue()) != null) {
            offsetMapping = value.getOffsetMapping();
        }
        long jM2782mapFromSourcejx7JFs = offsetMapping2 != null ? offsetMapping2.m2782mapFromSourcejx7JFs(i) : TextRangeKt.TextRange(i);
        return offsetMapping != null ? Companion.m2843mapToTransformedXGyztTk(jM2782mapFromSourcejx7JFs, offsetMapping, getSelectionWedgeAffinity()) : jM2782mapFromSourcejx7JFs;
    }

    /* JADX INFO: renamed from: mapToTransformed-GEjPoXI, reason: not valid java name */
    public final long m2836mapToTransformedGEjPoXI(long j) {
        TransformedText value;
        TransformedText value2;
        State<TransformedText> state = this.outputTransformedText;
        OffsetMappingCalculator offsetMapping = null;
        OffsetMappingCalculator offsetMapping2 = (state == null || (value2 = state.getValue()) == null) ? null : value2.getOffsetMapping();
        State<TransformedText> state2 = this.codepointTransformedText;
        if (state2 != null && (value = state2.getValue()) != null) {
            offsetMapping = value.getOffsetMapping();
        }
        if (offsetMapping2 != null) {
            j = Companion.m2844mapToTransformedXGyztTk$default(Companion, j, offsetMapping2, null, 4, null);
        }
        return offsetMapping != null ? Companion.m2843mapToTransformedXGyztTk(j, offsetMapping, getSelectionWedgeAffinity()) : j;
    }

    public final void placeCursorBeforeCharAt(int i) {
        m2838selectCharsIn5zctL8(TextRangeKt.TextRange(i));
    }

    public final void redo() {
        this.textFieldState.getUndoState().redo();
    }

    public final void replaceAll(CharSequence charSequence) {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        TextFieldBufferKt.delete(mainBuffer$foundation, 0, mainBuffer$foundation.getLength());
        mainBuffer$foundation.append(charSequence.toString());
        updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final void replaceSelectedText(CharSequence charSequence, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior, boolean z2) {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        if (z) {
            mainBuffer$foundation.commitComposition$foundation();
        }
        long jM2657getSelectiond9O1mEE = mainBuffer$foundation.m2657getSelectiond9O1mEE();
        mainBuffer$foundation.replace(TextRange.m8489getMinimpl(jM2657getSelectiond9O1mEE), TextRange.m8488getMaximpl(jM2657getSelectiond9O1mEE), charSequence);
        TextFieldBufferKt.setSelectionCoerced$default(mainBuffer$foundation, charSequence.length() + TextRange.m8489getMinimpl(jM2657getSelectiond9O1mEE), 0, 2, null);
        updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, z2, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    /* JADX INFO: renamed from: replaceText-M8tDOmk, reason: not valid java name */
    public final void m2837replaceTextM8tDOmk(CharSequence charSequence, long j, TextFieldEditUndoBehavior textFieldEditUndoBehavior, boolean z) {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        long jM2834mapFromTransformedGEjPoXI = m2834mapFromTransformedGEjPoXI(j);
        mainBuffer$foundation.replace(TextRange.m8489getMinimpl(jM2834mapFromTransformedGEjPoXI), TextRange.m8488getMaximpl(jM2834mapFromTransformedGEjPoXI), charSequence);
        TextFieldBufferKt.setSelectionCoerced$default(mainBuffer$foundation, charSequence.length() + TextRange.m8489getMinimpl(jM2834mapFromTransformedGEjPoXI), 0, 2, null);
        updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final void selectAll() {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        TextFieldBufferKt.setSelectionCoerced(mainBuffer$foundation, 0, mainBuffer$foundation.getLength());
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    /* JADX INFO: renamed from: selectCharsIn-5zc-tL8, reason: not valid java name */
    public final void m2838selectCharsIn5zctL8(long j) {
        m2839selectUntransformedCharsIn5zctL8(m2834mapFromTransformedGEjPoXI(j));
    }

    /* JADX INFO: renamed from: selectUntransformedCharsIn-5zc-tL8, reason: not valid java name */
    public final void m2839selectUntransformedCharsIn5zctL8(long j) {
        TextFieldState textFieldState = this.textFieldState;
        InputTransformation inputTransformation = this.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBufferKt.setSelectionCoerced(textFieldState.getMainBuffer$foundation(), TextRange.m8491getStartimpl(j), TextRange.m8486getEndimpl(j));
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public final void setSelectionWedgeAffinity(SelectionWedgeAffinity selectionWedgeAffinity) {
        this.selectionWedgeAffinity$delegate.setValue(selectionWedgeAffinity);
    }

    public String toString() {
        return "TransformedTextFieldState(textFieldState=" + this.textFieldState + ", outputTransformation=" + this.outputTransformation + ", outputTransformedText=" + this.outputTransformedText + ", codepointTransformation=" + this.codepointTransformation + ", codepointTransformedText=" + this.codepointTransformedText + ", outputText=\"" + ((Object) getOutputText()) + "\", visualText=\"" + ((Object) getVisualText()) + "\")";
    }

    public final void undo() {
        this.textFieldState.getUndoState().undo();
    }

    public final void update(InputTransformation inputTransformation) {
        this.inputTransformation = inputTransformation;
    }

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[WedgeAffinity.values().length];
                try {
                    iArr[WedgeAffinity.Start.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[WedgeAffinity.End.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final TransformedText calculateTransformedText(TextFieldCharSequence textFieldCharSequence, OutputTransformation outputTransformation, SelectionWedgeAffinity selectionWedgeAffinity) {
            List<AnnotatedString.Range<AnnotatedString.Annotation>> list;
            OffsetMappingCalculator offsetMappingCalculator = new OffsetMappingCalculator();
            TextFieldBuffer textFieldBuffer = new TextFieldBuffer(textFieldCharSequence, 0 == true ? 1 : 0, null, offsetMappingCalculator, 6, null);
            textFieldBuffer.setCanCallAddStyle$foundation(true);
            outputTransformation.transformOutput(textFieldBuffer);
            textFieldBuffer.setCanCallAddStyle$foundation(false);
            List<AnnotatedString.Range<AnnotatedString.Annotation>> outputTransformationAnnotations$foundation = textFieldBuffer.getOutputTransformationAnnotations$foundation();
            if (textFieldBuffer.getChanges().getChangeCount() == 0 && ((list = outputTransformationAnnotations$foundation) == null || list.isEmpty())) {
                return null;
            }
            long jM2843mapToTransformedXGyztTk = m2843mapToTransformedXGyztTk(textFieldCharSequence.m2665getSelectiond9O1mEE(), offsetMappingCalculator, selectionWedgeAffinity);
            TextRange textRangeM2664getCompositionMzsxiRA = textFieldCharSequence.m2664getCompositionMzsxiRA();
            return new TransformedText(TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(textFieldBuffer, jM2843mapToTransformedXGyztTk, textRangeM2664getCompositionMzsxiRA != null ? TextRange.m8479boximpl(TransformedTextFieldState.Companion.m2843mapToTransformedXGyztTk(textRangeM2664getCompositionMzsxiRA.m8495unboximpl(), offsetMappingCalculator, selectionWedgeAffinity)) : null, null, outputTransformationAnnotations$foundation, 4, null), offsetMappingCalculator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: mapFromTransformed-xdX6-G0, reason: not valid java name */
        public final long m2842mapFromTransformedxdX6G0(long j, OffsetMappingCalculator offsetMappingCalculator) {
            long jM2781mapFromDestjx7JFs = offsetMappingCalculator.m2781mapFromDestjx7JFs(TextRange.m8491getStartimpl(j));
            long jM2781mapFromDestjx7JFs2 = TextRange.m8485getCollapsedimpl(j) ? jM2781mapFromDestjx7JFs : offsetMappingCalculator.m2781mapFromDestjx7JFs(TextRange.m8486getEndimpl(j));
            int iMin = Math.min(TextRange.m8489getMinimpl(jM2781mapFromDestjx7JFs), TextRange.m8489getMinimpl(jM2781mapFromDestjx7JFs2));
            int iMax = Math.max(TextRange.m8488getMaximpl(jM2781mapFromDestjx7JFs), TextRange.m8488getMaximpl(jM2781mapFromDestjx7JFs2));
            return TextRange.m8490getReversedimpl(j) ? TextRangeKt.TextRange(iMax, iMin) : TextRangeKt.TextRange(iMin, iMax);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: mapToTransformed-XGyztTk, reason: not valid java name */
        public final long m2843mapToTransformedXGyztTk(long j, OffsetMappingCalculator offsetMappingCalculator, SelectionWedgeAffinity selectionWedgeAffinity) {
            long jTextRange;
            long jM2782mapFromSourcejx7JFs = offsetMappingCalculator.m2782mapFromSourcejx7JFs(TextRange.m8491getStartimpl(j));
            long jM2782mapFromSourcejx7JFs2 = TextRange.m8485getCollapsedimpl(j) ? jM2782mapFromSourcejx7JFs : offsetMappingCalculator.m2782mapFromSourcejx7JFs(TextRange.m8486getEndimpl(j));
            WedgeAffinity endAffinity = null;
            WedgeAffinity startAffinity = selectionWedgeAffinity != null ? selectionWedgeAffinity.getStartAffinity() : null;
            if (TextRange.m8485getCollapsedimpl(j)) {
                endAffinity = startAffinity;
            } else if (selectionWedgeAffinity != null) {
                endAffinity = selectionWedgeAffinity.getEndAffinity();
            }
            if (startAffinity != null && !TextRange.m8485getCollapsedimpl(jM2782mapFromSourcejx7JFs)) {
                int i = WhenMappings.$EnumSwitchMapping$0[startAffinity.ordinal()];
                if (i == 1) {
                    jM2782mapFromSourcejx7JFs = TextRangeKt.TextRange(TextRange.m8491getStartimpl(jM2782mapFromSourcejx7JFs));
                } else {
                    if (i != 2) {
                        me0.e();
                        return 0L;
                    }
                    jM2782mapFromSourcejx7JFs = TextRangeKt.TextRange(TextRange.m8486getEndimpl(jM2782mapFromSourcejx7JFs));
                }
            }
            if (endAffinity != null && !TextRange.m8485getCollapsedimpl(jM2782mapFromSourcejx7JFs2)) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[endAffinity.ordinal()];
                if (i2 == 1) {
                    jTextRange = TextRangeKt.TextRange(TextRange.m8491getStartimpl(jM2782mapFromSourcejx7JFs2));
                } else {
                    if (i2 != 2) {
                        me0.e();
                        return 0L;
                    }
                    jTextRange = TextRangeKt.TextRange(TextRange.m8486getEndimpl(jM2782mapFromSourcejx7JFs2));
                }
                jM2782mapFromSourcejx7JFs2 = jTextRange;
            }
            int iMin = Math.min(TextRange.m8489getMinimpl(jM2782mapFromSourcejx7JFs), TextRange.m8489getMinimpl(jM2782mapFromSourcejx7JFs2));
            int iMax = Math.max(TextRange.m8488getMaximpl(jM2782mapFromSourcejx7JFs), TextRange.m8488getMaximpl(jM2782mapFromSourcejx7JFs2));
            return TextRange.m8490getReversedimpl(j) ? TextRangeKt.TextRange(iMax, iMin) : TextRangeKt.TextRange(iMin, iMax);
        }

        /* JADX INFO: renamed from: mapToTransformed-XGyztTk$default, reason: not valid java name */
        public static /* synthetic */ long m2844mapToTransformedXGyztTk$default(Companion companion, long j, OffsetMappingCalculator offsetMappingCalculator, SelectionWedgeAffinity selectionWedgeAffinity, int i, Object obj) {
            if ((i & 4) != 0) {
                selectionWedgeAffinity = null;
            }
            return companion.m2843mapToTransformedXGyztTk(j, offsetMappingCalculator, selectionWedgeAffinity);
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TransformedText calculateTransformedText(TextFieldCharSequence textFieldCharSequence, CodepointTransformation codepointTransformation, SelectionWedgeAffinity selectionWedgeAffinity) {
            OffsetMappingCalculator offsetMappingCalculator = new OffsetMappingCalculator();
            CharSequence visualText = CodepointTransformationKt.toVisualText(textFieldCharSequence, codepointTransformation, offsetMappingCalculator);
            TextRange textRangeM8479boximpl = null;
            if (visualText == textFieldCharSequence) {
                return null;
            }
            long jM2843mapToTransformedXGyztTk = m2843mapToTransformedXGyztTk(textFieldCharSequence.m2665getSelectiond9O1mEE(), offsetMappingCalculator, selectionWedgeAffinity);
            TextRange textRangeM2664getCompositionMzsxiRA = textFieldCharSequence.m2664getCompositionMzsxiRA();
            if (textRangeM2664getCompositionMzsxiRA != null) {
                textRangeM8479boximpl = TextRange.m8479boximpl(TransformedTextFieldState.Companion.m2843mapToTransformedXGyztTk(textRangeM2664getCompositionMzsxiRA.m8495unboximpl(), offsetMappingCalculator, selectionWedgeAffinity));
            }
            return new TransformedText(new TextFieldCharSequence(visualText, jM2843mapToTransformedXGyztTk, textRangeM8479boximpl, null, null, null, 56, null), offsetMappingCalculator);
        }
    }

    private static final TransformedText calculateTransformedText(TextFieldCharSequence textFieldCharSequence, CodepointTransformation codepointTransformation, SelectionWedgeAffinity selectionWedgeAffinity) {
        return Companion.calculateTransformedText(textFieldCharSequence, codepointTransformation, selectionWedgeAffinity);
    }

    public /* synthetic */ TransformedTextFieldState(TextFieldState textFieldState, InputTransformation inputTransformation, CodepointTransformation codepointTransformation, OutputTransformation outputTransformation, int i, jh2 jh2Var) {
        this(textFieldState, (i & 2) != 0 ? null : inputTransformation, (i & 4) != 0 ? null : codepointTransformation, (i & 8) != 0 ? null : outputTransformation);
    }
}
