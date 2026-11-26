package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.content.internal.ReceiveContentConfiguration;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursor_androidKt;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldCharSequenceKt;
import androidx.compose.foundation.text.input.internal.IndexTransformationType;
import androidx.compose.foundation.text.input.internal.MathUtilsKt;
import androidx.compose.foundation.text.input.internal.SelectionWedgeAffinity;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.foundation.text.input.internal.TextLayoutStateKt;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.WedgeAffinity;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.SelectionLayout;
import androidx.compose.foundation.text.selection.SelectionLayoutKt;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.foundation.text.selection.TextSelectionDelegateKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.e84;
import defpackage.f02;
import defpackage.f57;
import defpackage.g03;
import defpackage.ge0;
import defpackage.h03;
import defpackage.h8;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.km1;
import defpackage.ll3;
import defpackage.lm;
import defpackage.mb4;
import defpackage.me0;
import defpackage.nl3;
import defpackage.o31;
import defpackage.og8;
import defpackage.pg8;
import defpackage.q07;
import defpackage.qm3;
import defpackage.r57;
import defpackage.s68;
import defpackage.si1;
import defpackage.v39;
import defpackage.y22;
import defpackage.z22;
import defpackage.zd3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionState {
    public static final int $stable = 8;
    private Clipboard clipboard;
    private ClipboardPasteState clipboardPasteState;
    private final y22 coroutineScope;
    private Density density;
    private final State derivedVisibleContentBounds$delegate;
    private final MutableState directDragGestureInitiator$delegate;
    private final MutableState draggingHandle$delegate;
    private boolean enabled;
    private HapticFeedback hapticFeedBack;
    private boolean isFocused;
    private final MutableState isInTouchMode$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
    private boolean isPassword;
    private final PlatformSelectionBehaviors platformSelectionBehaviors;
    private PressInteraction.Press pressInteraction;
    private int previousRawDragOffset;
    private SelectionLayout previousSelectionLayout;
    private final MutableState rawHandleDragPosition$delegate;
    private boolean readOnly;
    private ll3<? extends ReceiveContentConfiguration> receiveContentConfiguration;
    private ll3<j59> requestAutofillAction;
    private final MutableState showCursorHandle$delegate;
    private final MutableState startTextLayoutPositionInWindow$delegate;
    private final TransformedTextFieldState textFieldState;
    private final TextLayoutState textLayoutState;
    private TextToolbarHandler textToolbarHandler;
    private final MutableState textToolbarShown$delegate;
    private final MutableState textToolbarState$delegate;
    private final ToolbarRequester toolbarRequester;

    public enum InputType {
        None,
        Touch,
        Mouse;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<InputType> getEntries() {
            return $ENTRIES;
        }
    }

    public final class TextFieldMouseSelectionObserver implements MouseSelectionObserver {
        private int dragBeginOffsetInText = -1;
        private long dragBeginPosition = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        private boolean isDoubleOrTripleClickOnly = true;
        private final ll3<j59> requestFocus;

        public TextFieldMouseSelectionObserver(ll3<j59> ll3Var) {
            this.requestFocus = ll3Var;
        }

        /* JADX INFO: renamed from: updateSelection-12glfjA, reason: not valid java name */
        private final long m2883updateSelection12glfjA(long j, SelectionAdjustment selectionAdjustment, TextLayoutResult textLayoutResult, boolean z) {
            int length = textLayoutResult.getLayoutInput().getText().length();
            int iM2820getOffsetForPosition3MmeM6k = this.dragBeginOffsetInText;
            if (iM2820getOffsetForPosition3MmeM6k < 0 || iM2820getOffsetForPosition3MmeM6k > length) {
                iM2820getOffsetForPosition3MmeM6k = TextFieldSelectionState.this.getTextLayoutState$foundation().m2820getOffsetForPosition3MmeM6k(this.dragBeginPosition, false);
            }
            int i = iM2820getOffsetForPosition3MmeM6k;
            int iM2820getOffsetForPosition3MmeM6k2 = TextFieldSelectionState.this.getTextLayoutState$foundation().m2820getOffsetForPosition3MmeM6k(j, false);
            TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
            long jM2882updateSelectionQkiN0lo$foundation = textFieldSelectionState.m2882updateSelectionQkiN0lo$foundation(textFieldSelectionState.getTextFieldState$foundation().getVisualText(), i, iM2820getOffsetForPosition3MmeM6k2, false, selectionAdjustment, false, z, null);
            if (this.dragBeginOffsetInText == -1 && !TextRange.m8485getCollapsedimpl(jM2882updateSelectionQkiN0lo$foundation)) {
                this.dragBeginOffsetInText = TextRange.m8491getStartimpl(jM2882updateSelectionQkiN0lo$foundation);
            }
            if (TextRange.m8490getReversedimpl(jM2882updateSelectionQkiN0lo$foundation)) {
                jM2882updateSelectionQkiN0lo$foundation = TextFieldSelectionStateKt.m2889reverse5zctL8(jM2882updateSelectionQkiN0lo$foundation);
            }
            TextFieldSelectionState.this.getTextFieldState$foundation().m2838selectCharsIn5zctL8(jM2882updateSelectionQkiN0lo$foundation);
            TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
            return jM2882updateSelectionQkiN0lo$foundation;
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onDrag-3MmeM6k, reason: not valid java name */
        public boolean mo2884onDrag3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult();
            if (!TextFieldSelectionState.this.getEnabled() || layoutResult == null || TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().length() == 0) {
                return false;
            }
            if (TextRange.m8484equalsimpl0(TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE(), m2883updateSelection12glfjA(j, selectionAdjustment, layoutResult, false))) {
                return true;
            }
            this.isDoubleOrTripleClickOnly = false;
            return true;
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        public void onDragDone() {
            TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.None);
            if (this.isDoubleOrTripleClickOnly) {
                TextFieldSelectionState.this.maybeSuggestSelectionRange();
            }
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onExtend-k-4lQ0M, reason: not valid java name */
        public boolean mo2885onExtendk4lQ0M(long j) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult();
            if (!TextFieldSelectionState.this.getEnabled() || layoutResult == null || TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().length() == 0) {
                return false;
            }
            this.isDoubleOrTripleClickOnly = false;
            this.requestFocus.invoke();
            m2883updateSelection12glfjA(j, SelectionAdjustment.Companion.getNone(), layoutResult, false);
            return true;
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onExtendDrag-k-4lQ0M, reason: not valid java name */
        public boolean mo2886onExtendDragk4lQ0M(long j) {
            return true;
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onStart-9KIMszo, reason: not valid java name */
        public boolean mo2887onStart9KIMszo(long j, SelectionAdjustment selectionAdjustment, int i) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult();
            if (!TextFieldSelectionState.this.getEnabled() || layoutResult == null || TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().length() == 0) {
                return false;
            }
            this.isDoubleOrTripleClickOnly = i >= 2;
            TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.Mouse);
            this.requestFocus.invoke();
            TextFieldSelectionState.this.previousRawDragOffset = -1;
            this.dragBeginOffsetInText = -1;
            this.dragBeginPosition = j;
            this.dragBeginOffsetInText = TextRange.m8491getStartimpl(m2883updateSelection12glfjA(j, selectionAdjustment, layoutResult, true));
            return true;
        }
    }

    public final class TextFieldTextDragObserver implements TextDragObserver {
        private Handle actingHandle;
        private int dragBeginOffsetInText = -1;
        private long dragBeginPosition;
        private long dragTotalDistance;
        private boolean isLongPressSelectionOnly;
        private final ll3<j59> requestFocus;
        private SelectionAdjustment selectionAdjustmentMode;

        public TextFieldTextDragObserver(ll3<j59> ll3Var) {
            this.requestFocus = ll3Var;
            Offset.Companion companion = Offset.Companion;
            this.dragBeginPosition = companion.m6002getUnspecifiedF1C5BW0();
            this.dragTotalDistance = companion.m6003getZeroF1C5BW0();
            this.actingHandle = Handle.SelectionEnd;
            this.isLongPressSelectionOnly = true;
            this.selectionAdjustmentMode = SelectionAdjustment.Companion.getNone();
        }

        private final void onDragStop() {
            if ((this.dragBeginPosition & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                TextFieldSelectionState.this.clearHandleDragging();
                this.dragBeginOffsetInText = -1;
                Offset.Companion companion = Offset.Companion;
                this.dragBeginPosition = companion.m6002getUnspecifiedF1C5BW0();
                this.dragTotalDistance = companion.m6003getZeroF1C5BW0();
                TextFieldSelectionState.this.previousRawDragOffset = -1;
                this.selectionAdjustmentMode = SelectionAdjustment.Companion.getNone();
                TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.None);
                this.requestFocus.invoke();
                if (this.isLongPressSelectionOnly) {
                    TextFieldSelectionState.this.maybeSuggestSelectionRange();
                }
            }
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onCancel() {
            onDragStop();
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onDown-k-4lQ0M */
        public void mo2596onDownk4lQ0M(long j) {
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onDrag-k-4lQ0M */
        public void mo2597onDragk4lQ0M(long j) {
            int iIntValue;
            int iM2820getOffsetForPosition3MmeM6k;
            SelectionAdjustment none;
            TextLayoutInput layoutInput;
            AnnotatedString text;
            Handle handle;
            if (!TextFieldSelectionState.this.getEnabled() || TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult() == null || TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().length() == 0) {
                return;
            }
            long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(this.dragTotalDistance, j);
            this.dragTotalDistance = jM5992plusMKHz9U;
            long jM5992plusMKHz9U2 = Offset.m5992plusMKHz9U(this.dragBeginPosition, jM5992plusMKHz9U);
            if (this.dragBeginOffsetInText >= 0 || TextFieldSelectionState.this.getTextLayoutState$foundation().m2821isPositionOnTextk4lQ0M(jM5992plusMKHz9U2)) {
                Integer num = null;
                if (ComposeFoundationFlags.isConcurrentTextFieldSelectionFixEnabled) {
                    TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult();
                    int length = (layoutResult == null || (layoutInput = layoutResult.getLayoutInput()) == null || (text = layoutInput.getText()) == null) ? 0 : text.length();
                    Integer numValueOf = Integer.valueOf(this.dragBeginOffsetInText);
                    int iIntValue2 = numValueOf.intValue();
                    if (iIntValue2 >= 0 && iIntValue2 <= length) {
                        num = numValueOf;
                    }
                    iIntValue = num != null ? num.intValue() : TextFieldSelectionState.this.getTextLayoutState$foundation().m2820getOffsetForPosition3MmeM6k(this.dragBeginPosition, false);
                } else {
                    Integer numValueOf2 = Integer.valueOf(this.dragBeginOffsetInText);
                    num = numValueOf2.intValue() >= 0 ? numValueOf2 : null;
                    iIntValue = num != null ? num.intValue() : TextFieldSelectionState.this.getTextLayoutState$foundation().m2820getOffsetForPosition3MmeM6k(this.dragBeginPosition, false);
                }
                iM2820getOffsetForPosition3MmeM6k = TextFieldSelectionState.this.getTextLayoutState$foundation().m2820getOffsetForPosition3MmeM6k(jM5992plusMKHz9U2, false);
                if (this.dragBeginOffsetInText < 0 && iIntValue == iM2820getOffsetForPosition3MmeM6k) {
                    return;
                }
                none = this.selectionAdjustmentMode;
                TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
            } else {
                iIntValue = TextLayoutState.m2817getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState$foundation(), this.dragBeginPosition, false, 2, null);
                iM2820getOffsetForPosition3MmeM6k = TextLayoutState.m2817getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState$foundation(), jM5992plusMKHz9U2, false, 2, null);
                none = iIntValue == iM2820getOffsetForPosition3MmeM6k ? SelectionAdjustment.Companion.getNone() : this.selectionAdjustmentMode;
            }
            int i = iIntValue;
            int i2 = iM2820getOffsetForPosition3MmeM6k;
            SelectionAdjustment selectionAdjustment = none;
            long jM2665getSelectiond9O1mEE = TextFieldSelectionState.this.getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE();
            TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
            long jM2878updateSelectionQkiN0lo$foundation$default = TextFieldSelectionState.m2878updateSelectionQkiN0lo$foundation$default(textFieldSelectionState, textFieldSelectionState.getTextFieldState$foundation().getVisualText(), i, i2, false, selectionAdjustment, false, false, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()), 64, null);
            if (this.dragBeginOffsetInText == -1 && !TextRange.m8485getCollapsedimpl(jM2878updateSelectionQkiN0lo$foundation$default)) {
                this.dragBeginOffsetInText = TextRange.m8491getStartimpl(jM2878updateSelectionQkiN0lo$foundation$default);
            }
            if (TextRange.m8490getReversedimpl(jM2878updateSelectionQkiN0lo$foundation$default)) {
                jM2878updateSelectionQkiN0lo$foundation$default = TextFieldSelectionStateKt.m2889reverse5zctL8(jM2878updateSelectionQkiN0lo$foundation$default);
            }
            if (!TextRange.m8484equalsimpl0(jM2878updateSelectionQkiN0lo$foundation$default, jM2665getSelectiond9O1mEE)) {
                if (TextRange.m8491getStartimpl(jM2878updateSelectionQkiN0lo$foundation$default) != TextRange.m8491getStartimpl(jM2665getSelectiond9O1mEE) && TextRange.m8486getEndimpl(jM2878updateSelectionQkiN0lo$foundation$default) == TextRange.m8486getEndimpl(jM2665getSelectiond9O1mEE)) {
                    handle = Handle.SelectionStart;
                } else if (TextRange.m8491getStartimpl(jM2878updateSelectionQkiN0lo$foundation$default) != TextRange.m8491getStartimpl(jM2665getSelectiond9O1mEE) || TextRange.m8486getEndimpl(jM2878updateSelectionQkiN0lo$foundation$default) == TextRange.m8486getEndimpl(jM2665getSelectiond9O1mEE)) {
                    handle = ((float) (TextRange.m8486getEndimpl(jM2878updateSelectionQkiN0lo$foundation$default) + TextRange.m8491getStartimpl(jM2878updateSelectionQkiN0lo$foundation$default))) / 2.0f > ((float) (TextRange.m8486getEndimpl(jM2665getSelectiond9O1mEE) + TextRange.m8491getStartimpl(jM2665getSelectiond9O1mEE))) / 2.0f ? Handle.SelectionEnd : Handle.SelectionStart;
                } else {
                    handle = Handle.SelectionEnd;
                }
                this.actingHandle = handle;
                this.isLongPressSelectionOnly = false;
            }
            if (TextRange.m8485getCollapsedimpl(jM2665getSelectiond9O1mEE) || !TextRange.m8485getCollapsedimpl(jM2878updateSelectionQkiN0lo$foundation$default)) {
                TextFieldSelectionState.this.getTextFieldState$foundation().m2838selectCharsIn5zctL8(jM2878updateSelectionQkiN0lo$foundation$default);
            }
            TextFieldSelectionState.this.m2881updateHandleDraggingUv8p0NA(this.actingHandle, jM5992plusMKHz9U2);
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onStart-3MmeM6k */
        public void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
            if (TextFieldSelectionState.this.getEnabled()) {
                TextFieldSelectionState.this.m2881updateHandleDraggingUv8p0NA(this.actingHandle, j);
                TextFieldSelectionState.this.setShowCursorHandle(false);
                TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.Touch);
                this.dragBeginPosition = j;
                this.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                TextFieldSelectionState.this.previousRawDragOffset = -1;
                this.isLongPressSelectionOnly = true;
                this.selectionAdjustmentMode = selectionAdjustment;
                if (TextFieldSelectionState.this.getTextLayoutState$foundation().getLayoutResult() == null) {
                    return;
                }
                boolean zM2821isPositionOnTextk4lQ0M = TextFieldSelectionState.this.getTextLayoutState$foundation().m2821isPositionOnTextk4lQ0M(j);
                TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
                if (!zM2821isPositionOnTextk4lQ0M) {
                    int iM2817getOffsetForPosition3MmeM6k$default = TextLayoutState.m2817getOffsetForPosition3MmeM6k$default(textFieldSelectionState.getTextLayoutState$foundation(), j, false, 2, null);
                    HapticFeedback hapticFeedBack = TextFieldSelectionState.this.getHapticFeedBack();
                    if (hapticFeedBack != null) {
                        hapticFeedBack.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
                    }
                    TextFieldSelectionState.this.getTextFieldState$foundation().placeCursorBeforeCharAt(iM2817getOffsetForPosition3MmeM6k$default);
                    TextFieldSelectionState.this.setShowCursorHandle(true);
                    this.isLongPressSelectionOnly = false;
                    TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Cursor);
                    return;
                }
                if (textFieldSelectionState.getTextFieldState$foundation().getVisualText().length() == 0) {
                    return;
                }
                int iM2817getOffsetForPosition3MmeM6k$default2 = TextLayoutState.m2817getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState$foundation(), j, false, 2, null);
                TextFieldSelectionState textFieldSelectionState2 = TextFieldSelectionState.this;
                long jM2878updateSelectionQkiN0lo$foundation$default = TextFieldSelectionState.m2878updateSelectionQkiN0lo$foundation$default(textFieldSelectionState2, new TextFieldCharSequence(textFieldSelectionState2.getTextFieldState$foundation().getVisualText(), TextRange.Companion.m8496getZerod9O1mEE(), null, null, null, null, 60, null), iM2817getOffsetForPosition3MmeM6k$default2, iM2817getOffsetForPosition3MmeM6k$default2, false, this.selectionAdjustmentMode, false, false, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI()), 96, null);
                TextFieldSelectionState.this.getTextFieldState$foundation().m2838selectCharsIn5zctL8(jM2878updateSelectionQkiN0lo$foundation$default);
                TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
                this.dragBeginOffsetInText = TextRange.m8491getStartimpl(jM2878updateSelectionQkiN0lo$foundation$default);
            }
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onStop() {
            onDragStop();
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onUp() {
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndexTransformationType.values().length];
            try {
                iArr[IndexTransformationType.Untransformed.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IndexTransformationType.Deletion.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IndexTransformationType.Insertion.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IndexTransformationType.Replacement.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2", f = "TextFieldSelectionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
        final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$1", f = "TextFieldSelectionState.kt", l = {493}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
                this.$this_cursorHandleGestures = pointerInputScope;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.this$0, this.$this_cursorHandleGestures, e02Var);
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
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    PointerInputScope pointerInputScope = this.$this_cursorHandleGestures;
                    this.label = 1;
                    if (textFieldSelectionState.detectTouchMode(pointerInputScope, this) == a32Var) {
                        return a32Var;
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$2", f = "TextFieldSelectionState.kt", l = {494}, m = "invokeSuspend", v = 1)
        public static final class C00502 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00502(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, e02<? super C00502> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
                this.$this_cursorHandleGestures = pointerInputScope;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00502(this.this$0, this.$this_cursorHandleGestures, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00502) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    PointerInputScope pointerInputScope = this.$this_cursorHandleGestures;
                    this.label = 1;
                    if (textFieldSelectionState.detectCursorHandleDragGestures(pointerInputScope, this) == a32Var) {
                        return a32Var;
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$3, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$3", f = "TextFieldSelectionState.kt", l = {496}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(PointerInputScope pointerInputScope, TextFieldSelectionState textFieldSelectionState, e02<? super AnonymousClass3> e02Var) {
                super(2, e02Var);
                this.$this_cursorHandleGestures = pointerInputScope;
                this.this$0 = textFieldSelectionState;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$0(TextFieldSelectionState textFieldSelectionState, Offset offset) {
                TextToolbarState textToolbarState = textFieldSelectionState.getTextToolbarState();
                TextToolbarState textToolbarState2 = TextToolbarState.Cursor;
                if (textToolbarState == textToolbarState2) {
                    textToolbarState2 = TextToolbarState.None;
                }
                textFieldSelectionState.setTextToolbarState(textToolbarState2);
                return j59.a;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass3(this.$this_cursorHandleGestures, this.this$0, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PointerInputScope pointerInputScope = this.$this_cursorHandleGestures;
                    final TextFieldSelectionState textFieldSelectionState = this.this$0;
                    nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.text.input.internal.selection.b
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return TextFieldSelectionState.AnonymousClass2.AnonymousClass3.invokeSuspend$lambda$0(textFieldSelectionState, (Offset) obj2);
                        }
                    };
                    this.label = 1;
                    if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, nl3Var, this, 7, null) == a32Var) {
                        return a32Var;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PointerInputScope pointerInputScope, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_cursorHandleGestures = pointerInputScope;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = TextFieldSelectionState.this.new AnonymousClass2(this.$this_cursorHandleGestures, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            c32 c32Var = c32.UNDISPATCHED;
            av0.c(y22Var, null, c32Var, new AnonymousClass1(TextFieldSelectionState.this, this.$this_cursorHandleGestures, null), 1);
            av0.c(y22Var, null, c32Var, new C00502(TextFieldSelectionState.this, this.$this_cursorHandleGestures, null), 1);
            return av0.c(y22Var, null, c32Var, new AnonymousClass3(this.$this_cursorHandleGestures, TextFieldSelectionState.this, null), 1);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectCursorHandleDragGestures$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", l = {676}, m = "detectCursorHandleDragGestures", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.detectCursorHandleDragGestures(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectSelectionHandleDragGestures$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", l = {1162}, m = "detectSelectionHandleDragGestures", v = 1)
    public static final class C05611 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05611(e02<? super C05611> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.detectSelectionHandleDragGestures(null, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectTouchMode$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectTouchMode$2", f = "TextFieldSelectionState.kt", l = {566}, m = "invokeSuspend", v = 1)
    public static final class C05622 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public C05622(e02<? super C05622> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05622 c05622 = TextFieldSelectionState.this.new C05622(e02Var);
            c05622.L$0 = obj;
            return c05622;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((C05622) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x002c A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002a -> B:12:0x002d). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x002c
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 1
                if (r1 == 0) goto L18
                if (r1 != r2) goto L11
                java.lang.Object r1 = r4.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r5)
                goto L2d
            L11:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L18:
                defpackage.r57.b(r5)
                java.lang.Object r5 = r4.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                r1 = r5
            L20:
                androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                r4.L$0 = r1
                r4.label = r2
                java.lang.Object r5 = r1.awaitPointerEvent(r5, r4)
                if (r5 != r0) goto L2d
                return r0
            L2d:
                androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r3 = androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.this
                boolean r5 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.isMouseOrTouchPad(r5)
                r5 = r5 ^ r2
                r3.setInTouchMode(r5)
                goto L20
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.C05622.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$maybeSuggestSelectionRange$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$maybeSuggestSelectionRange$1", f = "TextFieldSelectionState.kt", l = {1120}, m = "invokeSuspend", v = 1)
    public static final class C05631 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PlatformSelectionBehaviors $platformSelectionBehaviors;
        final /* synthetic */ long $selection;
        final /* synthetic */ CharSequence $text;
        int label;
        final /* synthetic */ TextFieldSelectionState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05631(PlatformSelectionBehaviors platformSelectionBehaviors, CharSequence charSequence, long j, TextFieldSelectionState textFieldSelectionState, e02<? super C05631> e02Var) {
            super(2, e02Var);
            this.$platformSelectionBehaviors = platformSelectionBehaviors;
            this.$text = charSequence;
            this.$selection = j;
            this.this$0 = textFieldSelectionState;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C05631(this.$platformSelectionBehaviors, this.$text, this.$selection, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05631) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PlatformSelectionBehaviors platformSelectionBehaviors = this.$platformSelectionBehaviors;
                CharSequence charSequence = this.$text;
                long j = this.$selection;
                this.label = 1;
                obj = platformSelectionBehaviors.mo2973suggestSelectionForLongPressOrDoubleClickpYaCww(charSequence, j, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            TextRange textRange = (TextRange) obj;
            if (!this.this$0.isPassword && textRange != null && aa4.e(this.this$0.getTextFieldState$foundation().getVisualText().getText(), this.$text) && TextRange.m8484equalsimpl0(this.this$0.getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE(), this.$selection)) {
                if (!TextRange.m8484equalsimpl0(textRange.m8495unboximpl(), this.this$0.getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE())) {
                    this.this$0.getTextFieldState$foundation().m2838selectCharsIn5zctL8(textRange.m8495unboximpl());
                }
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$observeTextChanges$3, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass3 extends qm3 implements bm3<TextFieldCharSequence, CharSequence, Boolean> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(2, TextFieldCharSequence.class, "contentEquals", "contentEquals(Ljava/lang/CharSequence;)Z", 0);
        }

        @Override // defpackage.bm3
        public final Boolean invoke(TextFieldCharSequence textFieldCharSequence, CharSequence charSequence) {
            return Boolean.valueOf(textFieldCharSequence.contentEquals(charSequence));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$paste$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", l = {1570, 1572, 1572}, m = "paste", v = 1)
    public static final class C05651 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C05651(e02<? super C05651> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.paste(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$pasteAsPlainText$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", l = {1603, 1603}, m = "pasteAsPlainText", v = 1)
    public static final class C05661 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C05661(e02<? super C05661> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.pasteAsPlainText(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2", f = "TextFieldSelectionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C05672 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
        final /* synthetic */ boolean $isStartHandle;
        final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$1", f = "TextFieldSelectionState.kt", l = {TypedValues.PositionType.TYPE_PERCENT_X}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
                this.$this_selectionHandleGestures = pointerInputScope;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.this$0, this.$this_selectionHandleGestures, e02Var);
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
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    PointerInputScope pointerInputScope = this.$this_selectionHandleGestures;
                    this.label = 1;
                    if (textFieldSelectionState.detectTouchMode(pointerInputScope, this) == a32Var) {
                        return a32Var;
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$2", f = "TextFieldSelectionState.kt", l = {TypedValues.PositionType.TYPE_CURVE_FIT}, m = "invokeSuspend", v = 1)
        public static final class C00512 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ boolean $isStartHandle;
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00512(PointerInputScope pointerInputScope, TextFieldSelectionState textFieldSelectionState, boolean z, e02<? super C00512> e02Var) {
                super(2, e02Var);
                this.$this_selectionHandleGestures = pointerInputScope;
                this.this$0 = textFieldSelectionState;
                this.$isStartHandle = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$0(TextFieldSelectionState textFieldSelectionState) {
                textFieldSelectionState.clearHandleDragging();
                return j59.a;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00512(this.$this_selectionHandleGestures, this.this$0, this.$isStartHandle, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00512) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PointerInputScope pointerInputScope = this.$this_selectionHandleGestures;
                    final TextFieldSelectionState textFieldSelectionState = this.this$0;
                    final boolean z = this.$isStartHandle;
                    TapOnPosition tapOnPosition = new TapOnPosition() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.selectionHandleGestures.2.2.1
                        @Override // androidx.compose.foundation.text.input.internal.selection.TapOnPosition
                        /* JADX INFO: renamed from: onEvent-k-4lQ0M */
                        public final void mo2860onEventk4lQ0M(long j) {
                            textFieldSelectionState.markStartContentVisibleOffset();
                            TextFieldSelectionState textFieldSelectionState2 = textFieldSelectionState;
                            boolean z2 = z;
                            textFieldSelectionState2.m2881updateHandleDraggingUv8p0NA(z2 ? Handle.SelectionStart : Handle.SelectionEnd, SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(textFieldSelectionState2.m2872getHandlePositiontuRUvjQ(z2)));
                        }
                    };
                    final TextFieldSelectionState textFieldSelectionState2 = this.this$0;
                    ll3 ll3Var = new ll3() { // from class: androidx.compose.foundation.text.input.internal.selection.d
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return TextFieldSelectionState.C05672.C00512.invokeSuspend$lambda$0(textFieldSelectionState2);
                        }
                    };
                    this.label = 1;
                    if (PressDownGestureKt.detectPressDownGesture(pointerInputScope, tapOnPosition, ll3Var, this) == a32Var) {
                        return a32Var;
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$4, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$4", f = "TextFieldSelectionState.kt", l = {526}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ boolean $isStartHandle;
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, boolean z, e02<? super AnonymousClass4> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
                this.$this_selectionHandleGestures = pointerInputScope;
                this.$isStartHandle = z;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass4(this.this$0, this.$this_selectionHandleGestures, this.$isStartHandle, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    PointerInputScope pointerInputScope = this.$this_selectionHandleGestures;
                    boolean z = this.$isStartHandle;
                    this.label = 1;
                    if (textFieldSelectionState.detectSelectionHandleDragGestures(pointerInputScope, z, this) == a32Var) {
                        return a32Var;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05672(PointerInputScope pointerInputScope, boolean z, e02<? super C05672> e02Var) {
            super(2, e02Var);
            this.$this_selectionHandleGestures = pointerInputScope;
            this.$isStartHandle = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(TextFieldSelectionState textFieldSelectionState, Throwable th) {
            textFieldSelectionState.clearHandleDragging();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05672 c05672 = TextFieldSelectionState.this.new C05672(this.$this_selectionHandleGestures, this.$isStartHandle, e02Var);
            c05672.L$0 = obj;
            return c05672;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
            return ((C05672) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            c32 c32Var = c32.UNDISPATCHED;
            av0.c(y22Var, null, c32Var, new AnonymousClass1(TextFieldSelectionState.this, this.$this_selectionHandleGestures, null), 1);
            s68 s68VarC = av0.c(y22Var, null, c32Var, new C00512(this.$this_selectionHandleGestures, TextFieldSelectionState.this, this.$isStartHandle, null), 1);
            final TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
            s68VarC.g(new nl3() { // from class: androidx.compose.foundation.text.input.internal.selection.c
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return TextFieldSelectionState.C05672.invokeSuspend$lambda$0(textFieldSelectionState, (Throwable) obj2);
                }
            });
            return av0.c(y22Var, null, c32Var, new AnonymousClass4(TextFieldSelectionState.this, this.$this_selectionHandleGestures, this.$isStartHandle, null), 1);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", l = {537}, m = "startToolbarAndHandlesVisibilityObserver", v = 1)
    public static final class C05681 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C05681(e02<? super C05681> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.startToolbarAndHandlesVisibilityObserver(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2", f = "TextFieldSelectionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C05692 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$1", f = "TextFieldSelectionState.kt", l = {538}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(TextFieldSelectionState textFieldSelectionState, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.this$0, e02Var);
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
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    this.label = 1;
                    if (textFieldSelectionState.observeTextChanges(this) == a32Var) {
                        return a32Var;
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$2", f = "TextFieldSelectionState.kt", l = {539}, m = "invokeSuspend", v = 1)
        public static final class C00522 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00522(TextFieldSelectionState textFieldSelectionState, e02<? super C00522> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldSelectionState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00522(this.this$0, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00522) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    TextFieldSelectionState textFieldSelectionState = this.this$0;
                    this.label = 1;
                    if (textFieldSelectionState.observeTextToolbarVisibility(this) == a32Var) {
                        return a32Var;
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

        public C05692(e02<? super C05692> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05692 c05692 = TextFieldSelectionState.this.new C05692(e02Var);
            c05692.L$0 = obj;
            return c05692;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
            return ((C05692) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            av0.c(y22Var, null, null, new AnonymousClass1(TextFieldSelectionState.this, null), 3);
            return av0.c(y22Var, null, null, new C00522(TextFieldSelectionState.this, null), 3);
        }
    }

    public TextFieldSelectionState(TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, Density density, boolean z, boolean z2, boolean z3, boolean z4, ToolbarRequester toolbarRequester, y22 y22Var, PlatformSelectionBehaviors platformSelectionBehaviors, Clipboard clipboard) {
        this.textFieldState = transformedTextFieldState;
        this.textLayoutState = textLayoutState;
        this.density = density;
        this.isFocused = z3;
        this.isPassword = z4;
        this.toolbarRequester = toolbarRequester;
        this.coroutineScope = y22Var;
        this.platformSelectionBehaviors = platformSelectionBehaviors;
        this.clipboard = clipboard;
        this.enabled = z;
        this.readOnly = z2;
        Offset.Companion companion = Offset.Companion;
        this.startTextLayoutPositionInWindow$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(companion.m6002getUnspecifiedF1C5BW0()), null, 2, null);
        this.rawHandleDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(companion.m6002getUnspecifiedF1C5BW0()), null, 2, null);
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.directDragGestureInitiator$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(InputType.None, null, 2, null);
        Boolean bool = Boolean.FALSE;
        this.showCursorHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.textToolbarState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TextToolbarState.None, null, 2, null);
        this.textToolbarShown$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.previousRawDragOffset = -1;
        this.derivedVisibleContentBounds$delegate = SnapshotStateKt.derivedStateOf(new og8(this, 1));
        this.clipboardPasteState = new ClipboardPasteState(this.clipboard);
    }

    private final Rect calculateCursorRect(TextLayoutResult textLayoutResult, TextFieldCharSequence textFieldCharSequence) {
        float right;
        if (!TextRange.m8485getCollapsedimpl(textFieldCharSequence.m2665getSelectiond9O1mEE())) {
            return Rect.Companion.getZero();
        }
        Rect cursorRect = textLayoutResult.getCursorRect(TextRange.m8491getStartimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()));
        float fFloor = (float) Math.floor(this.density.mo1434toPx0680j_4(TextFieldCursor_androidKt.getDefaultCursorThickness()));
        if (fFloor < 1.0f) {
            fFloor = 1.0f;
        }
        if (textLayoutResult.getLayoutInput().getLayoutDirection() == LayoutDirection.Ltr) {
            right = (fFloor / 2.0f) + cursorRect.getLeft();
        } else {
            right = cursorRect.getRight() - (fFloor / 2.0f);
        }
        float f = fFloor / 2.0f;
        float fM8462getSizeYbymL2g = ((int) (textLayoutResult.m8462getSizeYbymL2g() >> 32)) - f;
        if (right > fM8462getSizeYbymL2g) {
            right = fM8462getSizeYbymL2g;
        }
        if (right < f) {
            right = f;
        }
        float fFloor2 = ((int) fFloor) % 2 == 1 ? ((float) Math.floor(right)) + 0.5f : (float) Math.rint(right);
        return new Rect(fFloor2 - f, cursorRect.getTop(), fFloor2 + f, cursorRect.getBottom());
    }

    private final Rect calculateSelectionRect(TextLayoutResult textLayoutResult, TextFieldCharSequence textFieldCharSequence) {
        if (TextRange.m8485getCollapsedimpl(textFieldCharSequence.m2665getSelectiond9O1mEE())) {
            return Rect.Companion.getZero();
        }
        int lineForOffset = textLayoutResult.getLineForOffset(TextRange.m8491getStartimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()));
        int lineForOffset2 = textLayoutResult.getLineForOffset(TextRange.m8486getEndimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()));
        if (lineForOffset != lineForOffset2) {
            return textLayoutResult.getPathForRange(TextRange.m8489getMinimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()), TextRange.m8488getMaximpl(textFieldCharSequence.m2665getSelectiond9O1mEE())).getBounds();
        }
        float horizontalPosition = textLayoutResult.getHorizontalPosition(TextRange.m8491getStartimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()), true);
        float horizontalPosition2 = textLayoutResult.getHorizontalPosition(TextRange.m8486getEndimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()), true);
        return new Rect(Math.min(horizontalPosition, horizontalPosition2), textLayoutResult.getLineTop(lineForOffset), Math.max(horizontalPosition, horizontalPosition2), textLayoutResult.getLineBottom(lineForOffset2));
    }

    public static /* synthetic */ Object copy$default(TextFieldSelectionState textFieldSelectionState, boolean z, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionState.copy(z, e02Var);
    }

    public static /* synthetic */ AnnotatedString copyWithResult$foundation$default(TextFieldSelectionState textFieldSelectionState, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionState.copyWithResult$foundation(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect derivedVisibleContentBounds_delegate$lambda$0(TextFieldSelectionState textFieldSelectionState) {
        LayoutCoordinates textLayoutCoordinates;
        boolean zM8485getCollapsedimpl = TextRange.m8485getCollapsedimpl(textFieldSelectionState.textFieldState.getVisualText().m2665getSelectiond9O1mEE());
        if ((!(zM8485getCollapsedimpl && textFieldSelectionState.getTextToolbarState() == TextToolbarState.Cursor) && (zM8485getCollapsedimpl || textFieldSelectionState.getTextToolbarState() != TextToolbarState.Selection)) || textFieldSelectionState.getDraggingHandle() != null || !textFieldSelectionState.isInTouchMode() || (textLayoutCoordinates = textFieldSelectionState.getTextLayoutCoordinates()) == null) {
            return null;
        }
        Rect rectVisibleBounds = SelectionManagerKt.visibleBounds(textLayoutCoordinates);
        Rect rectM6027Recttz77jQw = RectKt.m6027Recttz77jQw(textLayoutCoordinates.mo7713localToRootMKHz9U(rectVisibleBounds.m6022getTopLeftF1C5BW0()), rectVisibleBounds.m6020getSizeNHjbRc());
        Rect contentRect = textFieldSelectionState.getContentRect();
        if (contentRect.overlaps(rectM6027Recttz77jQw)) {
            return contentRect.intersect(rectM6027Recttz77jQw);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object detectCursorHandleDragGestures(PointerInputScope pointerInputScope, e02<? super j59> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        q07 q07Var;
        Throwable th;
        q07 q07Var2;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        int i3 = 1;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var2 = (q07) anonymousClass2.L$1;
            q07Var = (q07) anonymousClass2.L$0;
            try {
                r57.b(obj);
                detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, this);
                return j59.a;
            } catch (Throwable th2) {
                th = th2;
                detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, this);
                throw th;
            }
        }
        r57.b(obj);
        final q07 q07Var3 = new q07();
        Offset.Companion companion = Offset.Companion;
        q07Var3.b = companion.m6002getUnspecifiedF1C5BW0();
        final q07 q07Var4 = new q07();
        q07Var4.b = companion.m6002getUnspecifiedF1C5BW0();
        try {
            nl3 nl3Var = new nl3() { // from class: tr8
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$0(q07Var3, this, q07Var4, (Offset) obj2);
                }
            };
            ge0 ge0Var = new ge0(q07Var3, q07Var4, this, i3);
            ll3 ll3Var = new ll3() { // from class: ur8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$2(q07Var3, q07Var4, this);
                }
            };
            bm3 bm3Var = new bm3() { // from class: vr8
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$3(q07Var4, this, q07Var3, (PointerInputChange) obj2, (Offset) obj3);
                }
            };
            anonymousClass2.L$0 = q07Var3;
            anonymousClass2.L$1 = q07Var4;
            anonymousClass2.label = 1;
            if (DragGestureDetectorKt.detectDragGestures(pointerInputScope, nl3Var, ge0Var, ll3Var, bm3Var, anonymousClass2) == a32Var) {
                return a32Var;
            }
            q07Var = q07Var3;
            q07Var2 = q07Var4;
            detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, this);
            return j59.a;
        } catch (Throwable th3) {
            q07Var = q07Var3;
            th = th3;
            q07Var2 = q07Var4;
            detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, this);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectCursorHandleDragGestures$lambda$0(q07 q07Var, TextFieldSelectionState textFieldSelectionState, q07 q07Var2, Offset offset) {
        q07Var.b = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(textFieldSelectionState.getCursorRect().m6014getBottomCenterF1C5BW0());
        q07Var2.b = Offset.Companion.m6003getZeroF1C5BW0();
        textFieldSelectionState.setInTouchMode(true);
        textFieldSelectionState.markStartContentVisibleOffset();
        textFieldSelectionState.m2881updateHandleDraggingUv8p0NA(Handle.Cursor, q07Var.b);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectCursorHandleDragGestures$lambda$1(q07 q07Var, q07 q07Var2, TextFieldSelectionState textFieldSelectionState) {
        detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, textFieldSelectionState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectCursorHandleDragGestures$lambda$2(q07 q07Var, q07 q07Var2, TextFieldSelectionState textFieldSelectionState) {
        detectCursorHandleDragGestures$onDragStop(q07Var, q07Var2, textFieldSelectionState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectCursorHandleDragGestures$lambda$3(q07 q07Var, TextFieldSelectionState textFieldSelectionState, q07 q07Var2, PointerInputChange pointerInputChange, Offset offset) {
        long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(q07Var.b, offset.m5997unboximpl());
        q07Var.b = jM5992plusMKHz9U;
        textFieldSelectionState.m2881updateHandleDraggingUv8p0NA(Handle.Cursor, Offset.m5992plusMKHz9U(q07Var2.b, jM5992plusMKHz9U));
        if (textFieldSelectionState.m2880placeCursorAtNearestOffsetk4lQ0M(textFieldSelectionState.m2879getHandleDragPositionF1C5BW0())) {
            pointerInputChange.consume();
            HapticFeedback hapticFeedback = textFieldSelectionState.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI());
            }
        }
        return j59.a;
    }

    private static final void detectCursorHandleDragGestures$onDragStop(q07 q07Var, q07 q07Var2, TextFieldSelectionState textFieldSelectionState) {
        if ((q07Var.b & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            Offset.Companion companion = Offset.Companion;
            q07Var.b = companion.m6002getUnspecifiedF1C5BW0();
            q07Var2.b = companion.m6002getUnspecifiedF1C5BW0();
            textFieldSelectionState.clearHandleDragging();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object detectSelectionHandleDragGestures(PointerInputScope pointerInputScope, final boolean z, e02<? super j59> e02Var) throws Throwable {
        C05611 c05611;
        final q07 q07Var;
        q07 q07Var2;
        Handle handle;
        q07 q07Var3;
        q07 q07Var4;
        if (e02Var instanceof C05611) {
            c05611 = (C05611) e02Var;
            int i = c05611.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05611.label = i - Integer.MIN_VALUE;
            } else {
                c05611 = new C05611(e02Var);
            }
        } else {
            c05611 = new C05611(e02Var);
        }
        C05611 c05612 = c05611;
        Object obj = c05612.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05612.label;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            handle = (Handle) c05612.L$2;
            q07Var = (q07) c05612.L$1;
            q07Var3 = (q07) c05612.L$0;
            try {
                r57.b(obj);
                if (getDraggingHandle() == handle) {
                    detectSelectionHandleDragGestures$onDragStop(q07Var3, this, q07Var);
                }
                return j59.a;
            } catch (Throwable th) {
                th = th;
                if (getDraggingHandle() == handle) {
                    detectSelectionHandleDragGestures$onDragStop(q07Var3, this, q07Var);
                }
                throw th;
            }
        }
        r57.b(obj);
        final q07 q07Var5 = new q07();
        Offset.Companion companion = Offset.Companion;
        q07Var5.b = companion.m6002getUnspecifiedF1C5BW0();
        q07Var = new q07();
        q07Var.b = companion.m6003getZeroF1C5BW0();
        final Handle handle2 = z ? Handle.SelectionStart : Handle.SelectionEnd;
        try {
            nl3 nl3Var = new nl3() { // from class: wr8
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$0(q07Var5, this, z, handle2, q07Var, (Offset) obj2);
                }
            };
            ll3 ll3Var = new ll3() { // from class: xr8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$1(q07Var5, this, q07Var);
                }
            };
            ll3 ll3Var2 = new ll3() { // from class: rr8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$2(q07Var5, this, q07Var);
                }
            };
            try {
                bm3 bm3Var = new bm3() { // from class: sr8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$3(q07Var, this, handle2, q07Var5, z, (PointerInputChange) obj2, (Offset) obj3);
                    }
                };
                q07Var4 = q07Var;
                q07Var2 = q07Var5;
                handle = handle2;
                try {
                    c05612.L$0 = q07Var2;
                    c05612.L$1 = q07Var4;
                    c05612.L$2 = handle;
                    c05612.label = 1;
                    if (DragGestureDetectorKt.detectDragGestures(pointerInputScope, nl3Var, ll3Var, ll3Var2, bm3Var, c05612) == a32Var) {
                        return a32Var;
                    }
                    q07Var = q07Var4;
                    q07Var3 = q07Var2;
                    if (getDraggingHandle() == handle) {
                        detectSelectionHandleDragGestures$onDragStop(q07Var3, this, q07Var);
                    }
                    return j59.a;
                } catch (Throwable th2) {
                    th = th2;
                    q07Var = q07Var4;
                    q07Var3 = q07Var2;
                    if (getDraggingHandle() == handle) {
                        detectSelectionHandleDragGestures$onDragStop(q07Var3, this, q07Var);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                q07Var4 = q07Var;
                q07Var2 = q07Var5;
                handle = handle2;
            }
        } catch (Throwable th4) {
            th = th4;
            q07Var2 = q07Var5;
            handle = handle2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectSelectionHandleDragGestures$lambda$0(q07 q07Var, TextFieldSelectionState textFieldSelectionState, boolean z, Handle handle, q07 q07Var2, Offset offset) {
        long jM2988getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(textFieldSelectionState.m2872getHandlePositiontuRUvjQ(z));
        q07Var.b = jM2988getAdjustedCoordinatesk4lQ0M;
        textFieldSelectionState.m2881updateHandleDraggingUv8p0NA(handle, jM2988getAdjustedCoordinatesk4lQ0M);
        q07Var2.b = Offset.Companion.m6003getZeroF1C5BW0();
        textFieldSelectionState.previousRawDragOffset = -1;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectSelectionHandleDragGestures$lambda$1(q07 q07Var, TextFieldSelectionState textFieldSelectionState, q07 q07Var2) {
        detectSelectionHandleDragGestures$onDragStop(q07Var, textFieldSelectionState, q07Var2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectSelectionHandleDragGestures$lambda$2(q07 q07Var, TextFieldSelectionState textFieldSelectionState, q07 q07Var2) {
        detectSelectionHandleDragGestures$onDragStop(q07Var, textFieldSelectionState, q07Var2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectSelectionHandleDragGestures$lambda$3(q07 q07Var, TextFieldSelectionState textFieldSelectionState, Handle handle, q07 q07Var2, boolean z, PointerInputChange pointerInputChange, Offset offset) {
        q07Var.b = Offset.m5992plusMKHz9U(q07Var.b, offset.m5997unboximpl());
        TextLayoutResult layoutResult = textFieldSelectionState.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return j59.a;
        }
        textFieldSelectionState.m2881updateHandleDraggingUv8p0NA(handle, Offset.m5992plusMKHz9U(q07Var2.b, q07Var.b));
        int iM8461getOffsetForPositionk4lQ0M = z ? layoutResult.m8461getOffsetForPositionk4lQ0M(textFieldSelectionState.m2879getHandleDragPositionF1C5BW0()) : TextRange.m8491getStartimpl(textFieldSelectionState.textFieldState.getVisualText().m2665getSelectiond9O1mEE());
        int iM8486getEndimpl = z ? TextRange.m8486getEndimpl(textFieldSelectionState.textFieldState.getVisualText().m2665getSelectiond9O1mEE()) : layoutResult.m8461getOffsetForPositionk4lQ0M(textFieldSelectionState.m2879getHandleDragPositionF1C5BW0());
        long jM2665getSelectiond9O1mEE = textFieldSelectionState.textFieldState.getVisualText().m2665getSelectiond9O1mEE();
        long jM2878updateSelectionQkiN0lo$foundation$default = m2878updateSelectionQkiN0lo$foundation$default(textFieldSelectionState, textFieldSelectionState.textFieldState.getVisualText(), iM8461getOffsetForPositionk4lQ0M, iM8486getEndimpl, z, SelectionAdjustment.Companion.getCharacterWithWordAccelerate(), false, false, HapticFeedbackType.m7002boximpl(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI()), 96, null);
        if (TextRange.m8485getCollapsedimpl(jM2665getSelectiond9O1mEE) || !TextRange.m8485getCollapsedimpl(jM2878updateSelectionQkiN0lo$foundation$default)) {
            textFieldSelectionState.textFieldState.m2838selectCharsIn5zctL8(jM2878updateSelectionQkiN0lo$foundation$default);
        }
        return j59.a;
    }

    private static final void detectSelectionHandleDragGestures$onDragStop(q07 q07Var, TextFieldSelectionState textFieldSelectionState, q07 q07Var2) {
        if ((q07Var.b & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            textFieldSelectionState.clearHandleDragging();
            Offset.Companion companion = Offset.Companion;
            q07Var.b = companion.m6002getUnspecifiedF1C5BW0();
            q07Var2.b = companion.m6003getZeroF1C5BW0();
            textFieldSelectionState.previousRawDragOffset = -1;
        }
    }

    private final Rect getContentRect() {
        LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
        if (textLayoutCoordinates == null) {
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("textLayoutCoordinates should not be null.");
            h8.d();
            return null;
        }
        TextFieldCharSequence visualText = this.textFieldState.getVisualText();
        if (TextRange.m8485getCollapsedimpl(visualText.m2665getSelectiond9O1mEE())) {
            Rect cursorRect = getCursorRect();
            return RectKt.m6027Recttz77jQw(textLayoutCoordinates.mo7713localToRootMKHz9U(cursorRect.m6022getTopLeftF1C5BW0()), cursorRect.m6020getSizeNHjbRc());
        }
        long jMo7713localToRootMKHz9U = textLayoutCoordinates.mo7713localToRootMKHz9U(m2872getHandlePositiontuRUvjQ(true));
        long jMo7713localToRootMKHz9U2 = textLayoutCoordinates.mo7713localToRootMKHz9U(m2872getHandlePositiontuRUvjQ(false));
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Rect.Companion.getZero();
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (textLayoutCoordinates.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(layoutResult.getCursorRect(TextRange.m8491getStartimpl(visualText.m2665getSelectiond9O1mEE())).getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (textLayoutCoordinates.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(layoutResult.getCursorRect(TextRange.m8486getEndimpl(visualText.m2665getSelectiond9O1mEE())).getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(0.0f) << 32))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int i = (int) (jMo7713localToRootMKHz9U >> 32);
        int i2 = (int) (jMo7713localToRootMKHz9U2 >> 32);
        return new Rect(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), Math.min(fIntBitsToFloat, fIntBitsToFloat2), Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), Math.max(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
    }

    /* JADX INFO: renamed from: getCurrentTextLayoutPositionInWindow-F1C5BW0, reason: not valid java name */
    private final long m2871getCurrentTextLayoutPositionInWindowF1C5BW0() {
        LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
        return textLayoutCoordinates != null ? LayoutCoordinatesKt.positionInWindow(textLayoutCoordinates) : Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getHandlePosition-tuRUvjQ, reason: not valid java name */
    public final long m2872getHandlePositiontuRUvjQ(boolean z) {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        long jM2665getSelectiond9O1mEE = this.textFieldState.getVisualText().m2665getSelectiond9O1mEE();
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(layoutResult, z ? TextRange.m8491getStartimpl(jM2665getSelectiond9O1mEE) : TextRange.m8486getEndimpl(jM2665getSelectiond9O1mEE), z, TextRange.m8490getReversedimpl(jM2665getSelectiond9O1mEE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getRawHandleDragPosition-F1C5BW0, reason: not valid java name */
    private final long m2873getRawHandleDragPositionF1C5BW0() {
        return ((Offset) this.rawHandleDragPosition$delegate.getValue()).m5997unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getStartTextLayoutPositionInWindow-F1C5BW0, reason: not valid java name */
    private final long m2874getStartTextLayoutPositionInWindowF1C5BW0() {
        return ((Offset) this.startTextLayoutPositionInWindow$delegate.getValue()).m5997unboximpl();
    }

    /* JADX INFO: renamed from: getTextFieldSelection-qeG_v_k, reason: not valid java name */
    private final long m2875getTextFieldSelectionqeG_v_k(int i, int i2, TextRange textRange, boolean z, SelectionAdjustment selectionAdjustment) {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        if (textRange == null && aa4.e(selectionAdjustment, SelectionAdjustment.Companion.getCharacter())) {
            return TextRangeKt.TextRange(i, i2);
        }
        SelectionLayout selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA = SelectionLayoutKt.m2991getTextFieldSelectionLayoutRcvTLA(layoutResult, i, i2, this.previousRawDragOffset, textRange != null ? textRange.m8495unboximpl() : TextRange.Companion.m8496getZerod9O1mEE(), textRange == null, z);
        if (textRange != null && !selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA.shouldRecomputeSelection(this.previousSelectionLayout)) {
            return textRange.m8495unboximpl();
        }
        long jM2983toTextRanged9O1mEE = selectionAdjustment.adjust(selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA).m2983toTextRanged9O1mEE();
        this.previousSelectionLayout = selectionLayoutM2991getTextFieldSelectionLayoutRcvTLA;
        this.previousRawDragOffset = z ? i : i2;
        return jM2983toTextRanged9O1mEE;
    }

    private final LayoutCoordinates getTextLayoutCoordinates() {
        LayoutCoordinates textLayoutNodeCoordinates = this.textLayoutState.getTextLayoutNodeCoordinates();
        if (textLayoutNodeCoordinates == null || !textLayoutNodeCoordinates.isAttached()) {
            return null;
        }
        return textLayoutNodeCoordinates;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final TextToolbarState getTextToolbarState() {
        return (TextToolbarState) this.textToolbarState$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideTextToolbar() {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            this.toolbarRequester.hide();
            return;
        }
        TextToolbarHandler textToolbarHandler = this.textToolbarHandler;
        if (textToolbarHandler != null) {
            textToolbarHandler.hideTextToolbar();
        }
    }

    private final boolean isCursorHandleInVisibleBounds() {
        Rect rectVisibleBounds;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            long jM6014getBottomCenterF1C5BW0 = getCursorRect().m6014getBottomCenterF1C5BW0();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
            if (textLayoutCoordinates == null || (rectVisibleBounds = SelectionManagerKt.visibleBounds(textLayoutCoordinates)) == null) {
                return false;
            }
            return SelectionManagerKt.m3015containsInclusiveUv8p0NA(rectVisibleBounds, jM6014getBottomCenterF1C5BW0);
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void markStartContentVisibleOffset() {
        m2877setStartTextLayoutPositionInWindowk4lQ0M(m2871getCurrentTextLayoutPositionInWindowF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object observeTextChanges(e02<? super j59> e02Var) {
        hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new o31(this, 2));
        AnonymousClass3 anonymousClass3 = AnonymousClass3.INSTANCE;
        si1 si1Var = zd3.b;
        anonymousClass3.getClass();
        v39.c(2, anonymousClass3);
        Object objCollect = km1.a(zd3.d(hd3VarSnapshotFlow, si1Var, anonymousClass3), 1).collect(new id3() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.observeTextChanges.4
            public final Object emit(TextFieldCharSequence textFieldCharSequence, e02<? super j59> e02Var2) {
                TextFieldSelectionState.this.setShowCursorHandle(false);
                TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.None);
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((TextFieldCharSequence) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldCharSequence observeTextChanges$lambda$0(TextFieldSelectionState textFieldSelectionState) {
        return textFieldSelectionState.textFieldState.getVisualText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object observeTextToolbarVisibility(e02<? super j59> e02Var) {
        hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new e84(this, 6));
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            hd3VarSnapshotFlow = zd3.d(hd3VarSnapshotFlow, new lm(5), zd3.c);
        }
        Object objCollect = hd3VarSnapshotFlow.collect(new id3() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.observeTextToolbarVisibility.4
            public final Object emit(Rect rect, e02<? super j59> e02Var2) {
                TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
                if (rect != null) {
                    Object objShowTextToolbar = textFieldSelectionState.showTextToolbar(rect, e02Var2);
                    return objShowTextToolbar == a32.COROUTINE_SUSPENDED ? objShowTextToolbar : j59.a;
                }
                textFieldSelectionState.hideTextToolbar();
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((Rect) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean observeTextToolbarVisibility$lambda$1$0(Rect rect) {
        return rect == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r8 == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object pasteAsPlainText(defpackage.e02<? super defpackage.j59> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.C05661
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$pasteAsPlainText$1 r0 = (androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.C05661) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$pasteAsPlainText$1 r0 = new androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$pasteAsPlainText$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            defpackage.r57.b(r8)
            goto L50
        L2a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L31:
            defpackage.r57.b(r8)
            goto L43
        L35:
            defpackage.r57.b(r8)
            androidx.compose.ui.platform.Clipboard r8 = r7.clipboard
            r0.label = r4
            java.lang.Object r8 = r8.getClipEntry(r0)
            if (r8 != r1) goto L43
            goto L4f
        L43:
            androidx.compose.ui.platform.ClipEntry r8 = (androidx.compose.ui.platform.ClipEntry) r8
            if (r8 == 0) goto L65
            r0.label = r3
            java.lang.Object r8 = androidx.compose.foundation.internal.ClipboardUtils_androidKt.readText(r8, r0)
            if (r8 != r1) goto L50
        L4f:
            return r1
        L50:
            r1 = r8
            java.lang.String r1 = (java.lang.String) r1
            if (r1 != 0) goto L56
            goto L65
        L56:
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r0 = r7.textFieldState
            androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior r3 = androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior.NeverMerge
            r5 = 10
            r6 = 0
            r2 = 0
            r4 = 0
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState.replaceSelectedText$default(r0, r1, r2, r3, r4, r5, r6)
            j59 r7 = defpackage.j59.a
            return r7
        L65:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.pasteAsPlainText(e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: setRawHandleDragPosition-k-4lQ0M, reason: not valid java name */
    private final void m2876setRawHandleDragPositionk4lQ0M(long j) {
        this.rawHandleDragPosition$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: renamed from: setStartTextLayoutPositionInWindow-k-4lQ0M, reason: not valid java name */
    private final void m2877setStartTextLayoutPositionInWindowk4lQ0M(long j) {
        this.startTextLayoutPositionInWindow$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextToolbarState(TextToolbarState textToolbarState) {
        this.textToolbarState$delegate.setValue(textToolbarState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showTextToolbar(Rect rect, e02<? super j59> e02Var) {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            this.toolbarRequester.show();
        } else {
            TextToolbarHandler textToolbarHandler = this.textToolbarHandler;
            if (textToolbarHandler != null) {
                Object objShowTextToolbar = textToolbarHandler.showTextToolbar(this, rect, e02Var);
                return objShowTextToolbar == a32.COROUTINE_SUSPENDED ? objShowTextToolbar : j59.a;
            }
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: updateSelection-QkiN0lo$foundation$default, reason: not valid java name */
    public static /* synthetic */ long m2878updateSelectionQkiN0lo$foundation$default(TextFieldSelectionState textFieldSelectionState, TextFieldCharSequence textFieldCharSequence, int i, int i2, boolean z, SelectionAdjustment selectionAdjustment, boolean z2, boolean z3, HapticFeedbackType hapticFeedbackType, int i3, Object obj) {
        if ((i3 & 32) != 0) {
            z2 = false;
        }
        if ((i3 & 64) != 0) {
            z3 = false;
        }
        return textFieldSelectionState.m2882updateSelectionQkiN0lo$foundation(textFieldCharSequence, i, i2, z, selectionAdjustment, z2, z3, hapticFeedbackType);
    }

    public final void autofill() {
        ll3<j59> ll3Var = this.requestAutofillAction;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }

    public final boolean canShowAutofillMenuItem() {
        return getEditable$foundation() && TextRange.m8485getCollapsedimpl(this.textFieldState.getVisualText().m2665getSelectiond9O1mEE());
    }

    public final boolean canShowCopyMenuItem() {
        return (TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) || this.isPassword || !ClipboardUtils_androidKt.isWriteSupported(this.clipboard)) ? false : true;
    }

    public final boolean canShowCutMenuItem() {
        return !TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) && getEditable$foundation() && !this.isPassword && ClipboardUtils_androidKt.isWriteSupported(this.clipboard);
    }

    public final boolean canShowPasteMenuItem() {
        if (getEditable$foundation() && ClipboardUtils_androidKt.isReadSupported(this.clipboard)) {
            if (this.clipboardPasteState.getHasText()) {
                return true;
            }
            ll3<? extends ReceiveContentConfiguration> ll3Var = this.receiveContentConfiguration;
            if ((ll3Var != null ? ll3Var.invoke() : null) != null && this.clipboardPasteState.getHasClip()) {
                return true;
            }
        }
        return false;
    }

    public final boolean canShowSelectAllMenuItem() {
        return TextRange.m8487getLengthimpl(this.textFieldState.getVisualText().m2665getSelectiond9O1mEE()) != this.textFieldState.getVisualText().length();
    }

    public final void clearHandleDragging() {
        setDraggingHandle(null);
        Offset.Companion companion = Offset.Companion;
        m2876setRawHandleDragPositionk4lQ0M(companion.m6002getUnspecifiedF1C5BW0());
        m2877setStartTextLayoutPositionInWindowk4lQ0M(companion.m6002getUnspecifiedF1C5BW0());
    }

    public final Object copy(boolean z, e02<? super j59> e02Var) {
        Object clipEntry;
        AnnotatedString annotatedStringCopyWithResult$foundation = copyWithResult$foundation(z);
        return (annotatedStringCopyWithResult$foundation != null && (clipEntry = this.clipboard.setClipEntry(ClipboardUtils_androidKt.toClipEntry(annotatedStringCopyWithResult$foundation), e02Var)) == a32.COROUTINE_SUSPENDED) ? clipEntry : j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AnnotatedString copyWithResult$foundation(boolean z) {
        List list = null;
        Object[] objArr = 0;
        if (TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) || this.isPassword) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(TextFieldCharSequenceKt.getSelectedText(this.textFieldState.getVisualText()).toString(), list, 2, objArr == true ? 1 : 0);
        if (z) {
            this.textFieldState.collapseSelectionToMax();
        }
        return annotatedString;
    }

    public final Object cursorHandleGestures(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(pointerInputScope, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public final Object cut(e02<? super j59> e02Var) {
        Object clipEntry;
        AnnotatedString annotatedStringCutWithResult = cutWithResult();
        return (annotatedStringCutWithResult != null && (clipEntry = this.clipboard.setClipEntry(ClipboardUtils_androidKt.toClipEntry(annotatedStringCutWithResult), e02Var)) == a32.COROUTINE_SUSPENDED) ? clipEntry : j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AnnotatedString cutWithResult() {
        List list = null;
        Object[] objArr = 0;
        if (TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) || !getEditable$foundation() || this.isPassword) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(TextFieldCharSequenceKt.getSelectedText(this.textFieldState.getVisualText()).toString(), list, 2, objArr == true ? 1 : 0);
        this.textFieldState.deleteSelectedText();
        return annotatedString;
    }

    public final void deselect() {
        if (!TextRange.m8485getCollapsedimpl(this.textFieldState.getVisualText().m2665getSelectiond9O1mEE())) {
            this.textFieldState.collapseSelectionToEnd();
        }
        setShowCursorHandle(false);
        updateTextToolbarState(TextToolbarState.None);
    }

    public final Object detectTextFieldTapGestures(PointerInputScope pointerInputScope, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super j59> e02Var) {
        Object objDetectTextFieldTapGestures = TextFieldSelectionState_androidKt.detectTextFieldTapGestures(this, pointerInputScope, mutableInteractionSource, ll3Var, ll3Var2, e02Var);
        return objDetectTextFieldTapGestures == a32.COROUTINE_SUSPENDED ? objDetectTextFieldTapGestures : j59.a;
    }

    public final Object detectTouchMode(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        Object objAwaitPointerEventScope = pointerInputScope.awaitPointerEventScope(new C05622(null), e02Var);
        return objAwaitPointerEventScope == a32.COROUTINE_SUSPENDED ? objAwaitPointerEventScope : j59.a;
    }

    public final void dispose() {
        hideTextToolbar();
        this.hapticFeedBack = null;
    }

    public final TextFieldHandleState getCursorHandleState$foundation(boolean z) {
        TextFieldCharSequence visualText = this.textFieldState.getVisualText();
        boolean showCursorHandle = getShowCursorHandle();
        boolean z2 = getDirectDragGestureInitiator() == InputType.None;
        Handle draggingHandle = getDraggingHandle();
        if (showCursorHandle && z2 && TextRange.m8485getCollapsedimpl(visualText.m2665getSelectiond9O1mEE()) && visualText.shouldShowSelection() && visualText.length() > 0 && (draggingHandle == Handle.Cursor || isCursorHandleInVisibleBounds())) {
            return new TextFieldHandleState(true, z ? getCursorRect().m6014getBottomCenterF1C5BW0() : Offset.Companion.m6002getUnspecifiedF1C5BW0(), 0.0f, ResolvedTextDirection.Ltr, false, null);
        }
        return TextFieldHandleState.Companion.getHidden();
    }

    public final Rect getCursorRect() {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        return layoutResult == null ? Rect.Companion.getZero() : calculateCursorRect(layoutResult, this.textFieldState.getVisualText());
    }

    public final Rect getDerivedVisibleContentBounds$foundation() {
        return (Rect) this.derivedVisibleContentBounds$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InputType getDirectDragGestureInitiator() {
        return (InputType) this.directDragGestureInitiator$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    public final boolean getEditable$foundation() {
        return this.enabled && !this.readOnly;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Rect getFocusRect() {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Rect.Companion.getZero();
        }
        if (!this.isFocused) {
            return FocusProperties.Companion.getUnsetFocusRect();
        }
        TextFieldCharSequence visualText = this.textFieldState.getVisualText();
        return TextLayoutStateKt.fromTextLayoutToDecoration(this.textLayoutState, TextRange.m8485getCollapsedimpl(visualText.m2665getSelectiond9O1mEE()) ? calculateCursorRect(layoutResult, visualText) : calculateSelectionRect(layoutResult, visualText));
    }

    /* JADX INFO: renamed from: getHandleDragPosition-F1C5BW0, reason: not valid java name */
    public final long m2879getHandleDragPositionF1C5BW0() {
        if ((m2873getRawHandleDragPositionF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return (m2874getStartTextLayoutPositionInWindowF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats ? TextLayoutStateKt.m2825fromDecorationToTextLayoutUv8p0NA(this.textLayoutState, m2873getRawHandleDragPositionF1C5BW0()) : Offset.m5992plusMKHz9U(m2873getRawHandleDragPositionF1C5BW0(), Offset.m5991minusMKHz9U(m2874getStartTextLayoutPositionInWindowF1C5BW0(), m2871getCurrentTextLayoutPositionInWindowF1C5BW0()));
    }

    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public final PlatformSelectionBehaviors getPlatformSelectionBehaviors$foundation() {
        return this.platformSelectionBehaviors;
    }

    public final PressInteraction.Press getPressInteraction() {
        return this.pressInteraction;
    }

    public final boolean getReadOnly() {
        return this.readOnly;
    }

    public final ll3<ReceiveContentConfiguration> getReceiveContentConfiguration() {
        return this.receiveContentConfiguration;
    }

    public final ll3<j59> getRequestAutofillAction() {
        return this.requestAutofillAction;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (((r0 == null || (r0 = androidx.compose.foundation.text.selection.SelectionManagerKt.visibleBounds(r0)) == null) ? false : androidx.compose.foundation.text.selection.SelectionManagerKt.m3015containsInclusiveUv8p0NA(r0, r4)) != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState getSelectionHandleState$foundation(boolean r15, boolean r16) {
        /*
            r14 = this;
            if (r15 == 0) goto L5
            androidx.compose.foundation.text.Handle r0 = androidx.compose.foundation.text.Handle.SelectionStart
            goto L7
        L5:
            androidx.compose.foundation.text.Handle r0 = androidx.compose.foundation.text.Handle.SelectionEnd
        L7:
            androidx.compose.foundation.text.input.internal.TextLayoutState r1 = r14.textLayoutState
            androidx.compose.ui.text.TextLayoutResult r1 = r1.getLayoutResult()
            if (r1 != 0) goto L16
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState$Companion r14 = androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState.Companion
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState r14 = r14.getHidden()
            return r14
        L16:
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r2 = r14.textFieldState
            androidx.compose.foundation.text.input.TextFieldCharSequence r2 = r2.getVisualText()
            long r2 = r2.m2665getSelectiond9O1mEE()
            boolean r4 = androidx.compose.ui.text.TextRange.m8485getCollapsedimpl(r2)
            if (r4 == 0) goto L2d
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState$Companion r14 = androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState.Companion
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState r14 = r14.getHidden()
            return r14
        L2d:
            long r4 = r14.m2872getHandlePositiontuRUvjQ(r15)
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$InputType r6 = r14.getDirectDragGestureInitiator()
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$InputType r7 = androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.InputType.None
            if (r6 != r7) goto Lb2
            androidx.compose.foundation.text.Handle r6 = r14.getDraggingHandle()
            r7 = 0
            if (r6 == r0) goto L54
            androidx.compose.ui.layout.LayoutCoordinates r0 = r14.getTextLayoutCoordinates()
            if (r0 == 0) goto L51
            androidx.compose.ui.geometry.Rect r0 = androidx.compose.foundation.text.selection.SelectionManagerKt.visibleBounds(r0)
            if (r0 == 0) goto L51
            boolean r0 = androidx.compose.foundation.text.selection.SelectionManagerKt.m3015containsInclusiveUv8p0NA(r0, r4)
            goto L52
        L51:
            r0 = r7
        L52:
            if (r0 == 0) goto Lb2
        L54:
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r0 = r14.textFieldState
            androidx.compose.foundation.text.input.TextFieldCharSequence r0 = r0.getVisualText()
            boolean r0 = r0.shouldShowSelection()
            if (r0 != 0) goto L67
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState$Companion r14 = androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState.Companion
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState r14 = r14.getHidden()
            return r14
        L67:
            if (r15 == 0) goto L6e
            int r0 = androidx.compose.ui.text.TextRange.m8491getStartimpl(r2)
            goto L78
        L6e:
            int r0 = androidx.compose.ui.text.TextRange.m8486getEndimpl(r2)
            int r0 = r0 + (-1)
            int r0 = java.lang.Math.max(r0, r7)
        L78:
            androidx.compose.ui.text.style.ResolvedTextDirection r11 = r1.getBidiRunDirection(r0)
            boolean r12 = androidx.compose.ui.text.TextRange.m8490getReversedimpl(r2)
            if (r16 == 0) goto L94
            androidx.compose.ui.layout.LayoutCoordinates r14 = r14.getTextLayoutCoordinates()
            if (r14 == 0) goto L92
            androidx.compose.ui.geometry.Rect r14 = androidx.compose.foundation.text.selection.SelectionManagerKt.visibleBounds(r14)
            if (r14 == 0) goto L92
            long r4 = androidx.compose.foundation.text.input.internal.TextLayoutStateKt.m2824coerceIn3MmeM6k(r4, r14)
        L92:
            r8 = r4
            goto L9b
        L94:
            androidx.compose.ui.geometry.Offset$Companion r14 = androidx.compose.ui.geometry.Offset.Companion
            long r4 = r14.m6002getUnspecifiedF1C5BW0()
            goto L92
        L9b:
            if (r15 == 0) goto La2
            int r14 = androidx.compose.ui.text.TextRange.m8491getStartimpl(r2)
            goto La6
        La2:
            int r14 = androidx.compose.ui.text.TextRange.m8486getEndimpl(r2)
        La6:
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState r6 = new androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState
            float r10 = androidx.compose.foundation.text.TextLayoutHelperKt.getLineHeight(r1, r14)
            r13 = 0
            r7 = 1
            r6.<init>(r7, r8, r10, r11, r12, r13)
            return r6
        Lb2:
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState$Companion r14 = androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState.Companion
            androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState r14 = r14.getHidden()
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.getSelectionHandleState$foundation(boolean, boolean):androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getShowCursorHandle() {
        return ((Boolean) this.showCursorHandle$delegate.getValue()).booleanValue();
    }

    public final TransformedTextFieldState getTextFieldState$foundation() {
        return this.textFieldState;
    }

    public final TextLayoutState getTextLayoutState$foundation() {
        return this.textLayoutState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getTextToolbarShown() {
        return ((Boolean) this.textToolbarShown$delegate.getValue()).booleanValue();
    }

    public final boolean isCopyAllowed() {
        return (TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) || this.isPassword) ? false : true;
    }

    public final boolean isCutAllowed() {
        return (TextRange.m8485getCollapsedimpl(getTextFieldState$foundation().getVisualText().m2665getSelectiond9O1mEE()) || !getEditable$foundation() || this.isPassword) ? false : true;
    }

    public final boolean isFocused() {
        return this.isFocused;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isInTouchMode() {
        return ((Boolean) this.isInTouchMode$delegate.getValue()).booleanValue();
    }

    public final boolean isPasteAllowed() {
        return getEditable$foundation();
    }

    public final void maybeSuggestSelectionRange() {
        PlatformSelectionBehaviors platformSelectionBehaviors = this.platformSelectionBehaviors;
        if (platformSelectionBehaviors == null) {
            return;
        }
        CharSequence text = this.textFieldState.getVisualText().getText();
        long jM2665getSelectiond9O1mEE = this.textFieldState.getVisualText().m2665getSelectiond9O1mEE();
        if (text.length() <= 0 || TextRange.m8485getCollapsedimpl(jM2665getSelectiond9O1mEE)) {
            return;
        }
        av0.c(this.coroutineScope, null, c32.UNDISPATCHED, new C05631(platformSelectionBehaviors, text, jM2665getSelectiond9O1mEE, this, null), 1);
    }

    public final void onPasteEvent$foundation(AnnotatedString annotatedString) {
        if (getEditable$foundation()) {
            TransformedTextFieldState.replaceSelectedText$default(this.textFieldState, annotatedString.getText(), false, TextFieldEditUndoBehavior.NeverMerge, false, 10, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:33:0x0072  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        if (pasteAsPlainText(r0) == r1) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b0, code lost:
    
        if (pasteAsPlainText(r0) == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object paste(defpackage.e02<? super defpackage.j59> r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.C05651
            if (r0 == 0) goto L13
            r0 = r13
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$paste$1 r0 = (androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.C05651) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$paste$1 r0 = new androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$paste$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L41
            if (r2 == r6) goto L3c
            if (r2 == r5) goto L34
            if (r2 != r4) goto L2e
            defpackage.r57.b(r13)
            goto L6f
        L2e:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r12)
            return r3
        L34:
            java.lang.Object r2 = r0.L$0
            androidx.compose.foundation.content.internal.ReceiveContentConfiguration r2 = (androidx.compose.foundation.content.internal.ReceiveContentConfiguration) r2
            defpackage.r57.b(r13)
            goto L5f
        L3c:
            defpackage.r57.b(r13)
            goto Lb3
        L41:
            defpackage.r57.b(r13)
            ll3<? extends androidx.compose.foundation.content.internal.ReceiveContentConfiguration> r13 = r12.receiveContentConfiguration
            if (r13 == 0) goto Laa
            java.lang.Object r13 = r13.invoke()
            r2 = r13
            androidx.compose.foundation.content.internal.ReceiveContentConfiguration r2 = (androidx.compose.foundation.content.internal.ReceiveContentConfiguration) r2
            if (r2 != 0) goto L52
            goto Laa
        L52:
            androidx.compose.ui.platform.Clipboard r13 = r12.clipboard
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r13 = r13.getClipEntry(r0)
            if (r13 != r1) goto L5f
            goto Lb2
        L5f:
            r6 = r13
            androidx.compose.ui.platform.ClipEntry r6 = (androidx.compose.ui.platform.ClipEntry) r6
            if (r6 != 0) goto L72
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r12 = r12.pasteAsPlainText(r0)
            if (r12 != r1) goto L6f
            goto Lb2
        L6f:
            j59 r12 = defpackage.j59.a
            return r12
        L72:
            androidx.compose.ui.platform.ClipMetadata r7 = r6.getClipMetadata()
            androidx.compose.foundation.content.ReceiveContentListener r13 = r2.getReceiveContentListener()
            androidx.compose.foundation.content.TransferableContent$Source$Companion r0 = androidx.compose.foundation.content.TransferableContent.Source.Companion
            int r8 = r0.m1392getClipboardkB6V9T0()
            androidx.compose.foundation.content.TransferableContent r5 = new androidx.compose.foundation.content.TransferableContent
            r10 = 8
            r11 = 0
            r9 = 0
            r5.<init>(r6, r7, r8, r9, r10, r11)
            androidx.compose.foundation.content.TransferableContent r13 = r13.onReceive(r5)
            if (r13 == 0) goto La7
            androidx.compose.ui.platform.ClipEntry r13 = r13.getClipEntry()
            if (r13 == 0) goto La7
            java.lang.String r1 = androidx.compose.foundation.content.TransferableContent_androidKt.readPlainText(r13)
            if (r1 == 0) goto La7
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r0 = r12.textFieldState
            androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior r3 = androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior.NeverMerge
            r5 = 10
            r6 = 0
            r2 = 0
            r4 = 0
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState.replaceSelectedText$default(r0, r1, r2, r3, r4, r5, r6)
        La7:
            j59 r12 = defpackage.j59.a
            return r12
        Laa:
            r0.label = r6
            java.lang.Object r12 = r12.pasteAsPlainText(r0)
            if (r12 != r1) goto Lb3
        Lb2:
            return r1
        Lb3:
            j59 r12 = defpackage.j59.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.paste(e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: placeCursorAtNearestOffset-k-4lQ0M, reason: not valid java name */
    public final boolean m2880placeCursorAtNearestOffsetk4lQ0M(long j) {
        int iM8461getOffsetForPositionk4lQ0M;
        IndexTransformationType indexTransformationType;
        int iM8491getStartimpl;
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null || (iM8461getOffsetForPositionk4lQ0M = layoutResult.m8461getOffsetForPositionk4lQ0M(j)) == -1) {
            return false;
        }
        TransformedTextFieldState transformedTextFieldState = this.textFieldState;
        long jM2833mapFromTransformedjx7JFs = transformedTextFieldState.m2833mapFromTransformedjx7JFs(iM8461getOffsetForPositionk4lQ0M);
        long jM2836mapToTransformedGEjPoXI = transformedTextFieldState.m2836mapToTransformedGEjPoXI(jM2833mapFromTransformedjx7JFs);
        if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) && TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = IndexTransformationType.Untransformed;
        } else if (TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) {
            indexTransformationType = (!TextRange.m8485getCollapsedimpl(jM2833mapFromTransformedjx7JFs) || TextRange.m8485getCollapsedimpl(jM2836mapToTransformedGEjPoXI)) ? IndexTransformationType.Deletion : IndexTransformationType.Insertion;
        } else {
            indexTransformationType = IndexTransformationType.Replacement;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[indexTransformationType.ordinal()];
        SelectionWedgeAffinity selectionWedgeAffinity = null;
        if (i == 1 || i == 2) {
            iM8491getStartimpl = TextRange.m8491getStartimpl(jM2833mapFromTransformedjx7JFs);
        } else if (i == 3) {
            selectionWedgeAffinity = MathUtilsKt.m2771findClosestRect9KIMszo(j, layoutResult.getCursorRect(TextRange.m8491getStartimpl(jM2836mapToTransformedGEjPoXI)), layoutResult.getCursorRect(TextRange.m8486getEndimpl(jM2836mapToTransformedGEjPoXI))) < 0 ? new SelectionWedgeAffinity(WedgeAffinity.Start) : new SelectionWedgeAffinity(WedgeAffinity.End);
            iM8491getStartimpl = TextRange.m8491getStartimpl(jM2833mapFromTransformedjx7JFs);
        } else {
            if (i != 4) {
                me0.e();
                return false;
            }
            iM8491getStartimpl = MathUtilsKt.m2771findClosestRect9KIMszo(j, layoutResult.getCursorRect(TextRange.m8491getStartimpl(jM2836mapToTransformedGEjPoXI)), layoutResult.getCursorRect(TextRange.m8486getEndimpl(jM2836mapToTransformedGEjPoXI))) < 0 ? TextRange.m8491getStartimpl(jM2833mapFromTransformedjx7JFs) : TextRange.m8486getEndimpl(jM2833mapFromTransformedjx7JFs);
        }
        long jTextRange = TextRangeKt.TextRange(iM8491getStartimpl);
        if (TextRange.m8484equalsimpl0(jTextRange, this.textFieldState.getUntransformedText().m2665getSelectiond9O1mEE()) && (selectionWedgeAffinity == null || selectionWedgeAffinity.equals(this.textFieldState.getSelectionWedgeAffinity()))) {
            return false;
        }
        this.textFieldState.m2839selectUntransformedCharsIn5zctL8(jTextRange);
        if (selectionWedgeAffinity != null) {
            this.textFieldState.setSelectionWedgeAffinity(selectionWedgeAffinity);
        }
        return true;
    }

    public final void selectAll() {
        this.textFieldState.selectAll();
    }

    public final Object selectionHandleGestures(PointerInputScope pointerInputScope, boolean z, e02<? super j59> e02Var) {
        Object objC = z22.c(new C05672(pointerInputScope, z, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public final void setDirectDragGestureInitiator(InputType inputType) {
        this.directDragGestureInitiator$delegate.setValue(inputType);
    }

    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    public final void setFocused(boolean z) {
        this.isFocused = z;
    }

    public final void setHapticFeedBack(HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void setInTouchMode(boolean z) {
        this.isInTouchMode$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setPressInteraction(PressInteraction.Press press) {
        this.pressInteraction = press;
    }

    public final void setReceiveContentConfiguration(ll3<? extends ReceiveContentConfiguration> ll3Var) {
        this.receiveContentConfiguration = ll3Var;
    }

    public final void setRequestAutofillAction(ll3<j59> ll3Var) {
        this.requestAutofillAction = ll3Var;
    }

    public final void setShowCursorHandle(boolean z) {
        this.showCursorHandle$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setTextToolbarShown$foundation(boolean z) {
        this.textToolbarShown$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object startToolbarAndHandlesVisibilityObserver(e02<? super j59> e02Var) {
        C05681 c05681;
        if (e02Var instanceof C05681) {
            c05681 = (C05681) e02Var;
            int i = c05681.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05681.label = i - Integer.MIN_VALUE;
            } else {
                c05681 = new C05681(e02Var);
            }
        } else {
            c05681 = new C05681(e02Var);
        }
        Object objC = c05681.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05681.label;
        try {
            if (i2 == 0) {
                r57.b(objC);
                C05692 c05692 = new C05692(null);
                c05681.label = 1;
                objC = z22.c(c05692, c05681);
                if (objC == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objC);
            }
            setShowCursorHandle(false);
            if (getTextToolbarState() != TextToolbarState.None) {
                hideTextToolbar();
            }
            return j59.a;
        } catch (Throwable th) {
            setShowCursorHandle(false);
            if (getTextToolbarState() != TextToolbarState.None) {
                hideTextToolbar();
            }
            throw th;
        }
    }

    public final Object textFieldSelectionGestures(PointerInputScope pointerInputScope, ll3<j59> ll3Var, e02<? super j59> e02Var) {
        Object objTextFieldSelectionGestures = TextFieldSelectionState_androidKt.textFieldSelectionGestures(this, pointerInputScope, new TextFieldMouseSelectionObserver(ll3Var), new TextFieldTextDragObserver(ll3Var), e02Var);
        return objTextFieldSelectionGestures == a32.COROUTINE_SUSPENDED ? objTextFieldSelectionGestures : j59.a;
    }

    public final void update(HapticFeedback hapticFeedback, Clipboard clipboard, TextToolbarHandler textToolbarHandler, Density density, boolean z, boolean z2, boolean z3) {
        if (!z) {
            hideTextToolbar();
        }
        this.hapticFeedBack = hapticFeedback;
        this.clipboard = clipboard;
        this.textToolbarHandler = textToolbarHandler;
        this.density = density;
        this.enabled = z;
        this.readOnly = z2;
        this.isPassword = z3;
    }

    public final Object updateClipboardEntry(e02<? super j59> e02Var) {
        Object objUpdate = this.clipboardPasteState.update(e02Var);
        return objUpdate == a32.COROUTINE_SUSPENDED ? objUpdate : j59.a;
    }

    /* JADX INFO: renamed from: updateHandleDragging-Uv8p0NA, reason: not valid java name */
    public final void m2881updateHandleDraggingUv8p0NA(Handle handle, long j) {
        setDraggingHandle(handle);
        m2876setRawHandleDragPositionk4lQ0M(j);
    }

    /* JADX INFO: renamed from: updateSelection-QkiN0lo$foundation, reason: not valid java name */
    public final long m2882updateSelectionQkiN0lo$foundation(TextFieldCharSequence textFieldCharSequence, int i, int i2, boolean z, SelectionAdjustment selectionAdjustment, boolean z2, boolean z3, HapticFeedbackType hapticFeedbackType) {
        HapticFeedback hapticFeedback;
        TextRange textRangeM8479boximpl = TextRange.m8479boximpl(textFieldCharSequence.m2665getSelectiond9O1mEE());
        long jM8495unboximpl = textRangeM8479boximpl.m8495unboximpl();
        if (z3 || (!z2 && TextRange.m8485getCollapsedimpl(jM8495unboximpl))) {
            textRangeM8479boximpl = null;
        }
        long jM2875getTextFieldSelectionqeG_v_k = m2875getTextFieldSelectionqeG_v_k(i, i2, textRangeM8479boximpl, z, selectionAdjustment);
        if (hapticFeedbackType != null && ((TextRange.m8489getMinimpl(jM2875getTextFieldSelectionqeG_v_k) != TextRange.m8489getMinimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()) || TextRange.m8488getMaximpl(jM2875getTextFieldSelectionqeG_v_k) != TextRange.m8488getMaximpl(textFieldCharSequence.m2665getSelectiond9O1mEE())) && (hapticFeedback = this.hapticFeedBack) != null)) {
            hapticFeedback.mo7001performHapticFeedbackCdsT49E(hapticFeedbackType.m7008unboximpl());
        }
        return jM2875getTextFieldSelectionqeG_v_k;
    }

    public final void updateTextToolbarState(TextToolbarState textToolbarState) {
        setTextToolbarState(textToolbarState);
    }
}
