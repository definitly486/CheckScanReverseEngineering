package androidx.camera.viewfinder.core.impl;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.Size;
import android.util.SizeF;
import androidx.camera.viewfinder.core.ScaleType;
import androidx.camera.viewfinder.core.TransformationInfo;
import defpackage.fg;
import defpackage.jh;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public final class Transformations {
    public static final Transformations INSTANCE = new Transformations();

    private Transformations() {
    }

    private final RectF cropRectFor(TransformationInfo transformationInfo, Size size) {
        float cropRectLeft = transformationInfo.getCropRectLeft();
        if (Float.isNaN(cropRectLeft)) {
            cropRectLeft = 0.0f;
        }
        float cropRectTop = transformationInfo.getCropRectTop();
        float f = Float.isNaN(cropRectTop) ? 0.0f : cropRectTop;
        float cropRectRight = transformationInfo.getCropRectRight();
        if (Float.isNaN(cropRectRight)) {
            cropRectRight = size.getWidth();
        }
        float cropRectBottom = transformationInfo.getCropRectBottom();
        if (Float.isNaN(cropRectBottom)) {
            cropRectBottom = size.getHeight();
        }
        return new RectF(cropRectLeft, f, cropRectRight, cropRectBottom);
    }

    private final Matrix getNormalizedToBuffer(RectF rectF) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(TransformationsKt.NORMALIZED_RECT, rectF, Matrix.ScaleToFit.FILL);
        return matrix;
    }

    private final Matrix getRectToRect(RectF rectF, RectF rectF2, int i) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(rectF, TransformationsKt.NORMALIZED_RECT, Matrix.ScaleToFit.FILL);
        matrix.postRotate(i);
        matrix.postConcat(INSTANCE.getNormalizedToBuffer(rectF2));
        return matrix;
    }

    public static final Matrix getSurfaceToViewfinderMatrix(Size size, Size size2, TransformationInfo transformationInfo, int i, ContentScale contentScale, Alignment alignment) {
        size.getClass();
        size2.getClass();
        transformationInfo.getClass();
        contentScale.getClass();
        alignment.getClass();
        Transformations transformations = INSTANCE;
        SizeF sizeFRotatedViewportFor = transformations.rotatedViewportFor(transformationInfo, size2);
        RectF rectF = transformations.isViewportAspectRatioMatchViewfinder$viewfinder_core_release(sizeFRotatedViewportFor, size) ? new RectF(0.0f, 0.0f, size.getWidth(), size.getHeight()) : transformations.getViewfinderViewportRectForMismatchedAspectRatios(sizeFRotatedViewportFor, size, i, contentScale, alignment);
        RectF rectFCropRectFor = transformations.cropRectFor(transformationInfo, size2);
        Matrix rectToRect = transformations.getRectToRect(rectFCropRectFor, rectF, transformationInfo.getSourceRotation());
        if (transformationInfo.isSourceMirroredHorizontally()) {
            rectToRect.preScale(-1.0f, 1.0f, rectFCropRectFor.centerX(), rectFCropRectFor.centerY());
        }
        if (transformationInfo.isSourceMirroredVertically()) {
            rectToRect.preScale(1.0f, -1.0f, rectFCropRectFor.centerX(), rectFCropRectFor.centerY());
        }
        return rectToRect;
    }

    public static final Matrix getTextureViewCorrectionMatrix(int i, int i2, int i3) {
        RectF rectF = new RectF(0.0f, 0.0f, i2, i3);
        return INSTANCE.getRectToRect(rectF, rectF, -i);
    }

    private final RectF getViewfinderViewportRectForMismatchedAspectRatios(SizeF sizeF, Size size, int i, ContentScale contentScale, Alignment alignment) {
        Matrix matrix = new Matrix();
        INSTANCE.setTransform(matrix, sizeF, size, i, contentScale, alignment);
        RectF rectF = new RectF(0.0f, 0.0f, sizeF.getWidth(), sizeF.getHeight());
        matrix.mapRect(rectF);
        return rectF;
    }

    private final boolean is90or270(int i) {
        if (i == 0) {
            return false;
        }
        if (i == 90) {
            return true;
        }
        if (i == 180) {
            return false;
        }
        if (i == 270) {
            return true;
        }
        fg.c(jh.b(i, "Invalid rotation degrees: "));
        return false;
    }

    private final boolean isAspectRatioMatchingWithRoundingError(SizeF sizeF, boolean z, Size size, boolean z2) {
        float width;
        float width2;
        float width3;
        float width4;
        if (z) {
            width = sizeF.getWidth() / sizeF.getHeight();
            width2 = width;
        } else {
            width = (sizeF.getWidth() + 1.0f) / (sizeF.getHeight() - 1.0f);
            width2 = (sizeF.getWidth() - 1.0f) / (sizeF.getHeight() + 1.0f);
        }
        if (z2) {
            width4 = size.getWidth() / size.getHeight();
            width3 = width4;
        } else {
            width3 = (size.getWidth() + 1.0f) / (size.getHeight() - 1.0f);
            width4 = (size.getWidth() - 1.0f) / (size.getHeight() + 1.0f);
        }
        return width >= width4 && width3 >= width2;
    }

    private final SizeF rotatedViewportFor(TransformationInfo transformationInfo, Size size) {
        RectF rectFCropRectFor = cropRectFor(transformationInfo, size);
        return INSTANCE.is90or270(transformationInfo.getSourceRotation()) ? new SizeF(rectFCropRectFor.height(), rectFCropRectFor.width()) : new SizeF(rectFCropRectFor.width(), rectFCropRectFor.height());
    }

    private final void setTransform(Matrix matrix, SizeF sizeF, Size size, int i, ContentScale contentScale, Alignment alignment) {
        long jMo994computeScaleFactorho9e9VQ = contentScale.mo994computeScaleFactorho9e9VQ(sizeF, toSizeF(size));
        matrix.setScale(ScaleFactorF.m1008getScaleXimpl(jMo994computeScaleFactorho9e9VQ), ScaleFactorF.m1009getScaleYimpl(jMo994computeScaleFactorho9e9VQ));
        long jMo993align41g9ag8 = alignment.mo993align41g9ag8(new SizeF(ScaleFactorF.m1008getScaleXimpl(jMo994computeScaleFactorho9e9VQ) * sizeF.getWidth(), ScaleFactorF.m1009getScaleYimpl(jMo994computeScaleFactorho9e9VQ) * sizeF.getHeight()), INSTANCE.toSizeF(size), i);
        matrix.postTranslate(OffsetF.m999getXimpl(jMo993align41g9ag8), OffsetF.m1000getYimpl(jMo993align41g9ag8));
    }

    public static final int surfaceRotationToRotationDegrees(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 90;
        }
        if (i == 2) {
            return 180;
        }
        if (i == 3) {
            return 270;
        }
        n1.e(jh.b(i, "Unsupported surface rotation: "));
        return 0;
    }

    private final SizeF toSizeF(Size size) {
        return new SizeF(size.getWidth(), size.getHeight());
    }

    public final boolean isViewportAspectRatioMatchViewfinder$viewfinder_core_release(SizeF sizeF, Size size) {
        sizeF.getClass();
        size.getClass();
        return isAspectRatioMatchingWithRoundingError(sizeF, false, size, true);
    }

    public static final Matrix getSurfaceToViewfinderMatrix(Size size, Size size2, TransformationInfo transformationInfo, int i, ScaleType scaleType) {
        size.getClass();
        size2.getClass();
        transformationInfo.getClass();
        scaleType.getClass();
        return getSurfaceToViewfinderMatrix(size, size2, transformationInfo, i, scaleType.getContentScale$viewfinder_core_release(), scaleType.getAlignment$viewfinder_core_release());
    }
}
