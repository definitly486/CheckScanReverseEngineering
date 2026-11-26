package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursor_androidKt;
import androidx.compose.foundation.text.TextLayoutHelperKt;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGesturesModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.ny2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.wu2;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionManager {
    public static final int $stable = 8;
    private Clipboard clipboard;
    private y22 coroutineScope;
    private final MutableState currentDragPosition$delegate;
    private long dragBeginPosition;
    private TextRange dragBeginSelection;
    private long dragTotalDistance;
    private final MutableState draggingHandle$delegate;
    private final MutableState editable$delegate;
    private final MutableState enabled$delegate;
    private FocusRequester focusRequester;
    private HapticFeedback hapticFeedBack;
    private final MutableState hasAvailableTextToPaste$delegate;
    private TextRange latestSelection;
    private final MouseSelectionObserver mouseSelectionObserver;
    private OffsetMapping offsetMapping;
    private TextFieldValue oldValue;
    private nl3<? super TextFieldValue, j59> onValueChange;
    private PlatformSelectionBehaviors platformSelectionBehaviors;
    private int previousRawDragOffset;
    private SelectionLayout previousSelectionLayout;
    private ll3<j59> requestAutofillAction;
    private LegacyTextFieldState state;
    private TextToolbar textToolbar;
    private boolean textToolbarShownViaProvider;
    private ToolbarRequester toolbarRequester;
    private final TextDragObserver touchSelectionObserver;
    private final UndoManager undoManager;
    private final MutableState<TextFieldValue> valueState;
    private VisualTransformation visualTransformation;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1", f = "TextFieldSelectionManager.kt", l = {1083}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0$0(TextFieldSelectionManager textFieldSelectionManager) {
            y22 coroutineScope$foundation = textFieldSelectionManager.getCoroutineScope$foundation();
            if (coroutineScope$foundation != null) {
                av0.c(coroutineScope$foundation, null, c32.UNDISPATCHED, new TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$copy$1$1(textFieldSelectionManager, null), 1);
            }
            textFieldSelectionManager.hideSelectionToolbar$foundation();
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0$1(TextFieldSelectionManager textFieldSelectionManager) {
            y22 coroutineScope$foundation = textFieldSelectionManager.getCoroutineScope$foundation();
            if (coroutineScope$foundation != null) {
                av0.c(coroutineScope$foundation, null, c32.UNDISPATCHED, new TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$cut$1$1(textFieldSelectionManager, null), 1);
            }
            textFieldSelectionManager.hideSelectionToolbar$foundation();
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0$2(TextFieldSelectionManager textFieldSelectionManager) {
            y22 coroutineScope$foundation = textFieldSelectionManager.getCoroutineScope$foundation();
            if (coroutineScope$foundation != null) {
                av0.c(coroutineScope$foundation, null, c32.UNDISPATCHED, new TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$paste$1$1(textFieldSelectionManager, null), 1);
            }
            textFieldSelectionManager.hideSelectionToolbar$foundation();
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0$3(TextFieldSelectionManager textFieldSelectionManager) {
            textFieldSelectionManager.selectAll$foundation();
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0$4(TextFieldSelectionManager textFieldSelectionManager) {
            textFieldSelectionManager.autofill$foundation();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TextFieldSelectionManager.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                this.label = 1;
                if (textFieldSelectionManager.updateClipboardEntry$foundation(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Snapshot.Companion companion = Snapshot.Companion;
            final TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                ll3<j59> ll3Var = textFieldSelectionManager2.canShowCopyMenuItem$foundation() ? new ll3() { // from class: androidx.compose.foundation.text.selection.e
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldSelectionManager.AnonymousClass1.invokeSuspend$lambda$0$0(textFieldSelectionManager2);
                    }
                } : null;
                ll3<j59> ll3Var2 = textFieldSelectionManager2.canShowCutMenuItem$foundation() ? new ll3() { // from class: androidx.compose.foundation.text.selection.f
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldSelectionManager.AnonymousClass1.invokeSuspend$lambda$0$1(textFieldSelectionManager2);
                    }
                } : null;
                ll3<j59> ll3Var3 = textFieldSelectionManager2.canShowPasteMenuItem$foundation() ? new ll3() { // from class: androidx.compose.foundation.text.selection.g
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldSelectionManager.AnonymousClass1.invokeSuspend$lambda$0$2(textFieldSelectionManager2);
                    }
                } : null;
                ll3<j59> ll3Var4 = textFieldSelectionManager2.canShowSelectAllMenuItem$foundation() ? new ll3() { // from class: androidx.compose.foundation.text.selection.h
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldSelectionManager.AnonymousClass1.invokeSuspend$lambda$0$3(textFieldSelectionManager2);
                    }
                } : null;
                ll3<j59> ll3Var5 = textFieldSelectionManager2.canShowAutofillMenuItem$foundation() ? new ll3() { // from class: androidx.compose.foundation.text.selection.i
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldSelectionManager.AnonymousClass1.invokeSuspend$lambda$0$4(textFieldSelectionManager2);
                    }
                } : null;
                TextToolbar textToolbar = textFieldSelectionManager2.getTextToolbar();
                if (textToolbar != null) {
                    textToolbar.showMenu(textFieldSelectionManager2.getContentRect(), ll3Var, ll3Var3, ll3Var2, ll3Var4, ll3Var5);
                }
                j59 j59Var = j59.a;
                return j59.a;
            } finally {
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            }
        }
    }

    public TextFieldSelectionManager(UndoManager undoManager) {
        this.undoManager = undoManager;
        this.offsetMapping = ValidatingOffsetMappingKt.getValidatingEmptyOffsetMappingIdentity();
        this.onValueChange = new wu2(7);
        this.valueState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (jh2) null), null, 2, null);
        this.visualTransformation = VisualTransformation.Companion.getNone();
        Boolean bool = Boolean.TRUE;
        this.editable$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.enabled$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition = companion.m6003getZeroF1C5BW0();
        this.dragTotalDistance = companion.m6003getZeroF1C5BW0();
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.previousRawDragOffset = -1;
        this.oldValue = new TextFieldValue((String) null, 0L, (TextRange) null, 7, (jh2) null);
        this.hasAvailableTextToPaste$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.toolbarRequester = new ToolbarRequesterImpl();
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            private TextRange runningSelection;
            private boolean isLongPressSelectionOnly = true;
            private SelectionAdjustment selectionAdjustmentMode = SelectionAdjustment.Companion.getNone();

            private final void onEnd() {
                this.this$0.setDraggingHandle(null);
                this.this$0.m3035setCurrentDragPosition_kEHs6E(null);
                this.selectionAdjustmentMode = SelectionAdjustment.Companion.getNone();
                this.this$0.updateFloatingToolbar(true);
                TextRange textRange = this.runningSelection;
                boolean zM8485getCollapsedimpl = TextRange.m8485getCollapsedimpl(textRange != null ? textRange.m8495unboximpl() : this.this$0.getValue$foundation().m8741getSelectiond9O1mEE());
                this.this$0.setHandleState(zM8485getCollapsedimpl ? HandleState.Cursor : HandleState.Selection);
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation != null) {
                    state$foundation.setShowSelectionHandleStart(!zM8485getCollapsedimpl && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this.this$0, true));
                }
                LegacyTextFieldState state$foundation2 = this.this$0.getState$foundation();
                if (state$foundation2 != null) {
                    state$foundation2.setShowSelectionHandleEnd(!zM8485getCollapsedimpl && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this.this$0, false));
                }
                LegacyTextFieldState state$foundation3 = this.this$0.getState$foundation();
                if (state$foundation3 != null) {
                    state$foundation3.setShowCursorHandle(zM8485getCollapsedimpl && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this.this$0, true));
                }
                if (this.isLongPressSelectionOnly) {
                    TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                    textFieldSelectionManager.m3034maybeSuggestSelectionOEnZFl4(textFieldSelectionManager.dragBeginSelection);
                }
                this.this$0.dragBeginSelection = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                onEnd();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDown-k-4lQ0M */
            public void mo2596onDownk4lQ0M(long j) {
            }

            /* JADX WARN: Code duplicated, block: B:21:0x00be  */
            /* JADX WARN: Code duplicated, block: B:23:0x00c5  */
            /* JADX WARN: Code duplicated, block: B:24:0x00ce  */
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDrag-k-4lQ0M */
            public void mo2597onDragk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                TextFieldSelectionManager textFieldSelectionManager;
                TextRange textRange;
                int iM2628getOffsetForPosition3MmeM6k;
                long jM3036updateSelectionjSglsI8;
                if (!this.this$0.getEnabled() || this.this$0.getValue$foundation().getText().length() == 0) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.dragTotalDistance = Offset.m5992plusMKHz9U(textFieldSelectionManager2.dragTotalDistance, j);
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation != null && (layoutResult = state$foundation.getLayoutResult()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager3 = this.this$0;
                    textFieldSelectionManager3.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(Offset.m5992plusMKHz9U(textFieldSelectionManager3.dragBeginPosition, textFieldSelectionManager3.dragTotalDistance)));
                    if (textFieldSelectionManager3.dragBeginSelection == null) {
                        Offset offsetM3038getCurrentDragPosition_m7T9E = textFieldSelectionManager3.m3038getCurrentDragPosition_m7T9E();
                        offsetM3038getCurrentDragPosition_m7T9E.getClass();
                        if (layoutResult.m2629isPositionOnTextk4lQ0M(offsetM3038getCurrentDragPosition_m7T9E.m5997unboximpl())) {
                            textFieldSelectionManager = textFieldSelectionManager3;
                            textRange = textFieldSelectionManager.dragBeginSelection;
                            if (textRange != null) {
                                iM2628getOffsetForPosition3MmeM6k = TextRange.m8491getStartimpl(textRange.m8495unboximpl());
                            } else {
                                iM2628getOffsetForPosition3MmeM6k = layoutResult.m2628getOffsetForPosition3MmeM6k(textFieldSelectionManager.dragBeginPosition, false);
                            }
                            Offset offsetM3038getCurrentDragPosition_m7T9E2 = textFieldSelectionManager.m3038getCurrentDragPosition_m7T9E();
                            offsetM3038getCurrentDragPosition_m7T9E2.getClass();
                            int iM2628getOffsetForPosition3MmeM6k2 = layoutResult.m2628getOffsetForPosition3MmeM6k(offsetM3038getCurrentDragPosition_m7T9E2.m5997unboximpl(), false);
                            if (textFieldSelectionManager.dragBeginSelection != null && iM2628getOffsetForPosition3MmeM6k == iM2628getOffsetForPosition3MmeM6k2) {
                                return;
                            }
                            TextFieldValue value$foundation = textFieldSelectionManager.getValue$foundation();
                            Offset offsetM3038getCurrentDragPosition_m7T9E3 = textFieldSelectionManager.m3038getCurrentDragPosition_m7T9E();
                            offsetM3038getCurrentDragPosition_m7T9E3.getClass();
                            jM3036updateSelectionjSglsI8 = textFieldSelectionManager.m3036updateSelectionjSglsI8(value$foundation, offsetM3038getCurrentDragPosition_m7T9E3.m5997unboximpl(), false, false, this.selectionAdjustmentMode, true, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()));
                        } else {
                            int iTransformedToOriginal = textFieldSelectionManager3.getOffsetMapping$foundation().transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(layoutResult, textFieldSelectionManager3.dragBeginPosition, false, 2, null));
                            OffsetMapping offsetMapping$foundation = textFieldSelectionManager3.getOffsetMapping$foundation();
                            Offset offsetM3038getCurrentDragPosition_m7T9E4 = textFieldSelectionManager3.m3038getCurrentDragPosition_m7T9E();
                            offsetM3038getCurrentDragPosition_m7T9E4.getClass();
                            SelectionAdjustment none = iTransformedToOriginal == offsetMapping$foundation.transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(layoutResult, offsetM3038getCurrentDragPosition_m7T9E4.m5997unboximpl(), false, 2, null)) ? SelectionAdjustment.Companion.getNone() : SelectionAdjustment.Companion.getWord();
                            TextFieldValue value$foundation2 = textFieldSelectionManager3.getValue$foundation();
                            Offset offsetM3038getCurrentDragPosition_m7T9E5 = textFieldSelectionManager3.m3038getCurrentDragPosition_m7T9E();
                            offsetM3038getCurrentDragPosition_m7T9E5.getClass();
                            textFieldSelectionManager = textFieldSelectionManager3;
                            jM3036updateSelectionjSglsI8 = textFieldSelectionManager.m3036updateSelectionjSglsI8(value$foundation2, offsetM3038getCurrentDragPosition_m7T9E5.m5997unboximpl(), false, false, none, true, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()));
                        }
                    } else {
                        textFieldSelectionManager = textFieldSelectionManager3;
                        textRange = textFieldSelectionManager.dragBeginSelection;
                        if (textRange != null) {
                            iM2628getOffsetForPosition3MmeM6k = TextRange.m8491getStartimpl(textRange.m8495unboximpl());
                        } else {
                            iM2628getOffsetForPosition3MmeM6k = layoutResult.m2628getOffsetForPosition3MmeM6k(textFieldSelectionManager.dragBeginPosition, false);
                        }
                        Offset offsetM3038getCurrentDragPosition_m7T9E6 = textFieldSelectionManager.m3038getCurrentDragPosition_m7T9E();
                        offsetM3038getCurrentDragPosition_m7T9E6.getClass();
                        int iM2628getOffsetForPosition3MmeM6k3 = layoutResult.m2628getOffsetForPosition3MmeM6k(offsetM3038getCurrentDragPosition_m7T9E6.m5997unboximpl(), false);
                        if (textFieldSelectionManager.dragBeginSelection != null) {
                        }
                        TextFieldValue value$foundation3 = textFieldSelectionManager.getValue$foundation();
                        Offset offsetM3038getCurrentDragPosition_m7T9E7 = textFieldSelectionManager.m3038getCurrentDragPosition_m7T9E();
                        offsetM3038getCurrentDragPosition_m7T9E7.getClass();
                        jM3036updateSelectionjSglsI8 = textFieldSelectionManager.m3036updateSelectionjSglsI8(value$foundation3, offsetM3038getCurrentDragPosition_m7T9E7.m5997unboximpl(), false, false, this.selectionAdjustmentMode, true, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()));
                    }
                    this.runningSelection = TextRange.m8479boximpl(jM3036updateSelectionjSglsI8);
                    if (!TextRange.m8483equalsimpl(jM3036updateSelectionjSglsI8, textFieldSelectionManager.dragBeginSelection)) {
                        this.isLongPressSelectionOnly = false;
                    }
                }
                this.this$0.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onStart-3MmeM6k */
            public void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                long j2;
                TextLayoutResultProxy layoutResult;
                TextLayoutResultProxy layoutResult2;
                if (this.this$0.getEnabled() && this.this$0.getDraggingHandle() == null) {
                    this.this$0.setDraggingHandle(Handle.SelectionEnd);
                    this.this$0.previousRawDragOffset = -1;
                    this.isLongPressSelectionOnly = true;
                    this.selectionAdjustmentMode = selectionAdjustment;
                    this.this$0.hideSelectionToolbar$foundation();
                    LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                    if (state$foundation == null || (layoutResult2 = state$foundation.getLayoutResult()) == null || !layoutResult2.m2629isPositionOnTextk4lQ0M(j)) {
                        j2 = j;
                        LegacyTextFieldState state$foundation2 = this.this$0.getState$foundation();
                        if (state$foundation2 != null && (layoutResult = state$foundation2.getLayoutResult()) != null) {
                            TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                            int iTransformedToOriginal = textFieldSelectionManager.getOffsetMapping$foundation().transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(layoutResult, j2, false, 2, null));
                            TextFieldValue textFieldValueM3032createTextFieldValueFDrldGo = textFieldSelectionManager.m3032createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().getAnnotatedString(), TextRangeKt.TextRange(iTransformedToOriginal, iTransformedToOriginal));
                            textFieldSelectionManager.enterSelectionMode$foundation(false);
                            HapticFeedback hapticFeedBack = textFieldSelectionManager.getHapticFeedBack();
                            if (hapticFeedBack != null) {
                                hapticFeedBack.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
                            }
                            textFieldSelectionManager.getOnValueChange$foundation().invoke(textFieldValueM3032createTextFieldValueFDrldGo);
                            textFieldSelectionManager.m3044setLatestSelectionOEnZFl4$foundation(TextRange.m8479boximpl(textFieldValueM3032createTextFieldValueFDrldGo.m8741getSelectiond9O1mEE()));
                        }
                        this.isLongPressSelectionOnly = false;
                    } else {
                        if (this.this$0.getValue$foundation().getText().length() == 0) {
                            return;
                        }
                        this.this$0.enterSelectionMode$foundation(false);
                        TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                        long jM3036updateSelectionjSglsI8 = textFieldSelectionManager2.m3036updateSelectionjSglsI8(TextFieldValue.m8736copy3r_uNRQ$default(textFieldSelectionManager2.getValue$foundation(), (AnnotatedString) null, TextRange.Companion.m8496getZerod9O1mEE(), (TextRange) null, 5, (Object) null), j, true, false, this.selectionAdjustmentMode, true, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI()));
                        j2 = j;
                        this.this$0.dragBeginSelection = TextRange.m8479boximpl(jM3036updateSelectionjSglsI8);
                        this.runningSelection = TextRange.m8479boximpl(jM3036updateSelectionjSglsI8);
                    }
                    this.this$0.setHandleState(HandleState.None);
                    this.this$0.dragBeginPosition = j2;
                    TextFieldSelectionManager textFieldSelectionManager3 = this.this$0;
                    textFieldSelectionManager3.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(textFieldSelectionManager3.dragBeginPosition));
                    this.this$0.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                onEnd();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
            }
        };
        this.mouseSelectionObserver = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1
            private TextRange initialSelection;
            private boolean isDoubleOrTripleClickSelectionOnly = true;

            public final TextRange getInitialSelection() {
                return this.initialSelection;
            }

            public final boolean isDoubleOrTripleClickSelectionOnly() {
                return this.isDoubleOrTripleClickSelectionOnly;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onDrag-3MmeM6k */
            public boolean mo2884onDrag3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                LegacyTextFieldState state$foundation;
                if (!this.this$0.getEnabled() || this.this$0.getValue$foundation().getText().length() == 0 || (state$foundation = this.this$0.getState$foundation()) == null || state$foundation.getLayoutResult() == null) {
                    return false;
                }
                updateMouseSelection(this.this$0.getValue$foundation(), j, false, selectionAdjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public void onDragDone() {
                if (this.isDoubleOrTripleClickSelectionOnly) {
                    this.this$0.m3034maybeSuggestSelectionOEnZFl4(this.initialSelection);
                }
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onExtend-k-4lQ0M */
            public boolean mo2885onExtendk4lQ0M(long j) {
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation == null || state$foundation.getLayoutResult() == null || !this.this$0.getEnabled()) {
                    return false;
                }
                this.this$0.previousRawDragOffset = -1;
                FocusRequester focusRequester = this.this$0.getFocusRequester();
                if (focusRequester != null) {
                    FocusRequester.m5892requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
                }
                updateMouseSelection(this.this$0.getValue$foundation(), j, false, SelectionAdjustment.Companion.getNone());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onExtendDrag-k-4lQ0M */
            public boolean mo2886onExtendDragk4lQ0M(long j) {
                LegacyTextFieldState state$foundation;
                if (!this.this$0.getEnabled() || this.this$0.getValue$foundation().getText().length() == 0 || (state$foundation = this.this$0.getState$foundation()) == null || state$foundation.getLayoutResult() == null) {
                    return false;
                }
                updateMouseSelection(this.this$0.getValue$foundation(), j, false, SelectionAdjustment.Companion.getNone());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onStart-9KIMszo */
            public boolean mo2887onStart9KIMszo(long j, SelectionAdjustment selectionAdjustment, int i) {
                LegacyTextFieldState state$foundation;
                if (!this.this$0.getEnabled() || this.this$0.getValue$foundation().getText().length() == 0 || (state$foundation = this.this$0.getState$foundation()) == null || state$foundation.getLayoutResult() == null) {
                    return false;
                }
                FocusRequester focusRequester = this.this$0.getFocusRequester();
                if (focusRequester != null) {
                    FocusRequester.m5892requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
                }
                this.this$0.dragBeginPosition = j;
                this.this$0.previousRawDragOffset = -1;
                TextFieldSelectionManager.enterSelectionMode$foundation$default(this.this$0, false, 1, null);
                long jUpdateMouseSelection = updateMouseSelection(this.this$0.getValue$foundation(), this.this$0.dragBeginPosition, true, selectionAdjustment);
                if (i >= 2) {
                    this.isDoubleOrTripleClickSelectionOnly = true;
                    this.initialSelection = TextRange.m8479boximpl(jUpdateMouseSelection);
                }
                return true;
            }

            public final void setDoubleOrTripleClickSelectionOnly(boolean z) {
                this.isDoubleOrTripleClickSelectionOnly = z;
            }

            public final void setInitialSelection(TextRange textRange) {
                this.initialSelection = textRange;
            }

            public final long updateMouseSelection(TextFieldValue textFieldValue, long j, boolean z, SelectionAdjustment selectionAdjustment) {
                long jM3036updateSelectionjSglsI8 = this.this$0.m3036updateSelectionjSglsI8(textFieldValue, j, z, false, selectionAdjustment, false, null);
                if (!TextRange.m8483equalsimpl(jM3036updateSelectionjSglsI8, this.initialSelection)) {
                    this.isDoubleOrTripleClickSelectionOnly = false;
                }
                this.this$0.setHandleState(TextRange.m8485getCollapsedimpl(jM3036updateSelectionjSglsI8) ? HandleState.Cursor : HandleState.Selection);
                return jM3036updateSelectionjSglsI8;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect _get_contextMenuAreaModifier_$lambda$0(TextFieldSelectionManager textFieldSelectionManager, LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        Rect contentRect = textFieldSelectionManager.getContentRect();
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
        if (legacyTextFieldState == null || (layoutCoordinates2 = legacyTextFieldState.getLayoutCoordinates()) == null) {
            return null;
        }
        return TextContextMenuToolbarHandlerModifierKt.translateRootToDestination(contentRect, layoutCoordinates2, layoutCoordinates);
    }

    public static /* synthetic */ mb4 copy$foundation$default(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionManager.copy$foundation(z);
    }

    public static /* synthetic */ AnnotatedString copyWithResult$foundation$default(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionManager.copyWithResult$foundation(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createTextFieldValue-FDrldGo, reason: not valid java name */
    public final TextFieldValue m3032createTextFieldValueFDrldGo(AnnotatedString annotatedString, long j) {
        return new TextFieldValue(annotatedString, j, (TextRange) null, 4, (jh2) null);
    }

    /* JADX INFO: renamed from: deselect-_kEHs6E$foundation$default, reason: not valid java name */
    public static /* synthetic */ void m3033deselect_kEHs6E$foundation$default(TextFieldSelectionManager textFieldSelectionManager, Offset offset, int i, Object obj) {
        if ((i & 1) != 0) {
            offset = null;
        }
        textFieldSelectionManager.m3037deselect_kEHs6E$foundation(offset);
    }

    public static /* synthetic */ void enterSelectionMode$foundation$default(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        textFieldSelectionManager.enterSelectionMode$foundation(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Rect getContentRect() {
        char c;
        long j;
        float fIntBitsToFloat;
        LayoutCoordinates layoutCoordinates;
        TextLayoutResult value;
        Rect cursorRect;
        LayoutCoordinates layoutCoordinates2;
        TextLayoutResult value2;
        Rect cursorRect2;
        LayoutCoordinates layoutCoordinates3;
        LayoutCoordinates layoutCoordinates4;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.isLayoutResultStale()) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                int iOriginalToTransformed = this.offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(getValue$foundation().m8741getSelectiond9O1mEE()));
                int iOriginalToTransformed2 = this.offsetMapping.originalToTransformed(TextRange.m8486getEndimpl(getValue$foundation().m8741getSelectiond9O1mEE()));
                LegacyTextFieldState legacyTextFieldState2 = this.state;
                long jM6003getZeroF1C5BW0 = (legacyTextFieldState2 == null || (layoutCoordinates4 = legacyTextFieldState2.getLayoutCoordinates()) == null) ? Offset.Companion.m6003getZeroF1C5BW0() : layoutCoordinates4.mo7713localToRootMKHz9U(m3040getHandlePositiontuRUvjQ$foundation(true));
                LegacyTextFieldState legacyTextFieldState3 = this.state;
                long jM6003getZeroF1C5BW1 = (legacyTextFieldState3 == null || (layoutCoordinates3 = legacyTextFieldState3.getLayoutCoordinates()) == null) ? Offset.Companion.m6003getZeroF1C5BW0() : layoutCoordinates3.mo7713localToRootMKHz9U(m3040getHandlePositiontuRUvjQ$foundation(false));
                LegacyTextFieldState legacyTextFieldState4 = this.state;
                float fIntBitsToFloat2 = 0.0f;
                if (legacyTextFieldState4 == null || (layoutCoordinates2 = legacyTextFieldState4.getLayoutCoordinates()) == null) {
                    c = ' ';
                    j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                    fIntBitsToFloat = 0.0f;
                } else {
                    TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                    float top = (layoutResult == null || (value2 = layoutResult.getValue()) == null || (cursorRect2 = value2.getCursorRect(iOriginalToTransformed)) == null) ? 0.0f : cursorRect2.getTop();
                    long jFloatToRawIntBits = Float.floatToRawIntBits(0.0f);
                    int iFloatToRawIntBits = Float.floatToRawIntBits(top);
                    c = ' ';
                    j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                    fIntBitsToFloat = Float.intBitsToFloat((int) (layoutCoordinates2.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) iFloatToRawIntBits) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (jFloatToRawIntBits << 32))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
                LegacyTextFieldState legacyTextFieldState5 = this.state;
                if (legacyTextFieldState5 != null && (layoutCoordinates = legacyTextFieldState5.getLayoutCoordinates()) != null) {
                    TextLayoutResultProxy layoutResult2 = legacyTextFieldState.getLayoutResult();
                    fIntBitsToFloat2 = Float.intBitsToFloat((int) (layoutCoordinates.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << c) | (((long) Float.floatToRawIntBits((layoutResult2 == null || (value = layoutResult2.getValue()) == null || (cursorRect = value.getCursorRect(iOriginalToTransformed2)) == null) ? 0.0f : cursorRect.getTop())) & j))) & j));
                }
                int i = (int) (jM6003getZeroF1C5BW0 >> c);
                int i2 = (int) (jM6003getZeroF1C5BW1 >> c);
                return new Rect(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), Math.min(fIntBitsToFloat, fIntBitsToFloat2), Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), (legacyTextFieldState.getTextDelegate().getDensity().getDensity() * Dp.m9042constructorimpl(25.0f)) + Math.max(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW0 & j)), Float.intBitsToFloat((int) (jM6003getZeroF1C5BW1 & j))));
            }
        }
        return Rect.Companion.getZero();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b36<String, TextRange> getContextTextAndSelection() {
        String text;
        TextRange textRange;
        AnnotatedString transformedText$foundation = getTransformedText$foundation();
        if (transformedText$foundation == null || (text = transformedText$foundation.getText()) == null || (textRange = this.latestSelection) == null) {
            return null;
        }
        long jM8495unboximpl = textRange.m8495unboximpl();
        return new b36<>(text, TextRange.m8479boximpl(TextRangeKt.TextRange(this.offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(jM8495unboximpl)), this.offsetMapping.originalToTransformed(TextRange.m8486getEndimpl(jM8495unboximpl)))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getHasAvailableTextToPaste() {
        return ((Boolean) this.hasAvailableTextToPaste$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasSelection() {
        return !TextRange.m8485getCollapsedimpl(getValue$foundation().m8741getSelectiond9O1mEE());
    }

    public static /* synthetic */ void getTextToolbarShown$foundation$annotations() {
    }

    public static /* synthetic */ void getToolbarRequester$foundation$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPassword() {
        return this.visualTransformation instanceof PasswordVisualTransformation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: maybeSuggestSelection-OEnZFl4, reason: not valid java name */
    public final void m3034maybeSuggestSelectionOEnZFl4(TextRange textRange) {
        PlatformSelectionBehaviors platformSelectionBehaviors;
        AnnotatedString transformedText$foundation;
        String text;
        y22 y22Var;
        if (textRange == null || (platformSelectionBehaviors = this.platformSelectionBehaviors) == null || (transformedText$foundation = getTransformedText$foundation()) == null || (text = transformedText$foundation.getText()) == null) {
            return;
        }
        OffsetMapping offsetMapping = this.offsetMapping;
        long jTextRange = TextRangeKt.TextRange(offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(textRange.m8495unboximpl())), offsetMapping.originalToTransformed(TextRange.m8486getEndimpl(textRange.m8495unboximpl())));
        if (text.length() <= 0 || TextRange.m8485getCollapsedimpl(jTextRange) || (y22Var = this.coroutineScope) == null) {
            return;
        }
        av0.c(y22Var, null, null, new TextFieldSelectionManager$maybeSuggestSelection$1(platformSelectionBehaviors, text, jTextRange, textRange, this, offsetMapping, null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onValueChange$lambda$0(TextFieldValue textFieldValue) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setCurrentDragPosition-_kEHs6E, reason: not valid java name */
    public final void m3035setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setHandleState(HandleState handleState) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.getHandleState() == handleState) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                legacyTextFieldState.setHandleState(handleState);
            }
        }
    }

    private final void setHasAvailableTextToPaste(boolean z) {
        this.hasAvailableTextToPaste$delegate.setValue(Boolean.valueOf(z));
    }

    private final mb4 showSelectionToolbarViaTextToolbar() {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return av0.c(y22Var, null, c32.UNDISPATCHED, new AnonymousClass1(null), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFloatingToolbar(boolean z) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.setShowFloatingToolbar(z);
        }
        if (z) {
            showSelectionToolbar$foundation();
        } else {
            hideSelectionToolbar$foundation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateSelection-jSglsI8, reason: not valid java name */
    public final long m3036updateSelectionjSglsI8(TextFieldValue textFieldValue, long j, boolean z, boolean z2, SelectionAdjustment selectionAdjustment, boolean z3, HapticFeedbackType hapticFeedbackType) {
        TextLayoutResultProxy layoutResult;
        int i;
        HapticFeedback hapticFeedback;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        long jTextRange = TextRangeKt.TextRange(this.offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(textFieldValue.m8741getSelectiond9O1mEE())), this.offsetMapping.originalToTransformed(TextRange.m8486getEndimpl(textFieldValue.m8741getSelectiond9O1mEE())));
        boolean z4 = false;
        int iM2628getOffsetForPosition3MmeM6k = layoutResult.m2628getOffsetForPosition3MmeM6k(j, false);
        int iM8491getStartimpl = (z2 || z) ? iM2628getOffsetForPosition3MmeM6k : TextRange.m8491getStartimpl(jTextRange);
        int iM8486getEndimpl = (!z2 || z) ? iM2628getOffsetForPosition3MmeM6k : TextRange.m8486getEndimpl(jTextRange);
        SelectionLayout selectionLayout = this.previousSelectionLayout;
        if (z || selectionLayout == null || (i = this.previousRawDragOffset) == -1) {
            i = -1;
        }
        SelectionLayout selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA = SelectionLayoutKt.m2991getTextFieldSelectionLayoutRcvTLA(layoutResult.getValue(), iM8491getStartimpl, iM8486getEndimpl, i, jTextRange, z, z2);
        if (!selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA.shouldRecomputeSelection(selectionLayout)) {
            return textFieldValue.m8741getSelectiond9O1mEE();
        }
        this.previousSelectionLayout = selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA;
        this.previousRawDragOffset = iM2628getOffsetForPosition3MmeM6k;
        Selection selectionAdjust = selectionAdjustment.adjust(selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA);
        long jTextRange2 = TextRangeKt.TextRange(this.offsetMapping.transformedToOriginal(selectionAdjust.getStart().getOffset()), this.offsetMapping.transformedToOriginal(selectionAdjust.getEnd().getOffset()));
        if (TextRange.m8484equalsimpl0(jTextRange2, textFieldValue.m8741getSelectiond9O1mEE())) {
            return textFieldValue.m8741getSelectiond9O1mEE();
        }
        boolean z5 = TextRange.m8490getReversedimpl(jTextRange2) != TextRange.m8490getReversedimpl(textFieldValue.m8741getSelectiond9O1mEE()) && TextRange.m8484equalsimpl0(TextRangeKt.TextRange(TextRange.m8486getEndimpl(jTextRange2), TextRange.m8491getStartimpl(jTextRange2)), textFieldValue.m8741getSelectiond9O1mEE());
        boolean z6 = TextRange.m8485getCollapsedimpl(jTextRange2) && TextRange.m8485getCollapsedimpl(textFieldValue.m8741getSelectiond9O1mEE());
        if (z3 && textFieldValue.getText().length() > 0 && !z5 && !z6 && hapticFeedbackType != null && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo7001performHapticFeedbackCdsT49E(hapticFeedbackType.m7008unboximpl());
        }
        this.onValueChange.invoke(m3032createTextFieldValueFDrldGo(textFieldValue.getAnnotatedString(), jTextRange2));
        this.latestSelection = TextRange.m8479boximpl(jTextRange2);
        if (!z3) {
            updateFloatingToolbar(!TextRange.m8485getCollapsedimpl(jTextRange2));
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.setInTouchMode(z3);
        }
        LegacyTextFieldState legacyTextFieldState3 = this.state;
        if (legacyTextFieldState3 != null) {
            legacyTextFieldState3.setShowSelectionHandleStart(!TextRange.m8485getCollapsedimpl(jTextRange2) && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this, true));
        }
        LegacyTextFieldState legacyTextFieldState4 = this.state;
        if (legacyTextFieldState4 != null) {
            legacyTextFieldState4.setShowSelectionHandleEnd(!TextRange.m8485getCollapsedimpl(jTextRange2) && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this, false));
        }
        LegacyTextFieldState legacyTextFieldState5 = this.state;
        if (legacyTextFieldState5 != null) {
            if (TextRange.m8485getCollapsedimpl(jTextRange2) && TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(this, true)) {
                z4 = true;
            }
            legacyTextFieldState5.setShowCursorHandle(z4);
        }
        return jTextRange2;
    }

    public final void autofill$foundation() {
        ll3<j59> ll3Var = this.requestAutofillAction;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }

    public final boolean canShowAutofillMenuItem$foundation() {
        return getEditable() && TextRange.m8485getCollapsedimpl(getValue$foundation().m8741getSelectiond9O1mEE());
    }

    public final boolean canShowCopyMenuItem$foundation() {
        Clipboard clipboard;
        return getHasSelection() && !isPassword() && (clipboard = this.clipboard) != null && ClipboardUtils_androidKt.isWriteSupported(clipboard);
    }

    public final boolean canShowCutMenuItem$foundation() {
        Clipboard clipboard;
        return getHasSelection() && getEditable() && !isPassword() && (clipboard = this.clipboard) != null && ClipboardUtils_androidKt.isWriteSupported(clipboard);
    }

    public final boolean canShowPasteMenuItem$foundation() {
        Clipboard clipboard;
        return getEditable() && getHasAvailableTextToPaste() && (clipboard = this.clipboard) != null && ClipboardUtils_androidKt.isReadSupported(clipboard);
    }

    public final boolean canShowSelectAllMenuItem$foundation() {
        return TextRange.m8487getLengthimpl(getValue$foundation().m8741getSelectiond9O1mEE()) != getValue$foundation().getText().length();
    }

    public final void clearPreviewHighlight$foundation() {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m2565setDeletionPreviewHighlightRange5zctL8(TextRange.Companion.m8496getZerod9O1mEE());
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.m2568setSelectionPreviewHighlightRange5zctL8(TextRange.Companion.m8496getZerod9O1mEE());
        }
    }

    public final mb4 copy$foundation(boolean z) {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return av0.c(y22Var, null, c32.UNDISPATCHED, new TextFieldSelectionManager$copy$1(this, z, null), 1);
        }
        return null;
    }

    public final AnnotatedString copyWithResult$foundation(boolean z) {
        if (!getHasSelection() || isPassword()) {
            return null;
        }
        AnnotatedString selectedText = TextFieldValueKt.getSelectedText(getValue$foundation());
        if (!z) {
            return selectedText;
        }
        int iM8488getMaximpl = TextRange.m8488getMaximpl(getValue$foundation().m8741getSelectiond9O1mEE());
        this.onValueChange.invoke(m3032createTextFieldValueFDrldGo(getValue$foundation().getAnnotatedString(), TextRangeKt.TextRange(iM8488getMaximpl, iM8488getMaximpl)));
        setHandleState(HandleState.None);
        return selectedText;
    }

    public final TextDragObserver cursorDragObserver$foundation() {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDown-k-4lQ0M */
            public void mo2596onDownk4lQ0M(long j) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDrag-k-4lQ0M */
            public void mo2597onDragk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                HapticFeedback hapticFeedBack;
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragTotalDistance = Offset.m5992plusMKHz9U(textFieldSelectionManager.dragTotalDistance, j);
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation == null || (layoutResult = state$foundation.getLayoutResult()) == null) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(Offset.m5992plusMKHz9U(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                OffsetMapping offsetMapping$foundation = textFieldSelectionManager2.getOffsetMapping$foundation();
                Offset offsetM3038getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m3038getCurrentDragPosition_m7T9E();
                offsetM3038getCurrentDragPosition_m7T9E.getClass();
                int iTransformedToOriginal = offsetMapping$foundation.transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(layoutResult, offsetM3038getCurrentDragPosition_m7T9E.m5997unboximpl(), false, 2, null));
                long jTextRange = TextRangeKt.TextRange(iTransformedToOriginal, iTransformedToOriginal);
                if (TextRange.m8484equalsimpl0(jTextRange, textFieldSelectionManager2.getValue$foundation().m8741getSelectiond9O1mEE())) {
                    return;
                }
                LegacyTextFieldState state$foundation2 = textFieldSelectionManager2.getState$foundation();
                if ((state$foundation2 == null || state$foundation2.isInTouchMode()) && (hapticFeedBack = textFieldSelectionManager2.getHapticFeedBack()) != null) {
                    hapticFeedBack.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI());
                }
                textFieldSelectionManager2.getOnValueChange$foundation().invoke(textFieldSelectionManager2.m3032createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().getAnnotatedString(), jTextRange));
                textFieldSelectionManager2.m3044setLatestSelectionOEnZFl4$foundation(TextRange.m8479boximpl(jTextRange));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onStart-3MmeM6k */
            public void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                TextLayoutResultProxy layoutResult;
                long jM2988getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(this.this$0.m3040getHandlePositiontuRUvjQ$foundation(true));
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation == null || (layoutResult = state$foundation.getLayoutResult()) == null) {
                    return;
                }
                long jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation = layoutResult.m2631translateInnerToDecorationCoordinatesMKHz9U$foundation(jM2988getAdjustedCoordinatesk4lQ0M);
                this.this$0.dragBeginPosition = jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation;
                this.this$0.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation));
                this.this$0.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                this.this$0.setDraggingHandle(Handle.Cursor);
                this.this$0.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.setDraggingHandle(null);
                this.this$0.m3035setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                this.this$0.setDraggingHandle(null);
                this.this$0.m3035setCurrentDragPosition_kEHs6E(null);
            }
        };
    }

    public final mb4 cut$foundation() {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return av0.c(y22Var, null, c32.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null), 1);
        }
        return null;
    }

    public final AnnotatedString cutWithResult$foundation() {
        if (!getHasSelection() || !getEditable() || isPassword()) {
            return null;
        }
        AnnotatedString selectedText = TextFieldValueKt.getSelectedText(getValue$foundation());
        AnnotatedString annotatedStringPlus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation(), getValue$foundation().getText().length()).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation(), getValue$foundation().getText().length()));
        int iM8489getMinimpl = TextRange.m8489getMinimpl(getValue$foundation().m8741getSelectiond9O1mEE());
        this.onValueChange.invoke(m3032createTextFieldValueFDrldGo(annotatedStringPlus, TextRangeKt.TextRange(iM8489getMinimpl, iM8489getMinimpl)));
        setHandleState(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.forceNextSnapshot();
        }
        return selectedText;
    }

    /* JADX INFO: renamed from: deselect-_kEHs6E$foundation, reason: not valid java name */
    public final void m3037deselect_kEHs6E$foundation(Offset offset) {
        if (!TextRange.m8485getCollapsedimpl(getValue$foundation().m8741getSelectiond9O1mEE())) {
            LegacyTextFieldState legacyTextFieldState = this.state;
            TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
            TextFieldValue textFieldValueM8736copy3r_uNRQ$default = TextFieldValue.m8736copy3r_uNRQ$default(getValue$foundation(), (AnnotatedString) null, TextRangeKt.TextRange((offset == null || layoutResult == null) ? TextRange.m8488getMaximpl(getValue$foundation().m8741getSelectiond9O1mEE()) : this.offsetMapping.transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(layoutResult, offset.m5997unboximpl(), false, 2, null))), (TextRange) null, 5, (Object) null);
            this.onValueChange.invoke(textFieldValueM8736copy3r_uNRQ$default);
            this.latestSelection = TextRange.m8479boximpl(textFieldValueM8736copy3r_uNRQ$default.m8741getSelectiond9O1mEE());
        }
        setHandleState((offset == null || getValue$foundation().getText().length() <= 0) ? HandleState.None : HandleState.Cursor);
        updateFloatingToolbar(false);
    }

    public final void enterSelectionMode$foundation(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null && !legacyTextFieldState.getHasFocus() && (focusRequester = this.focusRequester) != null) {
            FocusRequester.m5892requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
        }
        this.oldValue = getValue$foundation();
        updateFloatingToolbar(z);
        setHandleState(HandleState.Selection);
    }

    public final void exitSelectionMode$foundation() {
        updateFloatingToolbar(false);
        setHandleState(HandleState.None);
    }

    public final Clipboard getClipboard$foundation() {
        return this.clipboard;
    }

    public final Modifier getContextMenuAreaModifier() {
        return !getEnabled() ? Modifier.Companion : TextContextMenuToolbarHandlerModifierKt.textContextMenuToolbarHandler(TextContextMenuGesturesModifierKt.showTextContextMenuOnSecondaryClick(Modifier.Companion, new TextFieldSelectionManager$contextMenuAreaModifier$1(this, null)), this.toolbarRequester, new TextFieldSelectionManager$contextMenuAreaModifier$2(this, null), new TextFieldSelectionManager$contextMenuAreaModifier$3(this, null), new ny2(this, 5));
    }

    public final y22 getCoroutineScope$foundation() {
        return this.coroutineScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getCurrentDragPosition-_m7T9-E, reason: not valid java name */
    public final Offset m3038getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    /* JADX INFO: renamed from: getCursorPosition-tuRUvjQ$foundation, reason: not valid java name */
    public final long m3039getCursorPositiontuRUvjQ$foundation(Density density) {
        int iOriginalToTransformed = this.offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(getValue$foundation().m8741getSelectiond9O1mEE()));
        LegacyTextFieldState legacyTextFieldState = this.state;
        TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
        layoutResult.getClass();
        TextLayoutResult value = layoutResult.getValue();
        Rect cursorRect = value.getCursorRect(kx6.f(iOriginalToTransformed, 0, value.getLayoutInput().getText().length()));
        float fMo1434toPx0680j_4 = (density.mo1434toPx0680j_4(TextFieldCursor_androidKt.getDefaultCursorThickness()) / 2.0f) + cursorRect.getLeft();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(cursorRect.getBottom())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_4)) << 32));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getEditable() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue()).booleanValue();
    }

    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    public final float getHandleLineHeight$foundation(boolean z) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        int iM8491getStartimpl = z ? TextRange.m8491getStartimpl(getValue$foundation().m8741getSelectiond9O1mEE()) : TextRange.m8486getEndimpl(getValue$foundation().m8741getSelectiond9O1mEE());
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null || (value = layoutResult.getValue()) == null) {
            return 0.0f;
        }
        return TextLayoutHelperKt.getLineHeight(value, iM8491getStartimpl);
    }

    /* JADX INFO: renamed from: getHandlePosition-tuRUvjQ$foundation, reason: not valid java name */
    public final long m3040getHandlePositiontuRUvjQ$foundation(boolean z) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null || (value = layoutResult.getValue()) == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        AnnotatedString transformedText$foundation = getTransformedText$foundation();
        if (transformedText$foundation == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        if (!aa4.e(transformedText$foundation.getText(), value.getLayoutInput().getText().getText())) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        long jM8741getSelectiond9O1mEE = getValue$foundation().m8741getSelectiond9O1mEE();
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(value, this.offsetMapping.originalToTransformed(z ? TextRange.m8491getStartimpl(jM8741getSelectiond9O1mEE) : TextRange.m8486getEndimpl(jM8741getSelectiond9O1mEE)), z, TextRange.m8490getReversedimpl(getValue$foundation().m8741getSelectiond9O1mEE()));
    }

    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    /* JADX INFO: renamed from: getLatestSelection-MzsxiRA$foundation, reason: not valid java name */
    public final TextRange m3041getLatestSelectionMzsxiRA$foundation() {
        return this.latestSelection;
    }

    public final MouseSelectionObserver getMouseSelectionObserver$foundation() {
        return this.mouseSelectionObserver;
    }

    public final OffsetMapping getOffsetMapping$foundation() {
        return this.offsetMapping;
    }

    public final nl3<TextFieldValue, j59> getOnValueChange$foundation() {
        return this.onValueChange;
    }

    public final PlatformSelectionBehaviors getPlatformSelectionBehaviors$foundation() {
        return this.platformSelectionBehaviors;
    }

    public final ll3<j59> getRequestAutofillAction$foundation() {
        return this.requestAutofillAction;
    }

    public final LegacyTextFieldState getState$foundation() {
        return this.state;
    }

    public final TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    public final boolean getTextToolbarShown$foundation() {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            return this.textToolbarShownViaProvider;
        }
        TextToolbar textToolbar = this.textToolbar;
        return (textToolbar != null ? textToolbar.getStatus() : null) == TextToolbarStatus.Shown;
    }

    public final boolean getTextToolbarShownViaProvider$foundation() {
        return this.textToolbarShownViaProvider;
    }

    public final ToolbarRequester getToolbarRequester$foundation() {
        return this.toolbarRequester;
    }

    public final TextDragObserver getTouchSelectionObserver$foundation() {
        return this.touchSelectionObserver;
    }

    public final AnnotatedString getTransformedText$foundation() {
        TextDelegate textDelegate;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (textDelegate = legacyTextFieldState.getTextDelegate()) == null) {
            return null;
        }
        return textDelegate.getText();
    }

    public final UndoManager getUndoManager() {
        return this.undoManager;
    }

    public final TextFieldValue getValue$foundation() {
        return this.valueState.getValue();
    }

    public final VisualTransformation getVisualTransformation$foundation() {
        return this.visualTransformation;
    }

    public final TextDragObserver handleDragObserver$foundation(final boolean z) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDown-k-4lQ0M */
            public void mo2596onDownk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                this.this$0.setDraggingHandle(z ? Handle.SelectionStart : Handle.SelectionEnd);
                long jM2988getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(this.this$0.m3040getHandlePositiontuRUvjQ$foundation(z));
                LegacyTextFieldState state$foundation = this.this$0.getState$foundation();
                if (state$foundation == null || (layoutResult = state$foundation.getLayoutResult()) == null) {
                    return;
                }
                long jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation = layoutResult.m2631translateInnerToDecorationCoordinatesMKHz9U$foundation(jM2988getAdjustedCoordinatesk4lQ0M);
                this.this$0.dragBeginPosition = jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation;
                this.this$0.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(jM2631translateInnerToDecorationCoordinatesMKHz9U$foundation));
                this.this$0.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                this.this$0.previousRawDragOffset = -1;
                LegacyTextFieldState state$foundation2 = this.this$0.getState$foundation();
                if (state$foundation2 != null) {
                    state$foundation2.setInTouchMode(true);
                }
                this.this$0.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDrag-k-4lQ0M */
            public void mo2597onDragk4lQ0M(long j) {
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragTotalDistance = Offset.m5992plusMKHz9U(textFieldSelectionManager.dragTotalDistance, j);
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.m3035setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(Offset.m5992plusMKHz9U(textFieldSelectionManager2.dragBeginPosition, this.this$0.dragTotalDistance)));
                TextFieldSelectionManager textFieldSelectionManager3 = this.this$0;
                TextFieldValue value$foundation = textFieldSelectionManager3.getValue$foundation();
                Offset offsetM3038getCurrentDragPosition_m7T9E = this.this$0.m3038getCurrentDragPosition_m7T9E();
                offsetM3038getCurrentDragPosition_m7T9E.getClass();
                textFieldSelectionManager3.m3036updateSelectionjSglsI8(value$foundation, offsetM3038getCurrentDragPosition_m7T9E.m5997unboximpl(), false, z, SelectionAdjustment.Companion.getCharacterWithWordAccelerate(), true, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()));
                this.this$0.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onStart-3MmeM6k */
            public void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.setDraggingHandle(null);
                this.this$0.m3035setCurrentDragPosition_kEHs6E(null);
                this.this$0.updateFloatingToolbar(true);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                this.this$0.setDraggingHandle(null);
                this.this$0.m3035setCurrentDragPosition_kEHs6E(null);
                this.this$0.updateFloatingToolbar(true);
            }
        };
    }

    public final void hideSelectionToolbar$foundation() {
        TextToolbar textToolbar;
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            this.toolbarRequester.hide();
            return;
        }
        TextToolbar textToolbar2 = this.textToolbar;
        if ((textToolbar2 != null ? textToolbar2.getStatus() : null) != TextToolbarStatus.Shown || (textToolbar = this.textToolbar) == null) {
            return;
        }
        textToolbar.hide();
    }

    public final boolean isCopyAllowed$foundation() {
        return getHasSelection() && !isPassword();
    }

    public final boolean isCutAllowed$foundation() {
        return getHasSelection() && getEditable() && !isPassword();
    }

    public final boolean isPasteAllowed$foundation() {
        return getEditable();
    }

    public final boolean isTextChanged$foundation() {
        return !aa4.e(this.oldValue.getText(), getValue$foundation().getText());
    }

    public final void paste$foundation(AnnotatedString annotatedString) {
        if (getEditable()) {
            AnnotatedString annotatedStringPlus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation(), getValue$foundation().getText().length()).plus(annotatedString).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation(), getValue$foundation().getText().length()));
            int length = annotatedString.length() + TextRange.m8489getMinimpl(getValue$foundation().m8741getSelectiond9O1mEE());
            this.onValueChange.invoke(m3032createTextFieldValueFDrldGo(annotatedStringPlus, TextRangeKt.TextRange(length, length)));
            setHandleState(HandleState.None);
            UndoManager undoManager = this.undoManager;
            if (undoManager != null) {
                undoManager.forceNextSnapshot();
            }
        }
    }

    public final void selectAll$foundation() {
        TextFieldValue textFieldValueM3032createTextFieldValueFDrldGo = m3032createTextFieldValueFDrldGo(getValue$foundation().getAnnotatedString(), TextRangeKt.TextRange(0, getValue$foundation().getText().length()));
        this.onValueChange.invoke(textFieldValueM3032createTextFieldValueFDrldGo);
        this.latestSelection = TextRange.m8479boximpl(textFieldValueM3032createTextFieldValueFDrldGo.m8741getSelectiond9O1mEE());
        this.oldValue = TextFieldValue.m8736copy3r_uNRQ$default(this.oldValue, (AnnotatedString) null, textFieldValueM3032createTextFieldValueFDrldGo.m8741getSelectiond9O1mEE(), (TextRange) null, 5, (Object) null);
        enterSelectionMode$foundation(true);
    }

    /* JADX INFO: renamed from: selectWordAtPositionIfNotAlreadySelected-k-4lQ0M, reason: not valid java name */
    public final void m3042selectWordAtPositionIfNotAlreadySelectedk4lQ0M(long j) {
        TextLayoutResultProxy layoutResult;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null || TextLayoutHelperKt.m2625isPositionInsideSelectionuaM50fQ(layoutResult.getValue(), layoutResult.m2630translateDecorationToInnerCoordinatesMKHz9U$foundation(j), TextRange.m8479boximpl(getValue$foundation().m8741getSelectiond9O1mEE()))) {
            return;
        }
        m3036updateSelectionjSglsI8(getValue$foundation(), j, true, false, SelectionAdjustment.Companion.getWord(), false, null);
    }

    public final void setClipboard$foundation(Clipboard clipboard) {
        this.clipboard = clipboard;
    }

    public final void setCoroutineScope$foundation(y22 y22Var) {
        this.coroutineScope = y22Var;
    }

    /* JADX INFO: renamed from: setDeletionPreviewHighlight-5zc-tL8$foundation, reason: not valid java name */
    public final void m3043setDeletionPreviewHighlight5zctL8$foundation(long j) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m2565setDeletionPreviewHighlightRange5zctL8(j);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.m2568setSelectionPreviewHighlightRange5zctL8(TextRange.Companion.m8496getZerod9O1mEE());
        }
        if (TextRange.m8485getCollapsedimpl(j)) {
            return;
        }
        exitSelectionMode$foundation();
    }

    public final void setEditable(boolean z) {
        this.editable$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setEnabled(boolean z) {
        this.enabled$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setFocusRequester(FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final void setHapticFeedBack(HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    /* JADX INFO: renamed from: setLatestSelection-OEnZFl4$foundation, reason: not valid java name */
    public final void m3044setLatestSelectionOEnZFl4$foundation(TextRange textRange) {
        this.latestSelection = textRange;
    }

    public final void setOffsetMapping$foundation(OffsetMapping offsetMapping) {
        this.offsetMapping = offsetMapping;
    }

    public final void setOnValueChange$foundation(nl3<? super TextFieldValue, j59> nl3Var) {
        this.onValueChange = nl3Var;
    }

    public final void setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors platformSelectionBehaviors) {
        this.platformSelectionBehaviors = platformSelectionBehaviors;
    }

    public final void setRequestAutofillAction$foundation(ll3<j59> ll3Var) {
        this.requestAutofillAction = ll3Var;
    }

    /* JADX INFO: renamed from: setSelectionPreviewHighlight-5zc-tL8$foundation, reason: not valid java name */
    public final void m3045setSelectionPreviewHighlight5zctL8$foundation(long j) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m2568setSelectionPreviewHighlightRange5zctL8(j);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.m2565setDeletionPreviewHighlightRange5zctL8(TextRange.Companion.m8496getZerod9O1mEE());
        }
        if (TextRange.m8485getCollapsedimpl(j)) {
            return;
        }
        exitSelectionMode$foundation();
    }

    public final void setState$foundation(LegacyTextFieldState legacyTextFieldState) {
        this.state = legacyTextFieldState;
    }

    public final void setTextToolbar(TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void setTextToolbarShownViaProvider$foundation(boolean z) {
        this.textToolbarShownViaProvider = z;
    }

    public final void setToolbarRequester$foundation(ToolbarRequester toolbarRequester) {
        this.toolbarRequester = toolbarRequester;
    }

    public final void setValue$foundation(TextFieldValue textFieldValue) {
        this.valueState.setValue(textFieldValue);
        this.latestSelection = TextRange.m8479boximpl(textFieldValue.m8741getSelectiond9O1mEE());
    }

    public final void setVisualTransformation$foundation(VisualTransformation visualTransformation) {
        this.visualTransformation = visualTransformation;
    }

    public final void showSelectionToolbar$foundation() {
        LegacyTextFieldState legacyTextFieldState;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (getEnabled() && ((legacyTextFieldState = this.state) == null || legacyTextFieldState.isInTouchMode())) {
                j59 j59Var = j59.a;
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                if (ComposeFoundationFlags.isNewContextMenuEnabled) {
                    this.toolbarRequester.show();
                    return;
                } else {
                    showSelectionToolbarViaTextToolbar();
                    return;
                }
            }
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object updateClipboardEntry$foundation(e02<? super j59> e02Var) {
        TextFieldSelectionManager$updateClipboardEntry$1 textFieldSelectionManager$updateClipboardEntry$1;
        if (e02Var instanceof TextFieldSelectionManager$updateClipboardEntry$1) {
            textFieldSelectionManager$updateClipboardEntry$1 = (TextFieldSelectionManager$updateClipboardEntry$1) e02Var;
            int i = textFieldSelectionManager$updateClipboardEntry$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                textFieldSelectionManager$updateClipboardEntry$1.label = i - Integer.MIN_VALUE;
            } else {
                textFieldSelectionManager$updateClipboardEntry$1 = new TextFieldSelectionManager$updateClipboardEntry$1(this, e02Var);
            }
        } else {
            textFieldSelectionManager$updateClipboardEntry$1 = new TextFieldSelectionManager$updateClipboardEntry$1(this, e02Var);
        }
        Object objHasAvailableTextToPaste = textFieldSelectionManager$updateClipboardEntry$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = textFieldSelectionManager$updateClipboardEntry$1.label;
        if (i2 == 0) {
            r57.b(objHasAvailableTextToPaste);
            Clipboard clipboard = this.clipboard;
            if (clipboard != null && ClipboardUtils_androidKt.isReadSupported(clipboard)) {
                textFieldSelectionManager$updateClipboardEntry$1.L$0 = this;
                textFieldSelectionManager$updateClipboardEntry$1.label = 1;
                objHasAvailableTextToPaste = TextFieldSelectionManager_androidKt.hasAvailableTextToPaste(this, textFieldSelectionManager$updateClipboardEntry$1);
                if (objHasAvailableTextToPaste == a32Var) {
                    return a32Var;
                }
            }
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        this = (TextFieldSelectionManager) textFieldSelectionManager$updateClipboardEntry$1.L$0;
        r57.b(objHasAvailableTextToPaste);
        this.setHasAvailableTextToPaste(((Boolean) objHasAvailableTextToPaste).booleanValue());
        return j59.a;
    }

    public final mb4 paste$foundation() {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return av0.c(y22Var, null, c32.UNDISPATCHED, new TextFieldSelectionManager$paste$1(this, null), 1);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ TextFieldSelectionManager(UndoManager undoManager, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : undoManager);
    }
}
