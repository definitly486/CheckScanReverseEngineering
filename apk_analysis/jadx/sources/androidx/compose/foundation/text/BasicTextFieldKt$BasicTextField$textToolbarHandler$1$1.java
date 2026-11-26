package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 implements TextToolbarHandler {
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ TextToolbar $currentTextToolbar;

    public BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1(TextToolbar textToolbar, y22 y22Var) {
        this.$currentTextToolbar = textToolbar;
        this.$coroutineScope = y22Var;
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler
    public void hideTextToolbar() {
        if (this.$currentTextToolbar.getStatus() == TextToolbarStatus.Shown) {
            this.$currentTextToolbar.hide();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler
    public Object showTextToolbar(final TextFieldSelectionState textFieldSelectionState, Rect rect, e02<? super j59> e02Var) {
        BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;
        final y22 y22Var;
        Rect rect2;
        TextToolbar textToolbar;
        if (e02Var instanceof BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) {
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 = (BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) e02Var;
            int i = basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label = i - Integer.MIN_VALUE;
            } else {
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1(this, e02Var);
            }
        } else {
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1(this, e02Var);
        }
        Object obj = basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label;
        if (i2 == 0) {
            r57.b(obj);
            TextToolbar textToolbar2 = this.$currentTextToolbar;
            y22Var = this.$coroutineScope;
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$0 = rect;
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$1 = textToolbar2;
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$2 = y22Var;
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$3 = textFieldSelectionState;
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label = 1;
            if (textFieldSelectionState.updateClipboardEntry(basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) == a32Var) {
                return a32Var;
            }
            rect2 = rect;
            textToolbar = textToolbar2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            textFieldSelectionState = (TextFieldSelectionState) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$3;
            y22Var = (y22) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$2;
            TextToolbar textToolbar3 = (TextToolbar) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$1;
            Rect rect3 = (Rect) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$0;
            r57.b(obj);
            textToolbar = textToolbar3;
            rect2 = rect3;
        }
        boolean zCanShowCopyMenuItem = textFieldSelectionState.canShowCopyMenuItem();
        final TextToolbarState textToolbarState = TextToolbarState.None;
        ll3<j59> ll3Var = !zCanShowCopyMenuItem ? null : new ll3<j59>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                av0.c(y22Var, null, c32.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$1$1(textFieldSelectionState, null), 1);
                textFieldSelectionState.updateTextToolbarState(textToolbarState);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        };
        ll3<j59> ll3Var2 = !textFieldSelectionState.canShowPasteMenuItem() ? null : new ll3<j59>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                av0.c(y22Var, null, c32.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$2$1(textFieldSelectionState, null), 1);
                textFieldSelectionState.updateTextToolbarState(textToolbarState);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        };
        ll3<j59> ll3Var3 = !textFieldSelectionState.canShowCutMenuItem() ? null : new ll3<j59>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$3
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                av0.c(y22Var, null, c32.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$3$1(textFieldSelectionState, null), 1);
                textFieldSelectionState.updateTextToolbarState(textToolbarState);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        };
        boolean zCanShowSelectAllMenuItem = textFieldSelectionState.canShowSelectAllMenuItem();
        final TextToolbarState textToolbarState2 = TextToolbarState.Selection;
        textToolbar.showMenu(rect2, ll3Var, ll3Var2, ll3Var3, !zCanShowSelectAllMenuItem ? null : new ll3<j59>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$4
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                textFieldSelectionState.selectAll();
                textFieldSelectionState.updateTextToolbarState(textToolbarState2);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        }, textFieldSelectionState.canShowAutofillMenuItem() ? new ll3<j59>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$5
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                textFieldSelectionState.autofill();
                textFieldSelectionState.updateTextToolbarState(textToolbarState);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        } : null);
        return j59.a;
    }
}
