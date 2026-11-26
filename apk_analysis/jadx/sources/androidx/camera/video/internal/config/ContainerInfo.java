package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class ContainerInfo {
    private final EncoderProfilesProxy compatibleEncoderProfiles;
    private final int outputFormat;

    public ContainerInfo(int i, EncoderProfilesProxy encoderProfilesProxy) {
        this.outputFormat = i;
        this.compatibleEncoderProfiles = encoderProfilesProxy;
    }

    public static /* synthetic */ ContainerInfo copy$default(ContainerInfo containerInfo, int i, EncoderProfilesProxy encoderProfilesProxy, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = containerInfo.outputFormat;
        }
        if ((i2 & 2) != 0) {
            encoderProfilesProxy = containerInfo.compatibleEncoderProfiles;
        }
        return containerInfo.copy(i, encoderProfilesProxy);
    }

    public static /* synthetic */ void getOutputFormat$annotations() {
    }

    public final int component1() {
        return this.outputFormat;
    }

    public final EncoderProfilesProxy component2() {
        return this.compatibleEncoderProfiles;
    }

    public final ContainerInfo copy(int i, EncoderProfilesProxy encoderProfilesProxy) {
        return new ContainerInfo(i, encoderProfilesProxy);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContainerInfo)) {
            return false;
        }
        ContainerInfo containerInfo = (ContainerInfo) obj;
        return this.outputFormat == containerInfo.outputFormat && aa4.e(this.compatibleEncoderProfiles, containerInfo.compatibleEncoderProfiles);
    }

    public final EncoderProfilesProxy getCompatibleEncoderProfiles() {
        return this.compatibleEncoderProfiles;
    }

    public final int getOutputFormat() {
        return this.outputFormat;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.outputFormat) * 31;
        EncoderProfilesProxy encoderProfilesProxy = this.compatibleEncoderProfiles;
        return iHashCode + (encoderProfilesProxy == null ? 0 : encoderProfilesProxy.hashCode());
    }

    public String toString() {
        return "ContainerInfo(outputFormat=" + this.outputFormat + ", compatibleEncoderProfiles=" + this.compatibleEncoderProfiles + ')';
    }
}
