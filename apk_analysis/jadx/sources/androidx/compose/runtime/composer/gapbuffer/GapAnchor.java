package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;
import defpackage.l2;

/* JADX INFO: loaded from: classes2.dex */
public final class GapAnchor implements Anchor {
    public static final int $stable = 8;
    private int location;

    public GapAnchor(int i) {
        this.location = i;
    }

    public final int getLocation$runtime() {
        return this.location;
    }

    @Override // androidx.compose.runtime.Anchor
    public boolean getValid() {
        return this.location != Integer.MIN_VALUE;
    }

    public final void setLocation$runtime(int i) {
        this.location = i;
    }

    public final int toIndexFor(SlotTable slotTable) {
        return slotTable.anchorIndex(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{ location = ");
        return l2.e(sb, " }", this.location);
    }

    public final int toIndexFor(SlotWriter slotWriter) {
        return slotWriter.anchorIndex(this);
    }
}
