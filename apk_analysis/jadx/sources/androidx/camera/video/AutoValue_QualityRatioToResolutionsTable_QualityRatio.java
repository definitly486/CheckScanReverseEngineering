package androidx.camera.video;

import defpackage.l2;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_QualityRatioToResolutionsTable_QualityRatio extends QualityRatioToResolutionsTable.QualityRatio {
    private final int aspectRatio;
    private final Quality quality;

    public AutoValue_QualityRatioToResolutionsTable_QualityRatio(Quality quality, int i) {
        if (quality == null) {
            o2.d("Null quality");
            throw null;
        }
        this.quality = quality;
        this.aspectRatio = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof QualityRatioToResolutionsTable.QualityRatio) {
            QualityRatioToResolutionsTable.QualityRatio qualityRatio = (QualityRatioToResolutionsTable.QualityRatio) obj;
            if (this.quality.equals(qualityRatio.getQuality()) && this.aspectRatio == qualityRatio.getAspectRatio()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.QualityRatioToResolutionsTable.QualityRatio
    public int getAspectRatio() {
        return this.aspectRatio;
    }

    @Override // androidx.camera.video.QualityRatioToResolutionsTable.QualityRatio
    public Quality getQuality() {
        return this.quality;
    }

    public int hashCode() {
        return this.aspectRatio ^ ((this.quality.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("QualityRatio{quality=");
        sb.append(this.quality);
        sb.append(", aspectRatio=");
        return l2.e(sb, "}", this.aspectRatio);
    }
}
