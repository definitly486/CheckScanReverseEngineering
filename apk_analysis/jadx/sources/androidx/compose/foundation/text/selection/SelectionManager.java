package androidx.compose.foundation.text.selection;

import androidx.collection.LongIntMapKt;
import androidx.collection.LongObjectMap;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongIntMap;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutHelperKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGesturesModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl;
import androidx.compose.foundation.text.input.internal.TextLayoutStateKt;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl5;
import defpackage.e02;
import defpackage.en4;
import defpackage.f57;
import defpackage.fm3;
import defpackage.h8;
import defpackage.hm3;
import defpackage.im1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mq4;
import defpackage.nf0;
import defpackage.ng;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.pp1;
import defpackage.q07;
import defpackage.qm3;
import defpackage.qq5;
import defpackage.r07;
import defpackage.r57;
import defpackage.rf0;
import defpackage.uj;
import defpackage.un;
import defpackage.us;
import defpackage.wr1;
import defpackage.x26;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionManager {
    public static final int $stable = 8;
    private LayoutCoordinates containerLayoutCoordinates;
    private y22 coroutineScope;
    private final MutableState currentDragPosition$delegate;
    private final MutableState dragBeginPosition$delegate;
    private final MutableState dragTotalDistance$delegate;
    private final MutableState draggingHandle$delegate;
    private final MutableState endHandlePosition$delegate;
    private HapticFeedback hapticFeedBack;
    private boolean isLongPressOrClickSelection;
    private nl3<? super AnnotatedString, j59> onCopyHandler;
    private nl3<? super Selection, j59> onSelectionChange;
    private PlatformSelectionBehaviors platformSelectionBehaviors;
    private Offset previousPosition;
    private SelectionLayout previousSelectionLayout;
    private final SelectionRegistrarImpl selectionRegistrar;
    private boolean shouldIgnoreCopyKeyEvent;
    private boolean showToolbar;
    private final MutableState startHandlePosition$delegate;
    private TextToolbar textToolbar;
    private final MutableState<Selection> _selection = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    private final MutableState<Boolean> _isInTouchMode = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
    private ToolbarRequester toolbarRequester = new ToolbarRequesterImpl();
    private FocusRequester focusRequester = new FocusRequester();
    private final MutableState hasFocus$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
    private final State derivedContentRect$delegate = SnapshotStateKt.derivedStateOf(new uj(this, 7));
    private final MutableState positionChangeState$delegate = SnapshotStateKt.mutableStateOf(j59.a, SnapshotStateKt.neverEqualPolicy());

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$suggestSelectionForLongPressOrDoubleClick$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionManager$suggestSelectionForLongPressOrDoubleClick$2", f = "SelectionManager.kt", l = {455}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ r07<TextRange> $selectionInSelectable;
        final /* synthetic */ q07 $targetSelectableId;
        final /* synthetic */ r07<CharSequence> $textInSelectable;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(r07<CharSequence> r07Var, r07<TextRange> r07Var2, q07 q07Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$textInSelectable = r07Var;
            this.$selectionInSelectable = r07Var2;
            this.$targetSelectableId = q07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SelectionManager.this.new AnonymousClass2(this.$textInSelectable, this.$selectionInSelectable, this.$targetSelectableId, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x006e  */
        /* JADX WARN: Code duplicated, block: B:26:0x0071  */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            TextRange textRange;
            Selectable selectable;
            TextLayoutResult textLayoutResult;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PlatformSelectionBehaviors platformSelectionBehaviors$foundation = SelectionManager.this.getPlatformSelectionBehaviors$foundation();
                if (platformSelectionBehaviors$foundation != null) {
                    CharSequence charSequence = this.$textInSelectable.b;
                    long jM8495unboximpl = this.$selectionInSelectable.b.m8495unboximpl();
                    this.label = 1;
                    obj = platformSelectionBehaviors$foundation.mo2973suggestSelectionForLongPressOrDoubleClickpYaCww(charSequence, jM8495unboximpl, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    textRange = null;
                }
                if (textRange != null && !textRange.equals(this.$selectionInSelectable.b) && (selectable = SelectionManager.this.selectionRegistrar.getSelectableMap$foundation().get(this.$targetSelectableId.b)) != null && selectable.getText() == this.$textInSelectable.b) {
                    textLayoutResult = selectable.textLayoutResult();
                    if (textLayoutResult == null) {
                        return j59.a;
                    }
                    Selection selection = new Selection(new Selection.AnchorInfo(SelectionHelpersKt.getTextDirectionForOffset(textLayoutResult, TextRange.m8491getStartimpl(textRange.m8495unboximpl())), TextRange.m8491getStartimpl(textRange.m8495unboximpl()), this.$targetSelectableId.b), new Selection.AnchorInfo(SelectionHelpersKt.getTextDirectionForOffset(textLayoutResult, TextRange.m8486getEndimpl(textRange.m8495unboximpl())), TextRange.m8486getEndimpl(textRange.m8495unboximpl()), this.$targetSelectableId.b), false, 4, null);
                    SelectionManager.this.selectionRegistrar.setSubselections(LongObjectMapKt.mutableLongObjectMapOf(this.$targetSelectableId.b, selection));
                    SelectionManager.this.getOnSelectionChange().invoke(selection);
                    SelectionManager.this.setPreviousSelectionLayout$foundation(null);
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            textRange = (TextRange) obj;
            if (textRange != null) {
                textLayoutResult = selectable.textLayoutResult();
                if (textLayoutResult == null) {
                    return j59.a;
                }
                Selection selection2 = new Selection(new Selection.AnchorInfo(SelectionHelpersKt.getTextDirectionForOffset(textLayoutResult, TextRange.m8491getStartimpl(textRange.m8495unboximpl())), TextRange.m8491getStartimpl(textRange.m8495unboximpl()), this.$targetSelectableId.b), new Selection.AnchorInfo(SelectionHelpersKt.getTextDirectionForOffset(textLayoutResult, TextRange.m8486getEndimpl(textRange.m8495unboximpl())), TextRange.m8486getEndimpl(textRange.m8495unboximpl()), this.$targetSelectableId.b), false, 4, null);
                SelectionManager.this.selectionRegistrar.setSubselections(LongObjectMapKt.mutableLongObjectMapOf(this.$targetSelectableId.b, selection2));
                SelectionManager.this.getOnSelectionChange().invoke(selection2);
                SelectionManager.this.setPreviousSelectionLayout$foundation(null);
            }
            return j59.a;
        }
    }

    public SelectionManager(SelectionRegistrarImpl selectionRegistrarImpl) {
        this.selectionRegistrar = selectionRegistrarImpl;
        int i = 1;
        this.onSelectionChange = new un(this, i);
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(companion.m6003getZeroF1C5BW0()), null, 2, null);
        this.dragTotalDistance$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(companion.m6003getZeroF1C5BW0()), null, 2, null);
        this.startHandlePosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.endHandlePosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        selectionRegistrarImpl.setOnPositionChangeCallback$foundation(new us(this, i));
        selectionRegistrarImpl.setOnSelectionUpdateStartCallback$foundation(new fm3() { // from class: mn7
            @Override // defpackage.fm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return SelectionManager._init_$lambda$1(this.b, ((Boolean) obj).booleanValue(), (LayoutCoordinates) obj2, (Offset) obj3, (SelectionAdjustment) obj4);
            }
        });
        selectionRegistrarImpl.setOnSelectionUpdateSelectAll$foundation(new bm3() { // from class: nn7
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return SelectionManager._init_$lambda$2(this.b, ((Boolean) obj).booleanValue(), ((Long) obj2).longValue());
            }
        });
        selectionRegistrarImpl.setOnSelectionUpdateCallback$foundation(new hm3() { // from class: ln7
            @Override // defpackage.hm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                return Boolean.valueOf(SelectionManager._init_$lambda$3(this.b, ((Boolean) obj).booleanValue(), (LayoutCoordinates) obj2, (Offset) obj3, (Offset) obj4, ((Boolean) obj5).booleanValue(), (SelectionAdjustment) obj6));
            }
        });
        selectionRegistrarImpl.setOnSelectionUpdateEndCallback$foundation(new nf0(this, 2));
        int i2 = 3;
        selectionRegistrarImpl.setOnSelectableChangeCallback$foundation(new cl5(this, i2));
        selectionRegistrarImpl.setAfterSelectableUnsubscribe$foundation(new im1(this, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect _get_contextMenuAreaModifier_$lambda$0(SelectionManager selectionManager, LayoutCoordinates layoutCoordinates) {
        Rect derivedContentRect = selectionManager.getDerivedContentRect();
        if (derivedContentRect == null) {
            return null;
        }
        LayoutCoordinates layoutCoordinates2 = selectionManager.containerLayoutCoordinates;
        if (layoutCoordinates2 != null) {
            return TextContextMenuToolbarHandlerModifierKt.translateRootToDestination(derivedContentRect, layoutCoordinates2, layoutCoordinates);
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
        h8.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_modifier_$lambda$0(SelectionManager selectionManager) {
        selectionManager.onRelease();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_modifier_$lambda$1(SelectionManager selectionManager, LayoutCoordinates layoutCoordinates) {
        selectionManager.setContainerLayoutCoordinates(layoutCoordinates);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_modifier_$lambda$2(SelectionManager selectionManager, FocusState focusState) {
        if (!focusState.getHasFocus() && selectionManager.getHasFocus()) {
            selectionManager.onRelease();
        }
        selectionManager.setHasFocus(focusState.getHasFocus());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_modifier_$lambda$3(SelectionManager selectionManager, boolean z) {
        selectionManager.setInTouchMode(z);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(SelectionManager selectionManager, long j) {
        if (selectionManager.selectionRegistrar.getSubselections().containsKey(j)) {
            selectionManager.setPositionChangeState(j59.a);
            selectionManager.updateHandleOffsets();
            selectionManager.updateSelectionToolbar();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(SelectionManager selectionManager, boolean z, LayoutCoordinates layoutCoordinates, Offset offset, SelectionAdjustment selectionAdjustment) {
        long jMo7710getSizeYbymL2g = layoutCoordinates.mo7710getSizeYbymL2g();
        Rect rect = new Rect(0.0f, 0.0f, (int) (jMo7710getSizeYbymL2g >> 32), (int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM2996convertToContainerCoordinatesR5De75A = selectionManager.m2996convertToContainerCoordinatesR5De75A(layoutCoordinates, SelectionManagerKt.m3015containsInclusiveUv8p0NA(rect, offset.m5997unboximpl()) ? offset.m5997unboximpl() : TextLayoutStateKt.m2824coerceIn3MmeM6k(offset.m5997unboximpl(), rect));
        if ((9223372034707292159L & jM2996convertToContainerCoordinatesR5De75A) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            selectionManager.setInTouchMode(z);
            selectionManager.m3003startSelection9KIMszo(jM2996convertToContainerCoordinatesR5De75A, false, selectionAdjustment);
            FocusRequester.m5892requestFocus3ESFkO8$default(selectionManager.focusRequester, 0, 1, null);
            selectionManager.setShowToolbar$foundation(false);
            selectionManager.isLongPressOrClickSelection = true;
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$2(SelectionManager selectionManager, boolean z, long j) {
        b36<Selection, LongObjectMap<Selection>> b36VarSelectAllInSelectable$foundation = selectionManager.selectAllInSelectable$foundation(j, selectionManager.getSelection());
        Selection selection = b36VarSelectAllInSelectable$foundation.b;
        LongObjectMap<Selection> longObjectMap = b36VarSelectAllInSelectable$foundation.c;
        if (!aa4.e(selection, selectionManager.getSelection())) {
            selectionManager.selectionRegistrar.setSubselections(longObjectMap);
            selectionManager.onSelectionChange.invoke(selection);
        }
        selectionManager.setInTouchMode(z);
        FocusRequester.m5892requestFocus3ESFkO8$default(selectionManager.focusRequester, 0, 1, null);
        selectionManager.setShowToolbar$foundation(false);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$3(SelectionManager selectionManager, boolean z, LayoutCoordinates layoutCoordinates, Offset offset, Offset offset2, boolean z2, SelectionAdjustment selectionAdjustment) {
        long jM2996convertToContainerCoordinatesR5De75A = selectionManager.m2996convertToContainerCoordinatesR5De75A(layoutCoordinates, offset.m5997unboximpl());
        long jM2996convertToContainerCoordinatesR5De75A2 = selectionManager.m2996convertToContainerCoordinatesR5De75A(layoutCoordinates, offset2.m5997unboximpl());
        selectionManager.setInTouchMode(z);
        return selectionManager.m3011updateSelectionqNKwrvQ$foundation(Offset.m5976boximpl(jM2996convertToContainerCoordinatesR5De75A), jM2996convertToContainerCoordinatesR5De75A2, z2, selectionAdjustment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$4(SelectionManager selectionManager) {
        selectionManager.setShowToolbar$foundation(true);
        selectionManager.setDraggingHandle(null);
        selectionManager.m2998setCurrentDragPosition_kEHs6E(null);
        if (selectionManager.isLongPressOrClickSelection && selectionManager.isNonEmptySelection$foundation()) {
            selectionManager.suggestSelectionForLongPressOrDoubleClick();
        }
        selectionManager.isLongPressOrClickSelection = false;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$5(SelectionManager selectionManager, long j) {
        if (selectionManager.selectionRegistrar.getSubselections().containsKey(j)) {
            selectionManager.onRelease();
            selectionManager.setSelection(null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$6(SelectionManager selectionManager, long j) {
        Selection.AnchorInfo end;
        Selection.AnchorInfo start;
        Selection selection = selectionManager.getSelection();
        if (selection != null && (start = selection.getStart()) != null && j == start.getSelectableId()) {
            selectionManager.m3002setStartHandlePosition_kEHs6E(null);
        }
        Selection selection2 = selectionManager.getSelection();
        if (selection2 != null && (end = selection2.getEnd()) != null && j == end.getSelectableId()) {
            selectionManager.m3001setEndHandlePosition_kEHs6E(null);
        }
        if (selectionManager.selectionRegistrar.getSubselections().containsKey(j)) {
            selectionManager.updateSelectionToolbar();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _set_onSelectionChange_$lambda$0(SelectionManager selectionManager, nl3 nl3Var, Selection selection) {
        selectionManager.setSelection(selection);
        nl3Var.invoke(selection);
        return j59.a;
    }

    private final Modifier addContextMenuComponents(Modifier modifier) {
        return ComposeFoundationFlags.isNewContextMenuEnabled ? SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents(modifier, this) : modifier;
    }

    /* JADX INFO: renamed from: convertToContainerCoordinates-R5De75A, reason: not valid java name */
    private final long m2996convertToContainerCoordinatesR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        LayoutCoordinates layoutCoordinates2 = this.containerLayoutCoordinates;
        return (layoutCoordinates2 == null || !layoutCoordinates2.isAttached()) ? Offset.Companion.m6002getUnspecifiedF1C5BW0() : requireContainerCoordinates$foundation().mo7711localPositionOfR5De75A(layoutCoordinates, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Rect getContentRect() {
        LayoutCoordinates layoutCoordinates;
        getPositionChangeState();
        if (getSelection() == null || (layoutCoordinates = this.containerLayoutCoordinates) == null || !layoutCoordinates.isAttached()) {
            return null;
        }
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        ArrayList arrayList = new ArrayList(listSort.size());
        int size = listSort.size();
        for (int i = 0; i < size; i++) {
            Selectable selectable = listSort.get(i);
            Selection selection = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
            b36 b36Var = selection != null ? new b36(selectable, selection) : null;
            if (b36Var != null) {
                arrayList.add(b36Var);
            }
        }
        List listFirstAndLast = SelectionManagerKt.firstAndLast(arrayList);
        if (listFirstAndLast.isEmpty()) {
            return null;
        }
        Rect selectedRegionRect = SelectionManagerKt.getSelectedRegionRect(listFirstAndLast, layoutCoordinates);
        if (aa4.e(selectedRegionRect, SelectionManagerKt.invertedInfiniteRect)) {
            return null;
        }
        Rect rectIntersect = SelectionManagerKt.visibleBounds(layoutCoordinates).intersect(selectedRegionRect);
        if (rectIntersect.getRight() - rectIntersect.getLeft() < 0.0f || rectIntersect.getBottom() - rectIntersect.getTop() < 0.0f) {
            return null;
        }
        Rect rectM6024translatek4lQ0M = rectIntersect.m6024translatek4lQ0M(LayoutCoordinatesKt.positionInRoot(layoutCoordinates));
        return Rect.copy$default(rectM6024translatek4lQ0M, 0.0f, 0.0f, 0.0f, (SelectionHandlesKt.getHandleHeight() * 4.0f) + rectM6024translatek4lQ0M.getBottom(), 7, null);
    }

    private final Rect getDerivedContentRect() {
        return (Rect) this.derivedContentRect$delegate.getValue();
    }

    private final j59 getPositionChangeState() {
        this.positionChangeState$delegate.getValue();
        return j59.a;
    }

    public static /* synthetic */ void getPreviousSelectionLayout$foundation$annotations() {
    }

    /* JADX INFO: renamed from: getSelectionLayout-Wko1d7g, reason: not valid java name */
    private final SelectionLayout m2997getSelectionLayoutWko1d7g(long j, long j2, boolean z) {
        LayoutCoordinates layoutCoordinatesRequireContainerCoordinates$foundation = requireContainerCoordinates$foundation();
        List<Selectable> listSort = this.selectionRegistrar.sort(layoutCoordinatesRequireContainerCoordinates$foundation);
        final MutableLongIntMap mutableLongIntMapMutableLongIntMapOf = LongIntMapKt.mutableLongIntMapOf();
        List<Selectable> list = listSort;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mutableLongIntMapMutableLongIntMapOf.set(listSort.get(i).getSelectableId(), i);
        }
        SelectionLayoutBuilder selectionLayoutBuilder = new SelectionLayoutBuilder(j, j2, layoutCoordinatesRequireContainerCoordinates$foundation, z, (j2 & 9223372034707292159L) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats ? null : getSelection(), new Comparator() { // from class: androidx.compose.foundation.text.selection.SelectionManager$getSelectionLayout-Wko1d7g$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(Integer.valueOf(mutableLongIntMapMutableLongIntMapOf.get(((Number) t).longValue())), Integer.valueOf(mutableLongIntMapMutableLongIntMapOf.get(((Number) t2).longValue())));
            }
        }, null);
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            listSort.get(i2).appendSelectableInfoToBuilder(selectionLayoutBuilder);
        }
        return selectionLayoutBuilder.build();
    }

    private final boolean getShouldShowMagnifier() {
        return isDraggingInProgress() && isInTouchMode() && !isTriviallyCollapsedSelection$foundation();
    }

    public static /* synthetic */ void getToolbarRequester$foundation$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isDraggingInProgress() {
        return getDraggingHandle() != null;
    }

    private final Modifier onClearSelectionRequested(Modifier modifier, final ll3<j59> ll3Var) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, j59.a, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionManager.onClearSelectionRequested.1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1$1", f = "SelectionManager.kt", l = {1001, 1007}, m = "invokeSuspend", v = 1)
            public static final class C00541 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ ll3<j59> $block;
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ SelectionManager this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00541(SelectionManager selectionManager, ll3<j59> ll3Var, e02<? super C00541> e02Var) {
                    super(2, e02Var);
                    this.this$0 = selectionManager;
                    this.$block = ll3Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00541 c00541 = new C00541(this.this$0, this.$block, e02Var);
                    c00541.L$0 = obj;
                    return c00541;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((C00541) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
                
                    if (r11 == r0) goto L16;
                 */
                @Override // defpackage.cd0
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                    /*
                        r10 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r10.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L21
                        if (r1 == r3) goto L18
                        if (r1 != r2) goto L11
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L4a
                    L11:
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r10)
                        r10 = 0
                        return r10
                    L18:
                        java.lang.Object r1 = r10.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L3a
                    L21:
                        defpackage.r57.b(r11)
                        java.lang.Object r11 = r10.L$0
                        r4 = r11
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                        r10.L$0 = r4
                        r10.label = r3
                        r5 = 0
                        r6 = 0
                        r8 = 2
                        r9 = 0
                        r7 = r10
                        java.lang.Object r11 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitPrimaryFirstDown$default(r4, r5, r6, r7, r8, r9)
                        if (r11 != r0) goto L39
                        goto L49
                    L39:
                        r1 = r4
                    L3a:
                        androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
                        androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r3 = 0
                        r7.L$0 = r3
                        r7.label = r2
                        java.lang.Object r11 = androidx.compose.foundation.gestures.DragGestureDetectorKt.awaitAllPointersUpWithSlopDetection(r1, r11, r10, r7)
                        if (r11 != r0) goto L4a
                    L49:
                        return r0
                    L4a:
                        java.lang.Boolean r11 = (java.lang.Boolean) r11
                        boolean r10 = r11.booleanValue()
                        if (r10 != 0) goto L5f
                        androidx.compose.foundation.text.selection.SelectionManager r10 = r7.this$0
                        boolean r10 = androidx.compose.foundation.text.selection.SelectionManager.access$isDraggingInProgress(r10)
                        if (r10 != 0) goto L5f
                        ll3<j59> r10 = r7.$block
                        r10.invoke()
                    L5f:
                        j59 r10 = defpackage.j59.a
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionManager.C05741.C00541.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new C00541(SelectionManager.this, ll3Var, null), e02Var);
                return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onSelectionChange$lambda$0(SelectionManager selectionManager, Selection selection) {
        selectionManager.setSelection(selection);
        return j59.a;
    }

    private final void selectionChanged(SelectionLayout selectionLayout, Selection selection) {
        HapticFeedback hapticFeedback;
        if (shouldPerformHaptics$foundation() && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI());
        }
        this.selectionRegistrar.setSubselections(selectionLayout.createSubSelections(selection));
        this.onSelectionChange.invoke(selection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setCurrentDragPosition-_kEHs6E, reason: not valid java name */
    public final void m2998setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setDragBeginPosition-k-4lQ0M, reason: not valid java name */
    public final void m2999setDragBeginPositionk4lQ0M(long j) {
        this.dragBeginPosition$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setDragTotalDistance-k-4lQ0M, reason: not valid java name */
    public final void m3000setDragTotalDistancek4lQ0M(long j) {
        this.dragTotalDistance$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    /* JADX INFO: renamed from: setEndHandlePosition-_kEHs6E, reason: not valid java name */
    private final void m3001setEndHandlePosition_kEHs6E(Offset offset) {
        this.endHandlePosition$delegate.setValue(offset);
    }

    private final void setPositionChangeState(j59 j59Var) {
        this.positionChangeState$delegate.setValue(j59Var);
    }

    /* JADX INFO: renamed from: setStartHandlePosition-_kEHs6E, reason: not valid java name */
    private final void m3002setStartHandlePosition_kEHs6E(Offset offset) {
        this.startHandlePosition$delegate.setValue(offset);
    }

    /* JADX INFO: renamed from: startSelection-9KIMszo, reason: not valid java name */
    private final void m3003startSelection9KIMszo(long j, boolean z, SelectionAdjustment selectionAdjustment) {
        this.previousSelectionLayout = null;
        m3010updateSelectionjyLRC_s$foundation(j, Offset.Companion.m6002getUnspecifiedF1C5BW0(), z, selectionAdjustment);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, androidx.compose.ui.text.AnnotatedString] */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, androidx.compose.ui.text.TextRange] */
    private final void suggestSelectionForLongPressOrDoubleClick() {
        int iNextIndex;
        y22 y22Var;
        r07 r07Var = new r07();
        r07 r07Var2 = new r07();
        q07 q07Var = new q07();
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        ListIterator<Selectable> listIterator = listSort.listIterator(listSort.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            Selection selection = this.selectionRegistrar.getSubselections().get(listIterator.previous().getSelectableId());
            if (selection != null && selection.getStart().getOffset() != selection.getEnd().getOffset()) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex != -1) {
            int size = listSort.size();
            int i = 0;
            while (i < size) {
                Selectable selectable = listSort.get(i);
                Selection selection2 = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
                if (selection2 != null) {
                    ?? text = selectable.getText();
                    long jTextRange = TextRangeKt.TextRange(selection2.getStart().getOffset(), selection2.getEnd().getOffset());
                    boolean z = i >= iNextIndex;
                    long selectableId = selectable.getSelectableId();
                    if (!z) {
                        break;
                    }
                    r07Var.b = text;
                    r07Var2.b = TextRange.m8479boximpl(jTextRange);
                    q07Var.b = selectableId;
                    break;
                }
                i++;
            }
        }
        T t = r07Var.b;
        if (t == 0 || r07Var2.b == 0 || q07Var.b == 0 || ((CharSequence) t).length() <= 0 || (y22Var = this.coroutineScope) == null) {
            return;
        }
        av0.c(y22Var, null, null, new AnonymousClass2(r07Var, r07Var2, q07Var, null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toolbarCopy() {
        copy$foundation();
        onRelease();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    private final void updateHandleOffsets() {
        Offset offsetM5976boximpl;
        Selection.AnchorInfo end;
        Selection.AnchorInfo start;
        Selection selection = getSelection();
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        Offset offset = null;
        Selectable anchorSelectable$foundation = (selection == null || (start = selection.getStart()) == null) ? null : getAnchorSelectable$foundation(start);
        Selectable anchorSelectable$foundation2 = (selection == null || (end = selection.getEnd()) == null) ? null : getAnchorSelectable$foundation(end);
        LayoutCoordinates layoutCoordinates2 = anchorSelectable$foundation != null ? anchorSelectable$foundation.getLayoutCoordinates() : null;
        LayoutCoordinates layoutCoordinates3 = anchorSelectable$foundation2 != null ? anchorSelectable$foundation2.getLayoutCoordinates() : null;
        if (selection == null || layoutCoordinates == null || !layoutCoordinates.isAttached() || (layoutCoordinates2 == null && layoutCoordinates3 == null)) {
            m3002setStartHandlePosition_kEHs6E(null);
            m3001setEndHandlePosition_kEHs6E(null);
            return;
        }
        Rect rectVisibleBounds = SelectionManagerKt.visibleBounds(layoutCoordinates);
        if (layoutCoordinates2 != null) {
            long jMo2965getHandlePositiondBAh8RU = anchorSelectable$foundation.mo2965getHandlePositiondBAh8RU(selection, true);
            if ((jMo2965getHandlePositiondBAh8RU & 9223372034707292159L) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
                offsetM5976boximpl = null;
            } else {
                offsetM5976boximpl = Offset.m5976boximpl(layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates2, jMo2965getHandlePositiondBAh8RU));
                long jM5997unboximpl = offsetM5976boximpl.m5997unboximpl();
                if (getDraggingHandle() != Handle.SelectionStart && !SelectionManagerKt.m3015containsInclusiveUv8p0NA(rectVisibleBounds, jM5997unboximpl)) {
                    offsetM5976boximpl = null;
                }
            }
        } else {
            offsetM5976boximpl = null;
        }
        m3002setStartHandlePosition_kEHs6E(offsetM5976boximpl);
        if (layoutCoordinates3 != null) {
            long jMo2965getHandlePositiondBAh8RU2 = anchorSelectable$foundation2.mo2965getHandlePositiondBAh8RU(selection, false);
            if ((9223372034707292159L & jMo2965getHandlePositiondBAh8RU2) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
                Offset offsetM5976boximpl2 = Offset.m5976boximpl(layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates3, jMo2965getHandlePositiondBAh8RU2));
                long jM5997unboximpl2 = offsetM5976boximpl2.m5997unboximpl();
                if (getDraggingHandle() == Handle.SelectionEnd || SelectionManagerKt.m3015containsInclusiveUv8p0NA(rectVisibleBounds, jM5997unboximpl2)) {
                    offset = offsetM5976boximpl2;
                }
            }
        }
        m3001setEndHandlePosition_kEHs6E(offset);
    }

    private final void updateSelectionTextToolbar() {
        TextToolbar textToolbar = this.textToolbar;
        if (textToolbar == null) {
            return;
        }
        if (!this.showToolbar || !isInTouchMode()) {
            if (textToolbar.getStatus() == TextToolbarStatus.Shown) {
                textToolbar.hide();
            }
        } else {
            Rect contentRect = getContentRect();
            if (contentRect == null) {
                return;
            }
            TextToolbar.showMenu$default(textToolbar, contentRect, canCopy$foundation() ? new C05751(this) : null, null, null, isEntireContainerSelected$foundation() ? null : new C05762(this), null, 12, null);
        }
    }

    private final void updateSelectionToolbar() {
        if (getHasFocus()) {
            if (!ComposeFoundationFlags.isNewContextMenuEnabled) {
                updateSelectionTextToolbar();
                return;
            }
            if (!this.showToolbar || !isInTouchMode()) {
                this.toolbarRequester.hide();
            } else {
                if (getDerivedContentRect() == null) {
                    return;
                }
                this.toolbarRequester.show();
            }
        }
    }

    public final boolean canCopy$foundation() {
        return this.onCopyHandler != null && isNonEmptySelection$foundation();
    }

    public final void copy$foundation() {
        nl3<? super AnnotatedString, j59> nl3Var;
        AnnotatedString selectedText$foundation = getSelectedText$foundation();
        if (selectedText$foundation != null) {
            if (selectedText$foundation.length() <= 0) {
                selectedText$foundation = null;
            }
            if (selectedText$foundation == null || (nl3Var = this.onCopyHandler) == null) {
                return;
            }
            nl3Var.invoke(selectedText$foundation);
        }
    }

    public final void forEachSelectableWithSelection$foundation(fm3<? super Long, ? super AnnotatedString, ? super TextRange, ? super Boolean, Boolean> fm3Var) {
        int iNextIndex;
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        ListIterator<Selectable> listIterator = listSort.listIterator(listSort.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            Selection selection = this.selectionRegistrar.getSubselections().get(listIterator.previous().getSelectableId());
            if (selection != null && selection.getStart().getOffset() != selection.getEnd().getOffset()) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex == -1) {
            return;
        }
        int size = listSort.size();
        int i = 0;
        while (i < size) {
            Selectable selectable = listSort.get(i);
            Selection selection2 = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
            if (selection2 != null) {
                if (!fm3Var.invoke(Long.valueOf(selectable.getSelectableId()), selectable.getText(), TextRange.m8479boximpl(TextRangeKt.TextRange(selection2.getStart().getOffset(), selection2.getEnd().getOffset())), Boolean.valueOf(i >= iNextIndex)).booleanValue()) {
                    return;
                }
            }
            i++;
        }
    }

    public final Selectable getAnchorSelectable$foundation(Selection.AnchorInfo anchorInfo) {
        return this.selectionRegistrar.getSelectableMap$foundation().get(anchorInfo.getSelectableId());
    }

    public final LayoutCoordinates getContainerLayoutCoordinates() {
        return this.containerLayoutCoordinates;
    }

    public final Modifier getContextMenuAreaModifier() {
        return TextContextMenuToolbarHandlerModifierKt.textContextMenuToolbarHandler$default(TextContextMenuGesturesModifierKt.showTextContextMenuOnSecondaryClick(Modifier.Companion, new SelectionManager$contextMenuAreaModifier$1(this, null)), this.toolbarRequester, new SelectionManager$contextMenuAreaModifier$2(this, null), null, new qq5(this, 2), 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b36<AnnotatedString, TextRange> getContextTextAndSelection$foundation() {
        int iNextIndex;
        int iM8489getMinimpl;
        int length;
        jh2 jh2Var;
        jh2 jh2Var2 = null;
        if (getSelection() == null || this.selectionRegistrar.getSelectables$foundation().isEmpty()) {
            return null;
        }
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, jh2Var2);
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        ListIterator<Selectable> listIterator = listSort.listIterator(listSort.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            Selection selection = this.selectionRegistrar.getSubselections().get(listIterator.previous().getSelectableId());
            if (selection != null && selection.getStart().getOffset() != selection.getEnd().getOffset()) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex != -1) {
            int size = listSort.size();
            int i = 0;
            iM8489getMinimpl = -1;
            length = -1;
            while (i < size) {
                Selectable selectable = listSort.get(i);
                Selection selection2 = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
                if (selection2 != null) {
                    AnnotatedString text = selectable.getText();
                    long jTextRange = TextRangeKt.TextRange(selection2.getStart().getOffset(), selection2.getEnd().getOffset());
                    boolean z = i >= iNextIndex;
                    selectable.getSelectableId();
                    if (iM8489getMinimpl == -1) {
                        iM8489getMinimpl = TextRange.m8489getMinimpl(jTextRange);
                        builder.append(text, 0, TextRange.m8489getMinimpl(jTextRange));
                    }
                    jh2Var = jh2Var2;
                    builder.append(text, TextRange.m8489getMinimpl(jTextRange), TextRange.m8488getMaximpl(jTextRange));
                    if (z) {
                        length = builder.getLength();
                        builder.append(text, TextRange.m8488getMaximpl(jTextRange), text.length());
                    } else {
                        builder.append('\n');
                    }
                } else {
                    jh2Var = jh2Var2;
                }
                i++;
                jh2Var2 = jh2Var;
            }
        } else {
            iM8489getMinimpl = -1;
            length = -1;
        }
        b36<AnnotatedString, TextRange> b36Var = jh2Var2;
        return (iM8489getMinimpl == -1 || length == -1) ? b36Var : new b36<>(builder.toAnnotatedString(), TextRange.m8479boximpl(TextRangeKt.TextRange(iM8489getMinimpl, length)));
    }

    public final y22 getCoroutineScope$foundation() {
        return this.coroutineScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getCurrentDragPosition-_m7T9-E, reason: not valid java name */
    public final Offset m3004getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getDragBeginPosition-F1C5BW0$foundation, reason: not valid java name */
    public final long m3005getDragBeginPositionF1C5BW0$foundation() {
        return ((Offset) this.dragBeginPosition$delegate.getValue()).m5997unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getDragTotalDistance-F1C5BW0$foundation, reason: not valid java name */
    public final long m3006getDragTotalDistanceF1C5BW0$foundation() {
        return ((Offset) this.dragTotalDistance$delegate.getValue()).m5997unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    public final float getEndHandleLineHeight() {
        Selectable anchorSelectable$foundation;
        Selection selection = getSelection();
        if (selection == null || (anchorSelectable$foundation = getAnchorSelectable$foundation(selection.getEnd())) == null) {
            return 0.0f;
        }
        return anchorSelectable$foundation.getLineHeight(selection.getEnd().getOffset());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getEndHandlePosition-_m7T9-E, reason: not valid java name */
    public final Offset m3007getEndHandlePosition_m7T9E() {
        return (Offset) this.endHandlePosition$delegate.getValue();
    }

    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    public final Modifier getModifier() {
        Modifier modifierSelectionMagnifier = Modifier.Companion;
        Modifier modifierOnKeyEvent = KeyInputModifierKt.onKeyEvent(SelectionGesturesKt.updateSelectionTouchMode(FocusableKt.focusable$default(FocusChangedModifierKt.onFocusChanged(FocusRequesterModifierKt.focusRequester(OnGloballyPositionedModifierKt.onGloballyPositioned(onClearSelectionRequested(modifierSelectionMagnifier, new wr1(this, 2)), new rf0(this, 5)), this.focusRequester), new en4(this, 2)), false, null, 3, null), new mq4(this, 2)), new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$modifier$5
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m3013invokeZmokQxo(keyEvent.m7390unboximpl());
            }

            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m3013invokeZmokQxo(android.view.KeyEvent keyEvent) {
                boolean z;
                if (this.this$0.getShouldIgnoreCopyKeyEvent$foundation() || !SelectionManager_androidKt.m3017isCopyKeyEventZmokQxo(keyEvent)) {
                    z = false;
                } else {
                    this.this$0.copy$foundation();
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        if (getShouldShowMagnifier()) {
            modifierSelectionMagnifier = SelectionManager_androidKt.selectionMagnifier(modifierSelectionMagnifier, this);
        }
        return addContextMenuComponents(modifierOnKeyEvent.then(modifierSelectionMagnifier));
    }

    public final nl3<AnnotatedString, j59> getOnCopyHandler() {
        return this.onCopyHandler;
    }

    public final nl3<Selection, j59> getOnSelectionChange() {
        return this.onSelectionChange;
    }

    public final PlatformSelectionBehaviors getPlatformSelectionBehaviors$foundation() {
        return this.platformSelectionBehaviors;
    }

    public final SelectionLayout getPreviousSelectionLayout$foundation() {
        return this.previousSelectionLayout;
    }

    public final AnnotatedString getSelectedText$foundation() {
        int iNextIndex;
        jh2 jh2Var = null;
        if (getSelection() == null || this.selectionRegistrar.getSubselections().isEmpty()) {
            return null;
        }
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, jh2Var);
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        ListIterator<Selectable> listIterator = listSort.listIterator(listSort.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            Selection selection = this.selectionRegistrar.getSubselections().get(listIterator.previous().getSelectableId());
            if (selection != null && selection.getStart().getOffset() != selection.getEnd().getOffset()) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex != -1) {
            int size = listSort.size();
            int i = 0;
            while (i < size) {
                Selectable selectable = listSort.get(i);
                Selection selection2 = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
                if (selection2 != null) {
                    AnnotatedString text = selectable.getText();
                    long jTextRange = TextRangeKt.TextRange(selection2.getStart().getOffset(), selection2.getEnd().getOffset());
                    boolean z = i >= iNextIndex;
                    selectable.getSelectableId();
                    builder.append(text, TextRange.m8489getMinimpl(jTextRange), TextRange.m8488getMaximpl(jTextRange));
                    if (!z) {
                        builder.append('\n');
                    }
                }
                i++;
            }
        }
        return builder.toAnnotatedString();
    }

    public final Selection getSelection() {
        return this._selection.getValue();
    }

    public final boolean getShouldIgnoreCopyKeyEvent$foundation() {
        return this.shouldIgnoreCopyKeyEvent;
    }

    public final boolean getShowToolbar$foundation() {
        return this.showToolbar;
    }

    public final float getStartHandleLineHeight() {
        Selectable anchorSelectable$foundation;
        Selection selection = getSelection();
        if (selection == null || (anchorSelectable$foundation = getAnchorSelectable$foundation(selection.getStart())) == null) {
            return 0.0f;
        }
        return anchorSelectable$foundation.getLineHeight(selection.getStart().getOffset());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getStartHandlePosition-_m7T9-E, reason: not valid java name */
    public final Offset m3008getStartHandlePosition_m7T9E() {
        return (Offset) this.startHandlePosition$delegate.getValue();
    }

    public final TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    public final ToolbarRequester getToolbarRequester$foundation() {
        return this.toolbarRequester;
    }

    public final TextDragObserver handleDragObserver(final boolean z) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.SelectionManager.handleDragObserver.1
            private final void done() {
                this.setShowToolbar$foundation(true);
                this.setDraggingHandle(null);
                this.m2998setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                done();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDown-k-4lQ0M */
            public void mo2596onDownk4lQ0M(long j) {
                LayoutCoordinates layoutCoordinates;
                boolean z2 = z;
                SelectionManager selectionManager = this;
                Offset offsetM3008getStartHandlePosition_m7T9E = z2 ? selectionManager.m3008getStartHandlePosition_m7T9E() : selectionManager.m3007getEndHandlePosition_m7T9E();
                if (offsetM3008getStartHandlePosition_m7T9E != null) {
                    offsetM3008getStartHandlePosition_m7T9E.m5997unboximpl();
                    Selection selection = this.getSelection();
                    if (selection == null) {
                        return;
                    }
                    Selectable anchorSelectable$foundation = this.getAnchorSelectable$foundation(z ? selection.getStart() : selection.getEnd());
                    if (anchorSelectable$foundation == null || (layoutCoordinates = anchorSelectable$foundation.getLayoutCoordinates()) == null) {
                        return;
                    }
                    long jMo2965getHandlePositiondBAh8RU = anchorSelectable$foundation.mo2965getHandlePositiondBAh8RU(selection, z);
                    if ((9223372034707292159L & jMo2965getHandlePositiondBAh8RU) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
                        return;
                    }
                    long jM2988getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(jMo2965getHandlePositiondBAh8RU);
                    SelectionManager selectionManager2 = this;
                    selectionManager2.m2998setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(selectionManager2.requireContainerCoordinates$foundation().mo7711localPositionOfR5De75A(layoutCoordinates, jM2988getAdjustedCoordinatesk4lQ0M)));
                    this.setDraggingHandle(z ? Handle.SelectionStart : Handle.SelectionEnd);
                    this.setShowToolbar$foundation(false);
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDrag-k-4lQ0M */
            public void mo2597onDragk4lQ0M(long j) {
                if (this.getDraggingHandle() == null) {
                    return;
                }
                SelectionManager selectionManager = this;
                selectionManager.m3000setDragTotalDistancek4lQ0M(Offset.m5992plusMKHz9U(selectionManager.m3006getDragTotalDistanceF1C5BW0$foundation(), j));
                long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(this.m3005getDragBeginPositionF1C5BW0$foundation(), this.m3006getDragTotalDistanceF1C5BW0$foundation());
                if (this.m3011updateSelectionqNKwrvQ$foundation(Offset.m5976boximpl(jM5992plusMKHz9U), this.m3005getDragBeginPositionF1C5BW0$foundation(), z, SelectionAdjustment.Companion.getCharacterWithWordAccelerate())) {
                    this.m2999setDragBeginPositionk4lQ0M(jM5992plusMKHz9U);
                    this.m3000setDragTotalDistancek4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onStart-3MmeM6k */
            public void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                if (this.getDraggingHandle() == null) {
                    return;
                }
                Selection selection = this.getSelection();
                selection.getClass();
                Selectable selectable = this.selectionRegistrar.getSelectableMap$foundation().get((z ? selection.getStart() : selection.getEnd()).getSelectableId());
                if (selectable == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("SelectionRegistrar should contain the current selection's selectableIds");
                    h8.d();
                    return;
                }
                Selectable selectable2 = selectable;
                LayoutCoordinates layoutCoordinates = selectable2.getLayoutCoordinates();
                if (layoutCoordinates == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Current selectable should have layout coordinates.");
                    h8.d();
                    return;
                }
                long jMo2965getHandlePositiondBAh8RU = selectable2.mo2965getHandlePositiondBAh8RU(selection, z);
                if ((9223372034707292159L & jMo2965getHandlePositiondBAh8RU) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
                    return;
                }
                long jM2988getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m2988getAdjustedCoordinatesk4lQ0M(jMo2965getHandlePositiondBAh8RU);
                SelectionManager selectionManager = this;
                selectionManager.m2999setDragBeginPositionk4lQ0M(selectionManager.requireContainerCoordinates$foundation().mo7711localPositionOfR5De75A(layoutCoordinates, jM2988getAdjustedCoordinatesk4lQ0M));
                this.m3000setDragTotalDistancek4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                done();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                done();
            }
        };
    }

    public final boolean isEntireContainerSelected$foundation() {
        Selection selection;
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        if (listSort.isEmpty()) {
            return true;
        }
        int size = listSort.size();
        for (int i = 0; i < size; i++) {
            Selectable selectable = listSort.get(i);
            AnnotatedString text = selectable.getText();
            if (text.length() != 0 && ((selection = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId())) == null || Math.abs(selection.getStart().getOffset() - selection.getEnd().getOffset()) != text.length())) {
                return false;
            }
        }
        return true;
    }

    public final boolean isInTouchMode() {
        return this._isInTouchMode.getValue().booleanValue();
    }

    public final boolean isNonEmptySelection$foundation() {
        Selection selection = getSelection();
        if (selection == null || aa4.e(selection.getStart(), selection.getEnd())) {
            return false;
        }
        if (selection.getStart().getSelectableId() == selection.getEnd().getSelectableId()) {
            return true;
        }
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        int size = listSort.size();
        for (int i = 0; i < size; i++) {
            Selection selection2 = this.selectionRegistrar.getSubselections().get(listSort.get(i).getSelectableId());
            if (selection2 != null && selection2.getStart().getOffset() != selection2.getEnd().getOffset()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isTriviallyCollapsedSelection$foundation() {
        Selection selection = getSelection();
        if (selection == null) {
            return true;
        }
        return aa4.e(selection.getStart(), selection.getEnd());
    }

    public final void onRelease() {
        HapticFeedback hapticFeedback;
        this.selectionRegistrar.setSubselections(LongObjectMapKt.emptyLongObjectMap());
        setShowToolbar$foundation(false);
        if (getSelection() != null) {
            this.onSelectionChange.invoke(null);
            if (!isInTouchMode() || (hapticFeedback = this.hapticFeedBack) == null) {
                return;
            }
            hapticFeedback.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI());
        }
    }

    public final LayoutCoordinates requireContainerCoordinates$foundation() {
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        if (layoutCoordinates == null) {
            throw ng.f("null coordinates");
        }
        if (!layoutCoordinates.isAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("unattached coordinates");
        }
        return layoutCoordinates;
    }

    public final void selectAll$foundation() {
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        if (listSort.isEmpty()) {
            return;
        }
        MutableLongObjectMap mutableLongObjectMapMutableLongObjectMapOf = LongObjectMapKt.mutableLongObjectMapOf();
        int size = listSort.size();
        Selection selection = null;
        Selection selection2 = null;
        for (int i = 0; i < size; i++) {
            Selectable selectable = listSort.get(i);
            Selection selectAllSelection = selectable.getSelectAllSelection();
            if (selectAllSelection != null) {
                if (selection == null) {
                    selection = selectAllSelection;
                }
                mutableLongObjectMapMutableLongObjectMapOf.put(selectable.getSelectableId(), selectAllSelection);
                selection2 = selectAllSelection;
            }
        }
        if (mutableLongObjectMapMutableLongObjectMapOf.isEmpty()) {
            return;
        }
        if (selection != selection2) {
            selection.getClass();
            Selection.AnchorInfo start = selection.getStart();
            selection2.getClass();
            selection = new Selection(start, selection2.getEnd(), false);
        }
        this.selectionRegistrar.setSubselections(mutableLongObjectMapMutableLongObjectMapOf);
        this.onSelectionChange.invoke(selection);
        this.previousSelectionLayout = null;
    }

    public final b36<Selection, LongObjectMap<Selection>> selectAllInSelectable$foundation(long j, Selection selection) {
        HapticFeedback hapticFeedback;
        MutableLongObjectMap mutableLongObjectMapMutableLongObjectMapOf = LongObjectMapKt.mutableLongObjectMapOf();
        List<Selectable> listSort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation());
        int size = listSort.size();
        Selection selectionMerge = null;
        for (int i = 0; i < size; i++) {
            Selectable selectable = listSort.get(i);
            Selection selectAllSelection = selectable.getSelectableId() == j ? selectable.getSelectAllSelection() : null;
            if (selectAllSelection != null) {
                mutableLongObjectMapMutableLongObjectMapOf.set(selectable.getSelectableId(), selectAllSelection);
            }
            selectionMerge = SelectionManagerKt.merge(selectionMerge, selectAllSelection);
        }
        if (isInTouchMode() && !aa4.e(selectionMerge, selection) && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7018getTextHandleMove5zf0vsI());
        }
        return new b36<>(selectionMerge, mutableLongObjectMapMutableLongObjectMapOf);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    /* JADX INFO: renamed from: selectWordAtPositionIfNotAlreadySelected-k-4lQ0M, reason: not valid java name */
    public final void m3009selectWordAtPositionIfNotAlreadySelectedk4lQ0M(long j) {
        LayoutCoordinates layoutCoordinates;
        boolean zM2625isPositionInsideSelectionuaM50fQ;
        LayoutCoordinates layoutCoordinates2 = this.containerLayoutCoordinates;
        if (layoutCoordinates2 != null && layoutCoordinates2.isAttached()) {
            List<Selectable> selectables$foundation = this.selectionRegistrar.getSelectables$foundation();
            int size = selectables$foundation.size();
            for (int i = 0; i < size; i++) {
                Selectable selectable = selectables$foundation.get(i);
                Selection selection = this.selectionRegistrar.getSubselections().get(selectable.getSelectableId());
                if (selection == null || (layoutCoordinates = selectable.getLayoutCoordinates()) == null) {
                    zM2625isPositionInsideSelectionuaM50fQ = false;
                } else {
                    long jMo7711localPositionOfR5De75A = layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates2, j);
                    TextLayoutResult textLayoutResult = selectable.textLayoutResult();
                    if (textLayoutResult == null) {
                        zM2625isPositionInsideSelectionuaM50fQ = false;
                    } else {
                        zM2625isPositionInsideSelectionuaM50fQ = TextLayoutHelperKt.m2625isPositionInsideSelectionuaM50fQ(textLayoutResult, jMo7711localPositionOfR5De75A, TextRange.m8479boximpl(selection.m2983toTextRanged9O1mEE()));
                    }
                }
                if (zM2625isPositionInsideSelectionuaM50fQ) {
                    return;
                }
            }
            m3003startSelection9KIMszo(j, true, SelectionAdjustment.Companion.getWord());
        }
    }

    public final void setContainerLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.containerLayoutCoordinates = layoutCoordinates;
        if (!getHasFocus() || getSelection() == null) {
            return;
        }
        Offset offsetM5976boximpl = layoutCoordinates != null ? Offset.m5976boximpl(LayoutCoordinatesKt.positionInWindow(layoutCoordinates)) : null;
        if (aa4.e(this.previousPosition, offsetM5976boximpl)) {
            return;
        }
        this.previousPosition = offsetM5976boximpl;
        updateHandleOffsets();
        updateSelectionToolbar();
    }

    public final void setCoroutineScope$foundation(y22 y22Var) {
        this.coroutineScope = y22Var;
    }

    public final void setFocusRequester(FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final void setHapticFeedBack(HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void setHasFocus(boolean z) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setInTouchMode(boolean z) {
        if (this._isInTouchMode.getValue().booleanValue() != z) {
            this._isInTouchMode.setValue(Boolean.valueOf(z));
            updateSelectionToolbar();
        }
    }

    public final void setOnCopyHandler(nl3<? super AnnotatedString, j59> nl3Var) {
        this.onCopyHandler = nl3Var;
    }

    public final void setOnSelectionChange(nl3<? super Selection, j59> nl3Var) {
        this.onSelectionChange = new x26(2, this, nl3Var);
    }

    public final void setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors platformSelectionBehaviors) {
        this.platformSelectionBehaviors = platformSelectionBehaviors;
    }

    public final void setPreviousSelectionLayout$foundation(SelectionLayout selectionLayout) {
        this.previousSelectionLayout = selectionLayout;
    }

    public final void setSelection(Selection selection) {
        this._selection.setValue(selection);
        if (selection != null) {
            updateHandleOffsets();
        }
    }

    public final void setShouldIgnoreCopyKeyEvent$foundation(boolean z) {
        this.shouldIgnoreCopyKeyEvent = z;
    }

    public final void setShowToolbar$foundation(boolean z) {
        this.showToolbar = z;
        updateSelectionToolbar();
    }

    public final void setTextToolbar(TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void setToolbarRequester$foundation(ToolbarRequester toolbarRequester) {
        this.toolbarRequester = toolbarRequester;
    }

    public final boolean shouldPerformHaptics$foundation() {
        if (isInTouchMode()) {
            List<Selectable> selectables$foundation = this.selectionRegistrar.getSelectables$foundation();
            int size = selectables$foundation.size();
            for (int i = 0; i < size; i++) {
                if (selectables$foundation.get(i).getText().length() > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: updateSelection-jyLRC_s$foundation, reason: not valid java name */
    public final boolean m3010updateSelectionjyLRC_s$foundation(long j, long j2, boolean z, SelectionAdjustment selectionAdjustment) {
        setDraggingHandle(z ? Handle.SelectionStart : Handle.SelectionEnd);
        m2998setCurrentDragPosition_kEHs6E(Offset.m5976boximpl(j));
        SelectionLayout selectionLayoutM2997getSelectionLayoutWko1d7g = m2997getSelectionLayoutWko1d7g(j, j2, z);
        if (selectionLayoutM2997getSelectionLayoutWko1d7g == null || !selectionLayoutM2997getSelectionLayoutWko1d7g.shouldRecomputeSelection(this.previousSelectionLayout)) {
            return false;
        }
        Selection selectionAdjust = selectionAdjustment.adjust(selectionLayoutM2997getSelectionLayoutWko1d7g);
        if (!aa4.e(selectionAdjust, getSelection())) {
            selectionChanged(selectionLayoutM2997getSelectionLayoutWko1d7g, selectionAdjust);
            this.isLongPressOrClickSelection = false;
        }
        this.previousSelectionLayout = selectionLayoutM2997getSelectionLayoutWko1d7g;
        return true;
    }

    /* JADX INFO: renamed from: updateSelection-qNKwrvQ$foundation, reason: not valid java name */
    public final boolean m3011updateSelectionqNKwrvQ$foundation(Offset offset, long j, boolean z, SelectionAdjustment selectionAdjustment) {
        if (offset == null) {
            return false;
        }
        return m3010updateSelectionjyLRC_s$foundation(offset.m5997unboximpl(), j, z, selectionAdjustment);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$updateSelectionTextToolbar$1, reason: invalid class name and case insensitive filesystem */
    public static final /* synthetic */ class C05751 extends qm3 implements ll3<j59> {
        public C05751(Object obj) {
            super(0, obj, SelectionManager.class, "toolbarCopy", "toolbarCopy()V", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((SelectionManager) this.receiver).toolbarCopy();
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$updateSelectionTextToolbar$2, reason: invalid class name and case insensitive filesystem */
    public static final /* synthetic */ class C05762 extends qm3 implements ll3<j59> {
        public C05762(Object obj) {
            super(0, obj, SelectionManager.class, "selectAll", "selectAll$foundation()V", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((SelectionManager) this.receiver).selectAll$foundation();
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
