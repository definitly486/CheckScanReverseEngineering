package androidx.camera.video.featuregroup;

import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.video.Quality;

/* JADX INFO: loaded from: classes.dex */
public final class RecordingQualityFeature extends GroupableFeature {
    private final FeatureTypeInternal featureTypeInternal;
    private final Quality quality;

    public RecordingQualityFeature(Quality quality) {
        quality.getClass();
        this.quality = quality;
        this.featureTypeInternal = FeatureTypeInternal.RECORDING_QUALITY;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public final Quality getQuality() {
        return this.quality;
    }

    public String toString() {
        return "RecordingQualityFeature(quality=" + this.quality + ')';
    }
}
