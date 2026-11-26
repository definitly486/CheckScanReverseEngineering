package androidx.compose.foundation.text.input.internal.undo;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.ar4;
import defpackage.u96;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
public final class UndoManager$Companion$createSaver$1<T> implements Saver<UndoManager<T>, Object> {
    final /* synthetic */ Saver<T, Object> $itemSaver;

    public UndoManager$Companion$createSaver$1(Saver<T, Object> saver) {
        this.$itemSaver = saver;
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public UndoManager<T> restore(Object obj) {
        obj.getClass();
        List list = (List) obj;
        int iIntValue = ((Number) list.get(0)).intValue();
        int iIntValue2 = ((Number) list.get(1)).intValue();
        int iIntValue3 = ((Number) list.get(2)).intValue();
        Saver<T, Object> saver = this.$itemSaver;
        ar4 ar4VarE = u96.e();
        int i = 3;
        while (i < iIntValue2 + 3) {
            T tRestore = saver.restore(list.get(i));
            tRestore.getClass();
            ar4VarE.add(tRestore);
            i++;
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        Saver<T, Object> saver2 = this.$itemSaver;
        ar4 ar4VarE2 = u96.e();
        while (i < iIntValue2 + iIntValue3 + 3) {
            T tRestore2 = saver2.restore(list.get(i));
            tRestore2.getClass();
            ar4VarE2.add(tRestore2);
            i++;
        }
        return new UndoManager<>(ar4VarD, u96.d(ar4VarE2), iIntValue);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public Object save(SaverScope saverScope, UndoManager<T> undoManager) {
        Saver<T, Object> saver = this.$itemSaver;
        ar4 ar4VarE = u96.e();
        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).capacity));
        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).undoStack.size()));
        ar4VarE.add(Integer.valueOf(((UndoManager) undoManager).redoStack.size()));
        SnapshotStateList snapshotStateList = ((UndoManager) undoManager).undoStack;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            ar4VarE.add(saver.save(saverScope, snapshotStateList.get(i)));
        }
        SnapshotStateList snapshotStateList2 = ((UndoManager) undoManager).redoStack;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ar4VarE.add(saver.save(saverScope, snapshotStateList2.get(i2)));
        }
        return u96.d(ar4VarE);
    }
}
