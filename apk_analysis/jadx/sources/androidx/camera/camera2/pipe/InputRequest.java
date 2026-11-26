package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.media.ImageWrapper;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class InputRequest {
    private final FrameInfo frameInfo;
    private final ImageWrapper image;

    public InputRequest(ImageWrapper imageWrapper, FrameInfo frameInfo) {
        imageWrapper.getClass();
        frameInfo.getClass();
        this.image = imageWrapper;
        this.frameInfo = frameInfo;
    }

    public static /* synthetic */ InputRequest copy$default(InputRequest inputRequest, ImageWrapper imageWrapper, FrameInfo frameInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            imageWrapper = inputRequest.image;
        }
        if ((i & 2) != 0) {
            frameInfo = inputRequest.frameInfo;
        }
        return inputRequest.copy(imageWrapper, frameInfo);
    }

    public final ImageWrapper component1() {
        return this.image;
    }

    public final FrameInfo component2() {
        return this.frameInfo;
    }

    public final InputRequest copy(ImageWrapper imageWrapper, FrameInfo frameInfo) {
        imageWrapper.getClass();
        frameInfo.getClass();
        return new InputRequest(imageWrapper, frameInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputRequest)) {
            return false;
        }
        InputRequest inputRequest = (InputRequest) obj;
        return aa4.e(this.image, inputRequest.image) && aa4.e(this.frameInfo, inputRequest.frameInfo);
    }

    public final FrameInfo getFrameInfo() {
        return this.frameInfo;
    }

    public final ImageWrapper getImage() {
        return this.image;
    }

    public int hashCode() {
        return this.frameInfo.hashCode() + (this.image.hashCode() * 31);
    }

    public String toString() {
        return "InputRequest(image=" + this.image + ", frameInfo=" + this.frameInfo + ')';
    }
}
