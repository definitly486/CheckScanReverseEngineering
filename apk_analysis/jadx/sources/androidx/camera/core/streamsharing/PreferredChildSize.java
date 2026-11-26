package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Size;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class PreferredChildSize {
    private final Size childSizeToScale;
    private final Rect cropRectBeforeScaling;
    private final Size originalSelectedChildSize;

    public PreferredChildSize(Rect rect, Size size, Size size2) {
        rect.getClass();
        size.getClass();
        size2.getClass();
        this.cropRectBeforeScaling = rect;
        this.childSizeToScale = size;
        this.originalSelectedChildSize = size2;
    }

    public static /* synthetic */ PreferredChildSize copy$default(PreferredChildSize preferredChildSize, Rect rect, Size size, Size size2, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = preferredChildSize.cropRectBeforeScaling;
        }
        if ((i & 2) != 0) {
            size = preferredChildSize.childSizeToScale;
        }
        if ((i & 4) != 0) {
            size2 = preferredChildSize.originalSelectedChildSize;
        }
        return preferredChildSize.copy(rect, size, size2);
    }

    public final Rect component1() {
        return this.cropRectBeforeScaling;
    }

    public final Size component2() {
        return this.childSizeToScale;
    }

    public final Size component3() {
        return this.originalSelectedChildSize;
    }

    public final PreferredChildSize copy(Rect rect, Size size, Size size2) {
        rect.getClass();
        size.getClass();
        size2.getClass();
        return new PreferredChildSize(rect, size, size2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreferredChildSize)) {
            return false;
        }
        PreferredChildSize preferredChildSize = (PreferredChildSize) obj;
        return aa4.e(this.cropRectBeforeScaling, preferredChildSize.cropRectBeforeScaling) && aa4.e(this.childSizeToScale, preferredChildSize.childSizeToScale) && aa4.e(this.originalSelectedChildSize, preferredChildSize.originalSelectedChildSize);
    }

    public final Size getChildSizeToScale() {
        return this.childSizeToScale;
    }

    public final Rect getCropRectBeforeScaling() {
        return this.cropRectBeforeScaling;
    }

    public final Size getOriginalSelectedChildSize() {
        return this.originalSelectedChildSize;
    }

    public int hashCode() {
        return this.originalSelectedChildSize.hashCode() + ((this.childSizeToScale.hashCode() + (this.cropRectBeforeScaling.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "PreferredChildSize(cropRectBeforeScaling=" + this.cropRectBeforeScaling + ", childSizeToScale=" + this.childSizeToScale + ", originalSelectedChildSize=" + this.originalSelectedChildSize + ')';
    }
}
