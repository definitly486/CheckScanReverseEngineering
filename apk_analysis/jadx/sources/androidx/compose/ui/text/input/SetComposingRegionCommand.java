package androidx.compose.ui.text.input;

import defpackage.kx6;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class SetComposingRegionCommand implements EditCommand {
    public static final int $stable = 0;
    private final int end;
    private final int start;

    public SetComposingRegionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer editingBuffer) {
        if (editingBuffer.hasComposition$ui_text()) {
            editingBuffer.commitComposition$ui_text();
        }
        int iF = kx6.f(this.start, 0, editingBuffer.getLength$ui_text());
        int iF2 = kx6.f(this.end, 0, editingBuffer.getLength$ui_text());
        if (iF != iF2) {
            if (iF < iF2) {
                editingBuffer.setComposition$ui_text(iF, iF2);
            } else {
                editingBuffer.setComposition$ui_text(iF2, iF);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SetComposingRegionCommand(start=");
        sb.append(this.start);
        sb.append(", end=");
        return rg.h(sb, this.end, ')');
    }
}
