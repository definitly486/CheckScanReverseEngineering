package androidx.camera.video;

import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.video.featuregroup.RecordingQualityFeature;

/* JADX INFO: loaded from: classes.dex */
public final class GroupableFeatures {
    public static final GroupableFeature FHD_RECORDING;
    public static final GroupableFeature HD_RECORDING;
    public static final GroupableFeatures INSTANCE = new GroupableFeatures();
    public static final GroupableFeature SD_RECORDING;
    public static final GroupableFeature UHD_RECORDING;
    public static final GroupableFeature VIDEO_STABILIZATION;

    static {
        Quality quality = Quality.SD;
        quality.getClass();
        SD_RECORDING = new RecordingQualityFeature(quality);
        Quality quality2 = Quality.HD;
        quality2.getClass();
        HD_RECORDING = new RecordingQualityFeature(quality2);
        Quality quality3 = Quality.FHD;
        quality3.getClass();
        FHD_RECORDING = new RecordingQualityFeature(quality3);
        Quality quality4 = Quality.UHD;
        quality4.getClass();
        UHD_RECORDING = new RecordingQualityFeature(quality4);
        VIDEO_STABILIZATION = new VideoStabilizationFeature(VideoStabilization.ON);
    }

    private GroupableFeatures() {
    }
}
