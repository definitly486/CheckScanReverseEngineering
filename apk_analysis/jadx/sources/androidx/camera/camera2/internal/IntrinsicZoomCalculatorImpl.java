package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.util.Size;
import android.util.SizeF;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.core.util.Preconditions;
import defpackage.h2;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class IntrinsicZoomCalculatorImpl implements IntrinsicZoomCalculator {
    private final CameraDevices cameraDevices;

    public IntrinsicZoomCalculatorImpl(CameraDevices cameraDevices) {
        cameraDevices.getClass();
        this.cameraDevices = cameraDevices;
    }

    private final int focalLengthToViewAngleDegrees(float f, float f2) {
        Preconditions.checkArgument(f > 0.0f, "Focal length should be positive.");
        Preconditions.checkArgument(f2 > 0.0f, "Sensor length should be positive.");
        int degrees = (int) Math.toDegrees(Math.atan(f2 / (2.0f * f)) * 2.0d);
        Preconditions.checkArgumentInRange(degrees, 0, 360, "The provided focal length and sensor length result in an invalid view angle degrees.");
        return degrees;
    }

    private final int getDefaultCameraDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            Object objCheckNotNull = Preconditions.checkNotNull(CameraDevices.m236awaitCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null), "Failed to get available camera IDs");
            objCheckNotNull.getClass();
            Iterator it = ((List) objCheckNotNull).iterator();
            while (it.hasNext()) {
                String strM358unboximpl = ((CameraId) it.next()).m358unboximpl();
                Object objCheckNotNull2 = Preconditions.checkNotNull(CameraDevices.m237awaitCameraMetadataFpsL5FU$default(this.cameraDevices, strM358unboximpl, null, 2, null), "Failed to get CameraMetadata for " + ((Object) CameraId.m357toStringimpl(strM358unboximpl)));
                objCheckNotNull2.getClass();
                CameraMetadata cameraMetadata2 = (CameraMetadata) objCheckNotNull2;
                CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                key.getClass();
                Object objCheckNotNull3 = Preconditions.checkNotNull(cameraMetadata2.get((CameraCharacteristics.Key<Object>) key), "Failed to get CameraCharacteristics.LENS_FACING for " + ((Object) CameraId.m357toStringimpl(strM358unboximpl)));
                objCheckNotNull3.getClass();
                int iIntValue = ((Number) objCheckNotNull3).intValue();
                key.getClass();
                Object objCheckNotNull4 = Preconditions.checkNotNull(cameraMetadata.get((CameraCharacteristics.Key<Object>) key), "Failed to get the required LENS_FACING for " + ((Object) CameraId.m357toStringimpl(cameraMetadata.mo370getCameraDz_R5H8())));
                objCheckNotNull4.getClass();
                if (iIntValue == ((Number) objCheckNotNull4).intValue()) {
                    return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata2), getSensorHorizontalLength(cameraMetadata2));
                }
            }
            throw new IllegalStateException("Could not find the default camera for " + ((Object) CameraId.m357toStringimpl(cameraMetadata.mo370getCameraDz_R5H8())));
        } catch (Exception e) {
            h2.e("Failed to get a valid view angle", e);
            return 0;
        }
    }

    private final float getDefaultFocalLength(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS;
        key.getClass();
        Object objCheckNotNull = Preconditions.checkNotNull(cameraMetadata.get(key), "The focal lengths can not be empty.");
        objCheckNotNull.getClass();
        float[] fArr = (float[]) objCheckNotNull;
        Preconditions.checkState(!(fArr.length == 0), "The focal lengths can not be empty.");
        return fArr[0];
    }

    private final int getDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata), getSensorHorizontalLength(cameraMetadata));
        } catch (Exception e) {
            h2.e("Failed to get a valid view angle", e);
            return 0;
        }
    }

    private final float getSensorHorizontalLength(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE;
        key.getClass();
        Object objCheckNotNull = Preconditions.checkNotNull(cameraMetadata.get(key), "The sensor size can't be null.");
        objCheckNotNull.getClass();
        SizeF sizeFReverseSizeF = (SizeF) objCheckNotNull;
        CameraCharacteristics.Key key2 = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key2.getClass();
        Object objCheckNotNull2 = Preconditions.checkNotNull(cameraMetadata.get(key2), "The sensor orientation can't be null.");
        objCheckNotNull2.getClass();
        CameraCharacteristics.Key key3 = CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE;
        key3.getClass();
        Object objCheckNotNull3 = Preconditions.checkNotNull(cameraMetadata.get(key3), "The active array size can't be null.");
        objCheckNotNull3.getClass();
        Size sizeReverseSize = (Size) objCheckNotNull3;
        CameraCharacteristics.Key key4 = CameraCharacteristics.SENSOR_ORIENTATION;
        key4.getClass();
        Object objCheckNotNull4 = Preconditions.checkNotNull(cameraMetadata.get(key4), "The pixel array size can't be null.");
        objCheckNotNull4.getClass();
        int iIntValue = ((Number) objCheckNotNull4).intValue();
        Size sizeRectToSize = TransformUtils.rectToSize((Rect) objCheckNotNull2);
        sizeRectToSize.getClass();
        if (TransformUtils.is90or270(iIntValue)) {
            sizeFReverseSizeF = TransformUtils.reverseSizeF(sizeFReverseSizeF);
            sizeFReverseSizeF.getClass();
            sizeRectToSize = TransformUtils.reverseSize(sizeRectToSize);
            sizeRectToSize.getClass();
            sizeReverseSize = TransformUtils.reverseSize(sizeReverseSize);
            sizeReverseSize.getClass();
        }
        return (sizeFReverseSizeF.getWidth() * sizeRectToSize.getWidth()) / sizeReverseSize.getWidth();
    }

    @Override // androidx.camera.camera2.internal.IntrinsicZoomCalculator
    public Float calculateIntrinsicZoomRatio(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        try {
            return Float.valueOf(getDefaultCameraDefaultViewAngleDegrees(cameraMetadata) / getDefaultViewAngleDegrees(cameraMetadata));
        } catch (Exception e) {
            if (!Log.INSTANCE.getERROR_LOGGABLE()) {
                return null;
            }
            android.util.Log.e(Log.TAG, "Failed to get the intrinsic zoom ratio", e);
            return null;
        }
    }
}
