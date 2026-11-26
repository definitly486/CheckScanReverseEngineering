package androidx.compose.foundation.text.input;

import androidx.compose.foundation.text.input.internal.undo.TextUndoOperation;
import androidx.compose.foundation.text.input.internal.undo.TextUndoOperationKt;
import androidx.compose.foundation.text.input.internal.undo.UndoManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.ar4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextUndoManager {
    private final MutableState stagingUndo$delegate;
    private final UndoManager<TextUndoOperation> undoManager;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public /* synthetic */ TextUndoManager(TextUndoOperation textUndoOperation, UndoManager undoManager, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : textUndoOperation, (i & 2) != 0 ? new UndoManager(null, null, 100, 3, null) : undoManager);
    }

    private final void flush() {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextUndoOperation stagingUndo = getStagingUndo();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            if (stagingUndo != null) {
                this.undoManager.record(stagingUndo);
            }
            setStagingUndo(null);
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final TextUndoOperation getStagingUndo() {
        return (TextUndoOperation) this.stagingUndo$delegate.getValue();
    }

    private final void setStagingUndo(TextUndoOperation textUndoOperation) {
        this.stagingUndo$delegate.setValue(textUndoOperation);
    }

    public final void clearHistory() {
        setStagingUndo(null);
        this.undoManager.clearHistory();
    }

    public final boolean getCanRedo() {
        return this.undoManager.getCanRedo$foundation() && getStagingUndo() == null;
    }

    public final boolean getCanUndo() {
        return this.undoManager.getCanUndo$foundation() || getStagingUndo() != null;
    }

    public final void record(TextUndoOperation textUndoOperation) {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextUndoOperation stagingUndo = getStagingUndo();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            if (stagingUndo == null) {
                setStagingUndo(textUndoOperation);
                return;
            }
            TextUndoOperation textUndoOperationMerge = TextUndoManagerKt.merge(stagingUndo, textUndoOperation);
            if (textUndoOperationMerge != null) {
                setStagingUndo(textUndoOperationMerge);
            } else {
                flush();
                setStagingUndo(textUndoOperation);
            }
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    public final void redo(TextFieldState textFieldState) {
        if (getCanRedo()) {
            TextUndoOperationKt.redo(textFieldState, this.undoManager.redo());
        }
    }

    public final void undo(TextFieldState textFieldState) {
        if (getCanUndo()) {
            flush();
            TextUndoOperationKt.undo(textFieldState, this.undoManager.undo());
        }
    }

    public static final class Companion {

        public static final class Saver implements androidx.compose.runtime.saveable.Saver<TextUndoManager, Object> {
            public static final int $stable;
            public static final Saver INSTANCE = new Saver();
            private static final androidx.compose.runtime.saveable.Saver<UndoManager<TextUndoOperation>, Object> undoManagerSaver;

            static {
                UndoManager.Companion companion = UndoManager.Companion;
                final androidx.compose.runtime.saveable.Saver<TextUndoOperation, Object> saver = TextUndoOperation.Companion.getSaver();
                undoManagerSaver = new androidx.compose.runtime.saveable.Saver<UndoManager<TextUndoOperation>, Object>() { // from class: androidx.compose.foundation.text.input.TextUndoManager$Companion$Saver$special$$inlined$createSaver$1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // androidx.compose.runtime.saveable.Saver
                    public UndoManager<TextUndoOperation> restore(Object obj) {
                        obj.getClass();
                        List list = (List) obj;
                        int iIntValue = ((Number) list.get(0)).intValue();
                        int iIntValue2 = ((Number) list.get(1)).intValue();
                        int iIntValue3 = ((Number) list.get(2)).intValue();
                        Saver saver2 = saver;
                        ar4 ar4VarE = u96.e();
                        int i = 3;
                        while (i < iIntValue2 + 3) {
                            Object objRestore = saver2.restore(list.get(i));
                            objRestore.getClass();
                            ar4VarE.add(objRestore);
                            i++;
                        }
                        ar4 ar4VarD = u96.d(ar4VarE);
                        Saver saver3 = saver;
                        ar4 ar4VarE2 = u96.e();
                        while (i < iIntValue2 + iIntValue3 + 3) {
                            Object objRestore2 = saver3.restore(list.get(i));
                            objRestore2.getClass();
                            ar4VarE2.add(objRestore2);
                            i++;
                        }
                        return new UndoManager<>(ar4VarD, u96.d(ar4VarE2), iIntValue);
                    }

                    @Override // androidx.compose.runtime.saveable.Saver
                    public Object save(SaverScope saverScope, UndoManager<TextUndoOperation> undoManager) {
                        Saver saver2 = saver;
                        ar4 ar4VarE = u96.e();
                        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).capacity));
                        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).undoStack.size()));
                        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).redoStack.size()));
                        SnapshotStateList snapshotStateList = ((UndoManager) undoManager).undoStack;
                        int size = snapshotStateList.size();
                        for (int i = 0; i < size; i++) {
                            ar4VarE.add(saver2.save(saverScope, snapshotStateList.get(i)));
                        }
                        SnapshotStateList snapshotStateList2 = ((UndoManager) undoManager).redoStack;
                        int size2 = snapshotStateList2.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            ar4VarE.add(saver2.save(saverScope, snapshotStateList2.get(i2)));
                        }
                        return u96.d(ar4VarE);
                    }
                };
                $stable = 8;
            }

            private Saver() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.compose.runtime.saveable.Saver
            public TextUndoManager restore(Object obj) {
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                Object obj3 = list.get(1);
                TextUndoOperation textUndoOperationRestore = obj2 != null ? TextUndoOperation.Companion.getSaver().restore(obj2) : null;
                androidx.compose.runtime.saveable.Saver<UndoManager<TextUndoOperation>, Object> saver = undoManagerSaver;
                obj3.getClass();
                UndoManager<TextUndoOperation> undoManagerRestore = saver.restore(obj3);
                undoManagerRestore.getClass();
                return new TextUndoManager(textUndoOperationRestore, undoManagerRestore);
            }

            @Override // androidx.compose.runtime.saveable.Saver
            public Object save(SaverScope saverScope, TextUndoManager textUndoManager) {
                TextUndoOperation stagingUndo = textUndoManager.getStagingUndo();
                return u96.i(stagingUndo != null ? TextUndoOperation.Companion.getSaver().save(saverScope, stagingUndo) : null, undoManagerSaver.save(saverScope, textUndoManager.undoManager));
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public TextUndoManager(TextUndoOperation textUndoOperation, UndoManager<TextUndoOperation> undoManager) {
        this.undoManager = undoManager;
        this.stagingUndo$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(textUndoOperation, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextUndoManager() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
