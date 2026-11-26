package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1", f = "TextFieldSelectionState.kt", l = {1834, 1842}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ PressGestureScope $$this$detectTapAndPress;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $offset;
    final /* synthetic */ TextFieldSelectionState $this_defaultDetectTextFieldTapGestures;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1", f = "TextFieldSelectionState.kt", l = {1826, 1831}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ long $offset;
        final /* synthetic */ TextFieldSelectionState $this_defaultDetectTextFieldTapGestures;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TextFieldSelectionState textFieldSelectionState, long j, MutableInteractionSource mutableInteractionSource, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$this_defaultDetectTextFieldTapGestures = textFieldSelectionState;
            this.$offset = j;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$this_defaultDetectTextFieldTapGestures, this.$offset, this.$interactionSource, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x005a  */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            TextFieldSelectionState textFieldSelectionState;
            PressInteraction.Press press;
            MutableInteractionSource mutableInteractionSource;
            PressInteraction.Press press2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    textFieldSelectionState = (TextFieldSelectionState) this.L$0;
                    r57.b(obj);
                } else {
                    if (i != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    press2 = (PressInteraction.Press) this.L$0;
                    r57.b(obj);
                }
                this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(press2);
                return j59.a;
            }
            r57.b(obj);
            PressInteraction.Press pressInteraction = this.$this_defaultDetectTextFieldTapGestures.getPressInteraction();
            if (pressInteraction != null) {
                MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
                TextFieldSelectionState textFieldSelectionState2 = this.$this_defaultDetectTextFieldTapGestures;
                PressInteraction.Cancel cancel = new PressInteraction.Cancel(pressInteraction);
                this.L$0 = textFieldSelectionState2;
                this.label = 1;
                if (mutableInteractionSource2.emit(cancel, this) != a32Var) {
                    textFieldSelectionState = textFieldSelectionState2;
                }
            } else {
                press = new PressInteraction.Press(this.$offset, null);
                mutableInteractionSource = this.$interactionSource;
                this.L$0 = press;
                this.label = 2;
                if (mutableInteractionSource.emit(press, this) != a32Var) {
                    press2 = press;
                    this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(press2);
                    return j59.a;
                }
            }
            return a32Var;
            textFieldSelectionState.setPressInteraction(null);
            press = new PressInteraction.Press(this.$offset, null);
            mutableInteractionSource = this.$interactionSource;
            this.L$0 = press;
            this.label = 2;
            if (mutableInteractionSource.emit(press, this) != a32Var) {
                press2 = press;
                this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(press2);
                return j59.a;
            }
            return a32Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1(PressGestureScope pressGestureScope, TextFieldSelectionState textFieldSelectionState, long j, MutableInteractionSource mutableInteractionSource, e02<? super TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1> e02Var) {
        super(2, e02Var);
        this.$$this$detectTapAndPress = pressGestureScope;
        this.$this_defaultDetectTextFieldTapGestures = textFieldSelectionState;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 = new TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1(this.$$this$detectTapAndPress, this.$this_defaultDetectTextFieldTapGestures, this.$offset, this.$interactionSource, e02Var);
        textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1.L$0 = obj;
        return textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
    
        if (r4.emit(r12, r11) == r0) goto L21;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1b
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r12)
            goto L63
        L11:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r11)
            return r2
        L17:
            defpackage.r57.b(r12)
            goto L3d
        L1b:
            defpackage.r57.b(r12)
            java.lang.Object r12 = r11.L$0
            y22 r12 = (defpackage.y22) r12
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1 r5 = new androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r11.$this_defaultDetectTextFieldTapGestures
            long r7 = r11.$offset
            androidx.compose.foundation.interaction.MutableInteractionSource r9 = r11.$interactionSource
            r10 = 0
            r5.<init>(r6, r7, r9, r10)
            r1 = 3
            defpackage.av0.c(r12, r2, r2, r5, r1)
            androidx.compose.foundation.gestures.PressGestureScope r12 = r11.$$this$detectTapAndPress
            r11.label = r4
            java.lang.Object r12 = r12.tryAwaitRelease(r11)
            if (r12 != r0) goto L3d
            goto L62
        L3d:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r1 = r11.$this_defaultDetectTextFieldTapGestures
            androidx.compose.foundation.interaction.PressInteraction$Press r1 = r1.getPressInteraction()
            if (r1 == 0) goto L63
            androidx.compose.foundation.interaction.MutableInteractionSource r4 = r11.$interactionSource
            if (r12 == 0) goto L55
            androidx.compose.foundation.interaction.PressInteraction$Release r12 = new androidx.compose.foundation.interaction.PressInteraction$Release
            r12.<init>(r1)
            goto L5a
        L55:
            androidx.compose.foundation.interaction.PressInteraction$Cancel r12 = new androidx.compose.foundation.interaction.PressInteraction$Cancel
            r12.<init>(r1)
        L5a:
            r11.label = r3
            java.lang.Object r12 = r4.emit(r12, r11)
            if (r12 != r0) goto L63
        L62:
            return r0
        L63:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r11 = r11.$this_defaultDetectTextFieldTapGestures
            r11.setPressInteraction(r2)
            j59 r11 = defpackage.j59.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
