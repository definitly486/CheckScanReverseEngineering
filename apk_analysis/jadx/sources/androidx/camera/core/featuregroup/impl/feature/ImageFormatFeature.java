package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.featuregroup.GroupableFeature;
import defpackage.jh2;
import defpackage.rg;
import defpackage.xp;

/* JADX INFO: loaded from: classes.dex */
public final class ImageFormatFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_IMAGE_CAPTURE_OUTPUT_FORMAT = 0;
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.IMAGE_FORMAT;
    private final int imageCaptureOutputFormat;

    public ImageFormatFeature(int i) {
        this.imageCaptureOutputFormat = i;
    }

    private final String getOutputFormatLabel() {
        int i = this.imageCaptureOutputFormat;
        if (i != 0) {
            return i != 1 ? rg.h(new StringBuilder("UNDEFINED("), this.imageCaptureOutputFormat, ')') : "JPEG_R";
        }
        return "JPEG";
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public final int getImageCaptureOutputFormat() {
        return this.imageCaptureOutputFormat;
    }

    public String toString() {
        return xp.e(new StringBuilder("ImageFormatFeature(imageCaptureOutputFormat="), getOutputFormatLabel(), ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
