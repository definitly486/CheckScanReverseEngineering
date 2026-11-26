package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.Anchor;
import defpackage.l2;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkAnchor implements Anchor {
    public static final int $stable = 8;
    private int address;

    public LinkAnchor(int i) {
        this.address = i;
    }

    public final int getAddress() {
        return this.address;
    }

    @Override // androidx.compose.runtime.Anchor
    public boolean getValid() {
        return this.address != -1;
    }

    public final void setAddress(int i) {
        this.address = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{ address: ");
        return l2.e(sb, " }", this.address);
    }
}
