package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class UndoManager {
    public static final int $stable = 8;
    private boolean forceNextSnapshot;
    private Long lastSnapshot;
    private final int maxStoredCharacters;
    private Entry redoStack;
    private int storedCharacters;
    private Entry undoStack;

    public /* synthetic */ UndoManager(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 100000 : i);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    private final void removeLastUndo() {
        Entry next;
        Entry next2 = this.undoStack;
        if ((next2 != null ? next2.getNext() : null) == null) {
            return;
        }
        while (true) {
            if (next2 == null) {
                next = null;
            } else {
                Entry next3 = next2.getNext();
                if (next3 != null) {
                    next = next3.getNext();
                } else {
                    next = null;
                }
            }
            if (next == null) {
                break;
            } else {
                next2 = next2.getNext();
            }
        }
        if (next2 != null) {
            next2.setNext(null);
        }
    }

    public static /* synthetic */ void snapshotIfNeeded$default(UndoManager undoManager, TextFieldValue textFieldValue, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = UndoManager_jvmAndAndroidKt.timeNowMillis();
        }
        undoManager.snapshotIfNeeded(textFieldValue, j);
    }

    public final void forceNextSnapshot() {
        this.forceNextSnapshot = true;
    }

    public final int getMaxStoredCharacters() {
        return this.maxStoredCharacters;
    }

    public final void makeSnapshot(TextFieldValue textFieldValue) {
        TextFieldValue value;
        this.forceNextSnapshot = false;
        Entry entry = this.undoStack;
        if (aa4.e(textFieldValue, entry != null ? entry.getValue() : null)) {
            return;
        }
        String text = textFieldValue.getText();
        Entry entry2 = this.undoStack;
        boolean zE = aa4.e(text, (entry2 == null || (value = entry2.getValue()) == null) ? null : value.getText());
        Entry entry3 = this.undoStack;
        if (zE) {
            if (entry3 != null) {
                entry3.setValue(textFieldValue);
                return;
            }
            return;
        }
        this.undoStack = new Entry(entry3, textFieldValue);
        this.redoStack = null;
        int length = textFieldValue.getText().length() + this.storedCharacters;
        this.storedCharacters = length;
        if (length > this.maxStoredCharacters) {
            removeLastUndo();
        }
    }

    public final TextFieldValue redo() {
        Entry entry = this.redoStack;
        if (entry == null) {
            return null;
        }
        this.redoStack = entry.getNext();
        this.undoStack = new Entry(this.undoStack, entry.getValue());
        this.storedCharacters = entry.getValue().getText().length() + this.storedCharacters;
        return entry.getValue();
    }

    public final void snapshotIfNeeded(TextFieldValue textFieldValue, long j) {
        if (!this.forceNextSnapshot) {
            Long l = this.lastSnapshot;
            if (j <= (l != null ? l.longValue() : 0L) + ((long) UndoManagerKt.getSNAPSHOTS_INTERVAL_MILLIS())) {
                return;
            }
        }
        this.lastSnapshot = Long.valueOf(j);
        makeSnapshot(textFieldValue);
    }

    public final TextFieldValue undo() {
        Entry next;
        Entry entry = this.undoStack;
        if (entry == null || (next = entry.getNext()) == null) {
            return null;
        }
        this.undoStack = next;
        this.storedCharacters -= entry.getValue().getText().length();
        this.redoStack = new Entry(this.redoStack, entry.getValue());
        return next.getValue();
    }

    public static final class Entry {
        private Entry next;
        private TextFieldValue value;

        public /* synthetic */ Entry(Entry entry, TextFieldValue textFieldValue, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : entry, textFieldValue);
        }

        public final Entry getNext() {
            return this.next;
        }

        public final TextFieldValue getValue() {
            return this.value;
        }

        public final void setNext(Entry entry) {
            this.next = entry;
        }

        public final void setValue(TextFieldValue textFieldValue) {
            this.value = textFieldValue;
        }

        public Entry(Entry entry, TextFieldValue textFieldValue) {
            this.next = entry;
            this.value = textFieldValue;
        }
    }

    public UndoManager(int i) {
        this.maxStoredCharacters = i;
    }

    public UndoManager() {
        this(0, 1, null);
    }
}
