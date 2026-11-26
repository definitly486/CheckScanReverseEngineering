package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.contextmenu.ContextMenuStateKt;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.PlatformUtils_androidKt;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.MenuItemsAvailability;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.input.internal.TextLayoutStateKt;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.lj7;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yr8;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionStateKt {
    private static final boolean DEBUG = false;
    private static final String DEBUG_TAG = "TextFieldSelectionState";

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2", f = "TextFieldSelectionState.kt", l = {1821}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements dm3<PressGestureScope, Offset, e02<? super j59>, Object> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ TextFieldSelectionState $this_defaultDetectTextFieldTapGestures;
        /* synthetic */ long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MutableInteractionSource mutableInteractionSource, TextFieldSelectionState textFieldSelectionState, e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
            this.$interactionSource = mutableInteractionSource;
            this.$this_defaultDetectTextFieldTapGestures = textFieldSelectionState;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, e02<? super j59> e02Var) {
            return m2890invoked4ec7I(pressGestureScope, offset.m5997unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
        public final Object m2890invoked4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$interactionSource, this.$this_defaultDetectTextFieldTapGestures, e02Var);
            anonymousClass2.L$0 = pressGestureScope;
            anonymousClass2.J$0 = j;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                long j = this.J$0;
                MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                if (mutableInteractionSource != null) {
                    TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 = new TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1(pressGestureScope, this.$this_defaultDetectTextFieldTapGestures, j, mutableInteractionSource, null);
                    this.label = 1;
                    if (z22.c(textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1, this) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public static final nl3<ContextMenuScope, j59> contextMenuBuilder(TextFieldSelectionState textFieldSelectionState, ContextMenuState contextMenuState, State<MenuItemsAvailability> state, bm3<? super TextFieldSelectionState, ? super TextContextMenuItems, j59> bm3Var) {
        return new yr8(state, contextMenuState, bm3Var, textFieldSelectionState, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0(State state, ContextMenuState contextMenuState, bm3 bm3Var, TextFieldSelectionState textFieldSelectionState, ContextMenuScope contextMenuScope) {
        int iM2582unboximpl = ((MenuItemsAvailability) state.getValue()).m2582unboximpl();
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, bm3Var, textFieldSelectionState, TextContextMenuItems.Cut, MenuItemsAvailability.m2577getCanCutimpl(iM2582unboximpl));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, bm3Var, textFieldSelectionState, TextContextMenuItems.Copy, MenuItemsAvailability.m2576getCanCopyimpl(iM2582unboximpl));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, bm3Var, textFieldSelectionState, TextContextMenuItems.Paste, MenuItemsAvailability.m2578getCanPasteimpl(iM2582unboximpl));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, bm3Var, textFieldSelectionState, TextContextMenuItems.SelectAll, MenuItemsAvailability.m2579getCanSelectAllimpl(iM2582unboximpl));
        if (PlatformUtils_androidKt.isAutofillAvailable()) {
            contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, bm3Var, textFieldSelectionState, TextContextMenuItems.Autofill, MenuItemsAvailability.m2575getCanAutofillimpl(iM2582unboximpl));
        }
        return j59.a;
    }

    private static final void contextMenuBuilder$lambda$0$textFieldItem(ContextMenuScope contextMenuScope, final ContextMenuState contextMenuState, final bm3<? super TextFieldSelectionState, ? super TextContextMenuItems, j59> bm3Var, final TextFieldSelectionState textFieldSelectionState, final TextContextMenuItems textContextMenuItems, boolean z) {
        if (z) {
            ContextMenuScope.item$default(contextMenuScope, new CommonContextMenuAreaKt.AnonymousClass1(textContextMenuItems), null, false, null, new ll3<j59>() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$contextMenuBuilder$lambda$0$textFieldItem$$inlined$TextItem$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    bm3Var.invoke(textFieldSelectionState, textContextMenuItems);
                    ContextMenuStateKt.close(contextMenuState);
                }

                @Override // defpackage.ll3
                public /* bridge */ /* synthetic */ j59 invoke() {
                    invoke2();
                    return j59.a;
                }
            }, 14, null);
        }
    }

    public static final Object defaultDetectTextFieldTapGestures(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super j59> e02Var) {
        Object objDetectTapAndPress = TapGestureDetectorKt.detectTapAndPress(pointerInputScope, new AnonymousClass2(mutableInteractionSource, textFieldSelectionState, null), new lj7(ll3Var, textFieldSelectionState, ll3Var2), e02Var);
        return objDetectTapAndPress == a32.COROUTINE_SUSPENDED ? objDetectTapAndPress : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 defaultDetectTextFieldTapGestures$lambda$0(ll3 ll3Var, TextFieldSelectionState textFieldSelectionState, ll3 ll3Var2, Offset offset) {
        ll3Var.invoke();
        if (textFieldSelectionState.getEnabled() && textFieldSelectionState.isFocused()) {
            if (!textFieldSelectionState.getReadOnly()) {
                ll3Var2.invoke();
                if (textFieldSelectionState.getTextFieldState$foundation().getVisualText().length() > 0) {
                    textFieldSelectionState.setShowCursorHandle(true);
                }
            }
            textFieldSelectionState.updateTextToolbarState(TextToolbarState.None);
            textFieldSelectionState.m2880placeCursorAtNearestOffsetk4lQ0M(TextLayoutStateKt.m2825fromDecorationToTextLayoutUv8p0NA(textFieldSelectionState.getTextLayoutState$foundation(), textFieldSelectionState.getTextLayoutState$foundation().m2818coercedInVisibleBoundsOfInputTextMKHz9U$foundation(offset.m5997unboximpl())));
        }
        return j59.a;
    }

    public static final Object defaultTextFieldSelectionGestures(PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures(pointerInputScope, mouseSelectionObserver, textDragObserver, e02Var);
        return objAwaitSelectionGestures == a32.COROUTINE_SUSPENDED ? objAwaitSelectionGestures : j59.a;
    }

    private static final void logDebug(ll3<String> ll3Var) {
    }

    public static final ll3<j59> menuItem(final TextFieldSelectionState textFieldSelectionState, boolean z, final TextToolbarState textToolbarState, final ll3<j59> ll3Var) {
        if (z) {
            return new ll3<j59>() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt.menuItem.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ll3Var.invoke();
                    textFieldSelectionState.updateTextToolbarState(textToolbarState);
                }

                @Override // defpackage.ll3
                public /* bridge */ /* synthetic */ j59 invoke() {
                    invoke2();
                    return j59.a;
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: reverse-5zc-tL8, reason: not valid java name */
    public static final long m2889reverse5zctL8(long j) {
        return TextRangeKt.TextRange(TextRange.m8486getEndimpl(j), TextRange.m8491getStartimpl(j));
    }
}
