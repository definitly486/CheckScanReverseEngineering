package androidx.compose.foundation.text.input.internal.selection;

import android.content.Context;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifier_androidKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.text.TextRange;
import defpackage.a32;
import defpackage.av0;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.fl1;
import defpackage.j59;
import defpackage.kd3;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.q;
import defpackage.um4;
import defpackage.y22;
import defpackage.zm7;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionState_androidKt {
    public static final Modifier addBasicTextFieldTextContextMenuComponents(Modifier modifier, final TextFieldSelectionState textFieldSelectionState, final y22 y22Var) {
        return TextContextMenuModifier_androidKt.addTextContextMenuComponentsWithContext(modifier, new bm3() { // from class: zr8
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0(textFieldSelectionState, y22Var, (TextContextMenuBuilderScope) obj, (Context) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0(final TextFieldSelectionState textFieldSelectionState, final y22 y22Var, TextContextMenuBuilderScope textContextMenuBuilderScope, final Context context) {
        PlatformSelectionBehaviors_androidKt.m2981addPlatformTextContextMenuItems71BSaZU(textContextMenuBuilderScope, context, textFieldSelectionState.getEditable$foundation(), textFieldSelectionState.getTextFieldState$foundation().getVisualText().getText(), TextRange.m8479boximpl(textFieldSelectionState.getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()), textFieldSelectionState.getPlatformSelectionBehaviors$foundation(), new nl3() { // from class: as8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$2(textFieldSelectionState, y22Var, context, (TextContextMenuBuilderScope) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$2(TextFieldSelectionState textFieldSelectionState, y22 y22Var, Context context, TextContextMenuBuilderScope textContextMenuBuilderScope) {
        textContextMenuBuilderScope.separator();
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, textFieldSelectionState, TextContextMenuItems.Cut, textFieldSelectionState.canShowCutMenuItem(), new TextFieldSelectionState_androidKt$addBasicTextFieldTextContextMenuComponents$1$1$1$1(textFieldSelectionState, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, textFieldSelectionState, TextContextMenuItems.Copy, textFieldSelectionState.canShowCopyMenuItem(), new TextFieldSelectionState_androidKt$addBasicTextFieldTextContextMenuComponents$1$1$1$2(textFieldSelectionState, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, textFieldSelectionState, TextContextMenuItems.Paste, textFieldSelectionState.canShowPasteMenuItem(), new TextFieldSelectionState_androidKt$addBasicTextFieldTextContextMenuComponents$1$1$1$3(textFieldSelectionState, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(textContextMenuBuilderScope, context, textFieldSelectionState, TextContextMenuItems.SelectAll, textFieldSelectionState.canShowSelectAllMenuItem(), TextToolbarState.Selection, new zm7(textFieldSelectionState, 1), new kd3(textFieldSelectionState, 3));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(textContextMenuBuilderScope, context, textFieldSelectionState, TextContextMenuItems.Autofill, textFieldSelectionState.canShowAutofillMenuItem(), null, null, new q(textFieldSelectionState, 6), 48, null);
        textContextMenuBuilderScope.separator();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$0(TextFieldSelectionState textFieldSelectionState) {
        return !textFieldSelectionState.getTextToolbarShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$1(TextFieldSelectionState textFieldSelectionState) {
        textFieldSelectionState.selectAll();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$2(TextFieldSelectionState textFieldSelectionState) {
        textFieldSelectionState.autofill();
        return j59.a;
    }

    private static final void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextFieldSelectionState textFieldSelectionState, TextContextMenuItems textContextMenuItems, boolean z, TextToolbarState textToolbarState, ll3<Boolean> ll3Var, ll3<j59> ll3Var2) {
        ContextMenu_androidKt.textItem(textContextMenuBuilderScope, context.getResources(), textContextMenuItems, z, new um4(ll3Var2, ll3Var, textFieldSelectionState, textToolbarState, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0(ll3 ll3Var, ll3 ll3Var2, TextFieldSelectionState textFieldSelectionState, TextToolbarState textToolbarState, TextContextMenuSession textContextMenuSession) {
        ll3Var.invoke();
        if (ll3Var2 != null ? ((Boolean) ll3Var2.invoke()).booleanValue() : true) {
            textContextMenuSession.close();
        }
        textFieldSelectionState.updateTextToolbarState(textToolbarState);
        return j59.a;
    }

    public static /* synthetic */ void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextFieldSelectionState textFieldSelectionState, TextContextMenuItems textContextMenuItems, boolean z, TextToolbarState textToolbarState, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 16) != 0) {
            textToolbarState = TextToolbarState.None;
        }
        TextToolbarState textToolbarState2 = textToolbarState;
        if ((i & 32) != 0) {
            ll3Var = null;
        }
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(textContextMenuBuilderScope, context, textFieldSelectionState, textContextMenuItems, z, textToolbarState2, ll3Var, ll3Var2);
    }

    private static final void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(TextContextMenuBuilderScope textContextMenuBuilderScope, y22 y22Var, Context context, TextFieldSelectionState textFieldSelectionState, TextContextMenuItems textContextMenuItems, boolean z, nl3<? super e02<? super j59>, ? extends Object> nl3Var) {
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(textContextMenuBuilderScope, context, textFieldSelectionState, textContextMenuItems, z, null, null, new fl1(1, y22Var, nl3Var), 48, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem$1(y22 y22Var, nl3 nl3Var) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new TextFieldSelectionState_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(nl3Var, null), 1);
        return j59.a;
    }

    public static final Object detectTextFieldTapGestures(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super j59> e02Var) {
        Object objDefaultDetectTextFieldTapGestures = TextFieldSelectionStateKt.defaultDetectTextFieldTapGestures(textFieldSelectionState, pointerInputScope, mutableInteractionSource, ll3Var, ll3Var2, e02Var);
        return objDefaultDetectTextFieldTapGestures == a32.COROUTINE_SUSPENDED ? objDefaultDetectTextFieldTapGestures : j59.a;
    }

    public static final Object textFieldSelectionGestures(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objDefaultTextFieldSelectionGestures = TextFieldSelectionStateKt.defaultTextFieldSelectionGestures(pointerInputScope, mouseSelectionObserver, textDragObserver, e02Var);
        return objDefaultTextFieldSelectionGestures == a32.COROUTINE_SUSPENDED ? objDefaultTextFieldSelectionGestures : j59.a;
    }
}
