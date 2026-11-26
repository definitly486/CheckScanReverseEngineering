package androidx.camera.video.internal.config;

import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class MediaInfo {
    private final AudioMimeInfo audioMimeInfo;
    private final ContainerInfo containerInfo;
    private final VideoMimeInfo videoMimeInfo;

    public MediaInfo(ContainerInfo containerInfo, VideoMimeInfo videoMimeInfo, AudioMimeInfo audioMimeInfo) {
        containerInfo.getClass();
        videoMimeInfo.getClass();
        this.containerInfo = containerInfo;
        this.videoMimeInfo = videoMimeInfo;
        this.audioMimeInfo = audioMimeInfo;
    }

    public static /* synthetic */ MediaInfo copy$default(MediaInfo mediaInfo, ContainerInfo containerInfo, VideoMimeInfo videoMimeInfo, AudioMimeInfo audioMimeInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            containerInfo = mediaInfo.containerInfo;
        }
        if ((i & 2) != 0) {
            videoMimeInfo = mediaInfo.videoMimeInfo;
        }
        if ((i & 4) != 0) {
            audioMimeInfo = mediaInfo.audioMimeInfo;
        }
        return mediaInfo.copy(containerInfo, videoMimeInfo, audioMimeInfo);
    }

    public final ContainerInfo component1() {
        return this.containerInfo;
    }

    public final VideoMimeInfo component2() {
        return this.videoMimeInfo;
    }

    public final AudioMimeInfo component3() {
        return this.audioMimeInfo;
    }

    public final MediaInfo copy(ContainerInfo containerInfo, VideoMimeInfo videoMimeInfo, AudioMimeInfo audioMimeInfo) {
        containerInfo.getClass();
        videoMimeInfo.getClass();
        return new MediaInfo(containerInfo, videoMimeInfo, audioMimeInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        return aa4.e(this.containerInfo, mediaInfo.containerInfo) && aa4.e(this.videoMimeInfo, mediaInfo.videoMimeInfo) && aa4.e(this.audioMimeInfo, mediaInfo.audioMimeInfo);
    }

    public final AudioMimeInfo getAudioMimeInfo() {
        return this.audioMimeInfo;
    }

    public final ContainerInfo getContainerInfo() {
        return this.containerInfo;
    }

    public final VideoMimeInfo getVideoMimeInfo() {
        return this.videoMimeInfo;
    }

    public int hashCode() {
        int iHashCode = (this.videoMimeInfo.hashCode() + (this.containerInfo.hashCode() * 31)) * 31;
        AudioMimeInfo audioMimeInfo = this.audioMimeInfo;
        return iHashCode + (audioMimeInfo == null ? 0 : audioMimeInfo.hashCode());
    }

    public String toString() {
        return "MediaInfo(containerInfo=" + this.containerInfo + ", videoMimeInfo=" + this.videoMimeInfo + ", audioMimeInfo=" + this.audioMimeInfo + ')';
    }
}
