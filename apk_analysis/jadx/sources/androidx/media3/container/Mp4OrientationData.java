package androidx.media3.container;

import androidx.media3.common.Metadata;
import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public final class Mp4OrientationData implements Metadata.Entry {
    public final int orientation;

    public Mp4OrientationData(int i) {
        o8.f(i == 0 || i == 90 || i == 180 || i == 270, "Unsupported orientation");
        this.orientation = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Mp4OrientationData) && this.orientation == ((Mp4OrientationData) obj).orientation;
    }

    public int hashCode() {
        return Integer.hashCode(this.orientation) + 527;
    }

    public String toString() {
        return "Orientation= " + this.orientation;
    }
}
