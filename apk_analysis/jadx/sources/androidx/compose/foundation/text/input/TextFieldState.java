package androidx.compose.foundation.text.input;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.input.internal.ChangeTracker;
import androidx.compose.foundation.text.input.internal.OffsetMappingCalculator;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.nl3;
import defpackage.ra8;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldState {
    public static final int $stable = 0;
    private final MutableState isEditing$delegate;
    private TextFieldBuffer mainBuffer;
    private final MutableVector<NotifyImeListener> notifyImeListeners;
    private final TextUndoManager textUndoManager;
    private final UndoState undoState;
    private final MutableState userCommit$delegate;
    private final MutableState value$delegate;

    public interface NotifyImeListener {
        void onChange(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z);
    }

    public static final class Saver implements androidx.compose.runtime.saveable.Saver<TextFieldState, Object> {
        public static final int $stable = 0;
        public static final Saver INSTANCE = new Saver();

        private Saver() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.compose.runtime.saveable.Saver
        public TextFieldState restore(Object obj) {
            obj.getClass();
            List list = (List) obj;
            Object obj2 = list.get(0);
            Object obj3 = list.get(1);
            Object obj4 = list.get(2);
            Object obj5 = list.get(3);
            obj2.getClass();
            String str = (String) obj2;
            obj3.getClass();
            int iIntValue = ((Integer) obj3).intValue();
            obj4.getClass();
            long jTextRange = TextRangeKt.TextRange(iIntValue, ((Integer) obj4).intValue());
            TextUndoManager.Companion.Saver saver = TextUndoManager.Companion.Saver.INSTANCE;
            obj5.getClass();
            TextUndoManager textUndoManagerRestore = saver.restore(obj5);
            textUndoManagerRestore.getClass();
            return new TextFieldState(str, jTextRange, textUndoManagerRestore, (jh2) null);
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object save(SaverScope saverScope, TextFieldState textFieldState) {
            return u96.i(textFieldState.getText().toString(), Integer.valueOf(TextRange.m8491getStartimpl(textFieldState.m2667getSelectiond9O1mEE())), Integer.valueOf(TextRange.m8486getEndimpl(textFieldState.m2667getSelectiond9O1mEE())), TextUndoManager.Companion.Saver.INSTANCE.save(saverScope, textFieldState.getTextUndoManager$foundation()));
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextFieldEditUndoBehavior.values().length];
            try {
                iArr[TextFieldEditUndoBehavior.ClearHistory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextFieldEditUndoBehavior.MergeIfPossible.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextFieldEditUndoBehavior.NeverMerge.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TextFieldState(String str, long j, TextUndoManager textUndoManager) {
        this.textUndoManager = textUndoManager;
        ChangeTracker changeTracker = null;
        TextFieldCharSequence textFieldCharSequence = null;
        OffsetMappingCalculator offsetMappingCalculator = null;
        this.mainBuffer = new TextFieldBuffer(new TextFieldCharSequence(str, TextRangeKt.m8497coerceIn8ffj60Q(j, 0, str.length()), null, null, null, null, 60, null), changeTracker, textFieldCharSequence, offsetMappingCalculator, 14, 0 == true ? 1 : 0);
        Boolean bool = Boolean.FALSE;
        this.isEditing$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldCharSequence(str, j, null, null, null, null, 60, null), null, 2, null);
        this.userCommit$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.undoState = new UndoState(this);
        this.notifyImeListeners = new MutableVector<>(new NotifyImeListener[16], 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void commitEditAsUser(InputTransformation inputTransformation, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior) {
        TextFieldCharSequence value$foundation = getValue$foundation();
        if (this.mainBuffer.getChangeTracker$foundation().getChangeCount() == 0 && TextRange.m8484equalsimpl0(value$foundation.m2665getSelectiond9O1mEE(), this.mainBuffer.m2657getSelectiond9O1mEE())) {
            if (aa4.e(value$foundation.m2664getCompositionMzsxiRA(), this.mainBuffer.m2655getCompositionMzsxiRA$foundation()) && aa4.e(value$foundation.getHighlight(), this.mainBuffer.getHighlight$foundation()) && aa4.e(value$foundation.getComposingAnnotations(), this.mainBuffer.getComposingAnnotations$foundation())) {
                return;
            }
            updateValueAndNotifyListeners(getValue$foundation(), new TextFieldCharSequence(this.mainBuffer.toString(), this.mainBuffer.m2657getSelectiond9O1mEE(), this.mainBuffer.m2655getCompositionMzsxiRA$foundation(), this.mainBuffer.getHighlight$foundation(), TextFieldStateKt.m2669finalizeComposingAnnotationsitr0ztk(this.mainBuffer.m2655getCompositionMzsxiRA$foundation(), this.mainBuffer.getComposingAnnotations$foundation()), null, 32, null), z);
            return;
        }
        boolean z2 = false;
        boolean z3 = this.mainBuffer.getChangeTracker$foundation().getChangeCount() != 0;
        TextFieldCharSequence textFieldCharSequence = new TextFieldCharSequence(this.mainBuffer.toString(), this.mainBuffer.m2657getSelectiond9O1mEE(), this.mainBuffer.m2655getCompositionMzsxiRA$foundation(), this.mainBuffer.getHighlight$foundation(), TextFieldStateKt.m2669finalizeComposingAnnotationsitr0ztk(this.mainBuffer.m2655getCompositionMzsxiRA$foundation(), this.mainBuffer.getComposingAnnotations$foundation()), null, 32, null);
        if (inputTransformation == null) {
            if (z3 && z) {
                z2 = true;
            }
            updateValueAndNotifyListeners(value$foundation, textFieldCharSequence, z2);
            recordEditForUndo(value$foundation, textFieldCharSequence, this.mainBuffer.getChangeTracker$foundation(), textFieldEditUndoBehavior);
            return;
        }
        TextFieldBuffer textFieldBuffer = new TextFieldBuffer(textFieldCharSequence, this.mainBuffer.getChangeTracker$foundation(), value$foundation, null, 8, null);
        inputTransformation.transformInput(textFieldBuffer);
        boolean zS = ra8.s(textFieldBuffer.asCharSequence(), textFieldCharSequence);
        boolean z4 = !zS;
        boolean zM8484equalsimpl0 = TextRange.m8484equalsimpl0(textFieldBuffer.m2657getSelectiond9O1mEE(), textFieldCharSequence.m2665getSelectiond9O1mEE());
        boolean z5 = !zM8484equalsimpl0;
        if (zS && zM8484equalsimpl0) {
            updateValueAndNotifyListeners(value$foundation, TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(textFieldBuffer, 0L, textFieldCharSequence.m2664getCompositionMzsxiRA(), null, null, 13, null), z);
        } else {
            syncMainBufferToTemporaryBuffer$foundation(textFieldBuffer, z4, z5);
        }
        recordEditForUndo(value$foundation, getValue$foundation(), textFieldBuffer.getChanges(), textFieldEditUndoBehavior);
    }

    public static /* synthetic */ void commitEditAsUser$default(TextFieldState textFieldState, InputTransformation inputTransformation, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        }
        textFieldState.commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
    }

    public static /* synthetic */ void editAsUser$foundation$default(TextFieldState textFieldState, InputTransformation inputTransformation, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        }
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        nl3Var.invoke(textFieldState.getMainBuffer$foundation());
        textFieldState.commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    public static /* synthetic */ void getMainBuffer$foundation$annotations() {
    }

    public static /* synthetic */ void getUndoState$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean isEditing() {
        return ((Boolean) this.isEditing$delegate.getValue()).booleanValue();
    }

    private final void recordEditForUndo(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, TextFieldBuffer.ChangeList changeList, TextFieldEditUndoBehavior textFieldEditUndoBehavior) {
        int i = WhenMappings.$EnumSwitchMapping$0[textFieldEditUndoBehavior.ordinal()];
        if (i == 1) {
            this.textUndoManager.clearHistory();
            return;
        }
        if (i == 2) {
            TextUndoManagerKt.recordChanges(this.textUndoManager, textFieldCharSequence, textFieldCharSequence2, changeList, true);
        } else if (i == 3) {
            TextUndoManagerKt.recordChanges(this.textUndoManager, textFieldCharSequence, textFieldCharSequence2, changeList, false);
        } else {
            me0.e();
        }
    }

    private final void setEditing(boolean z) {
        this.isEditing$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUserCommit(boolean z) {
        this.userCommit$delegate.setValue(Boolean.valueOf(z));
    }

    private final void setValue(TextFieldCharSequence textFieldCharSequence) {
        this.value$delegate.setValue(textFieldCharSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateValueAndNotifyListeners(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
        setValue(textFieldCharSequence2);
        MutableVector<NotifyImeListener> mutableVector = this.notifyImeListeners;
        NotifyImeListener[] notifyImeListenerArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            notifyImeListenerArr[i].onChange(textFieldCharSequence, textFieldCharSequence2, (!z || textFieldCharSequence.contentEquals(textFieldCharSequence2) || textFieldCharSequence.m2664getCompositionMzsxiRA() == null) ? false : true);
        }
        setUserCommit(false);
    }

    public final void addNotifyImeListener$foundation(NotifyImeListener notifyImeListener) {
        this.notifyImeListeners.add(notifyImeListener);
    }

    public final void commitEdit(TextFieldBuffer textFieldBuffer) {
        TextFieldBuffer textFieldBuffer2;
        boolean z = textFieldBuffer.getChanges().getChangeCount() > 0;
        boolean zM8484equalsimpl0 = TextRange.m8484equalsimpl0(textFieldBuffer.m2657getSelectiond9O1mEE(), this.mainBuffer.m2657getSelectiond9O1mEE());
        boolean z2 = !zM8484equalsimpl0;
        if (!z && zM8484equalsimpl0) {
            textFieldBuffer.setCanCallAddStyle$foundation(true);
        }
        if (z) {
            textFieldBuffer2 = textFieldBuffer;
            recordEditForUndo(getValue$foundation(), TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(textFieldBuffer2, 0L, null, null, null, 15, null), textFieldBuffer2.getChanges(), TextFieldEditUndoBehavior.NeverMerge);
        } else {
            textFieldBuffer2 = textFieldBuffer;
        }
        syncMainBufferToTemporaryBuffer$foundation(textFieldBuffer2, z, z2);
    }

    public final void edit(nl3<? super TextFieldBuffer, j59> nl3Var) {
        TextFieldBuffer textFieldBufferStartEdit = startEdit();
        try {
            nl3Var.invoke(textFieldBufferStartEdit);
            commitEdit(textFieldBufferStartEdit);
        } finally {
            finishEditing();
        }
    }

    public final void editAsUser$foundation(InputTransformation inputTransformation, boolean z, TextFieldEditUndoBehavior textFieldEditUndoBehavior, nl3<? super TextFieldBuffer, j59> nl3Var) {
        getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        nl3Var.invoke(getMainBuffer$foundation());
        commitEditAsUser(inputTransformation, z, textFieldEditUndoBehavior);
        setUserCommit(true);
    }

    public final void editWithNoSideEffects$foundation(nl3<? super TextFieldBuffer, j59> nl3Var) {
        getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        nl3Var.invoke(getMainBuffer$foundation());
        updateValueAndNotifyListeners(getValue$foundation(), TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(getMainBuffer$foundation(), 0L, null, null, null, 15, null), true);
    }

    public final void finishEditing() {
        setEditing(false);
        setUserCommit(false);
    }

    /* JADX INFO: renamed from: getComposition-MzsxiRA, reason: not valid java name */
    public final TextRange m2666getCompositionMzsxiRA() {
        return getValue$foundation().m2664getCompositionMzsxiRA();
    }

    public final TextFieldBuffer getMainBuffer$foundation() {
        return this.mainBuffer;
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m2667getSelectiond9O1mEE() {
        return getValue$foundation().m2665getSelectiond9O1mEE();
    }

    public final CharSequence getText() {
        return getValue$foundation().getText();
    }

    public final TextUndoManager getTextUndoManager$foundation() {
        return this.textUndoManager;
    }

    public final UndoState getUndoState() {
        return this.undoState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getUserCommit$foundation() {
        return ((Boolean) this.userCommit$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TextFieldCharSequence getValue$foundation() {
        return (TextFieldCharSequence) this.value$delegate.getValue();
    }

    public final void removeNotifyImeListener$foundation(NotifyImeListener notifyImeListener) {
        this.notifyImeListeners.remove(notifyImeListener);
    }

    public final void setMainBuffer$foundation(TextFieldBuffer textFieldBuffer) {
        this.mainBuffer = textFieldBuffer;
    }

    public final TextFieldBuffer startEdit() {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            boolean zIsEditing = isEditing();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            if (zIsEditing) {
                InlineClassHelperKt.throwIllegalStateException("TextFieldState does not support concurrent or nested editing.");
            }
            setEditing(true);
            return new TextFieldBuffer(getValue$foundation(), null, null, null, 14, null);
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void syncMainBufferToTemporaryBuffer$foundation(TextFieldBuffer textFieldBuffer, boolean z, boolean z2) {
        TextFieldCharSequence textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default = TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(this.mainBuffer, 0L, null, null, null, 15, null);
        if (z) {
            ChangeTracker changeTracker = null;
            TextFieldCharSequence textFieldCharSequence = null;
            OffsetMappingCalculator offsetMappingCalculator = null;
            this.mainBuffer = new TextFieldBuffer(new TextFieldCharSequence(textFieldBuffer.toString(), textFieldBuffer.m2657getSelectiond9O1mEE(), null, null, null, null, 60, null), changeTracker, textFieldCharSequence, offsetMappingCalculator, 14, 0 == true ? 1 : 0);
        } else if (z2) {
            this.mainBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(TextRange.m8491getStartimpl(textFieldBuffer.m2657getSelectiond9O1mEE()), TextRange.m8486getEndimpl(textFieldBuffer.m2657getSelectiond9O1mEE())));
        }
        if (z || z2 || !aa4.e(textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default.m2664getCompositionMzsxiRA(), textFieldBuffer.m2655getCompositionMzsxiRA$foundation())) {
            this.mainBuffer.commitComposition$foundation();
        }
        updateValueAndNotifyListeners(textFieldCharSequenceM2654toTextFieldCharSequencewFTz33Y$foundation$default, TextFieldBuffer.m2654toTextFieldCharSequencewFTz33Y$foundation$default(this.mainBuffer, 0L, null, null, null, 15, null), true);
    }

    public String toString() {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            return "TextFieldState(selection=" + ((Object) TextRange.m8494toStringimpl(m2667getSelectiond9O1mEE())) + ", text=\"" + ((Object) getText()) + "\")";
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    public /* synthetic */ TextFieldState(String str, long j, TextUndoManager textUndoManager, jh2 jh2Var) {
        this(str, j, textUndoManager);
    }

    public /* synthetic */ TextFieldState(String str, long j, jh2 jh2Var) {
        this(str, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextFieldState(String str, long j, int i, jh2 jh2Var) {
        str = (i & 1) != 0 ? "" : str;
        this(str, (i & 2) != 0 ? TextRangeKt.TextRange(str.length()) : j, (jh2) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TextFieldState(String str, long j) {
        this(str, j, new TextUndoManager(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0), (jh2) null);
    }
}
