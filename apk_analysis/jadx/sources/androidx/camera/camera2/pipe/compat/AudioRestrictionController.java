package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.CameraGraph;

/* JADX INFO: loaded from: classes.dex */
public interface AudioRestrictionController {

    public interface Listener {
        /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
        void mo735onCameraAudioRestrictionUpdatedLwUUkyU(int i);
    }

    void addListener(Listener listener);

    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    AudioRestrictionMode mo750getGlobalAudioRestrictionMode4o0Og1A();

    void removeCameraGraph(CameraGraph cameraGraph);

    void removeListener(Listener listener);

    /* JADX INFO: renamed from: setGlobalAudioRestrictionMode-3NUV5dA, reason: not valid java name */
    void mo751setGlobalAudioRestrictionMode3NUV5dA(AudioRestrictionMode audioRestrictionMode);

    /* JADX INFO: renamed from: updateCameraGraphAudioRestrictionMode-TyYSX5E, reason: not valid java name */
    void mo752updateCameraGraphAudioRestrictionModeTyYSX5E(CameraGraph cameraGraph, int i);
}
