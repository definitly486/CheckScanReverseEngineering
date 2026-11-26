package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import defpackage.l2;

/* JADX INFO: loaded from: classes3.dex */
public final class AtomSizeTooSmallSniffFailure implements SniffFailure {
    public final long atomSize;
    public final int atomType;
    public final int minimumHeaderSize;

    public AtomSizeTooSmallSniffFailure(int i, long j, int i2) {
        this.atomType = i;
        this.atomSize = j;
        this.minimumHeaderSize = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AtomSizeTooSmall{type=");
        sb.append(Util.toFourccString(this.atomType));
        sb.append(", size=");
        sb.append(this.atomSize);
        sb.append(", minHeaderSize=");
        return l2.e(sb, "}", this.minimumHeaderSize);
    }
}
