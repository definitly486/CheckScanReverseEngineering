package androidx.camera.camera2.pipe.media;

import android.os.Build;
import android.os.Handler;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ImageSourceConfig;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.PlatformApiCompat;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.ah;
import defpackage.c9;
import defpackage.fg;
import defpackage.kv2;
import defpackage.qn1;
import defpackage.xp;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ImageReaderImageSources implements ImageSources {
    private final PlatformApiCompat platformApiCompat;
    private final Threads threads;

    public ImageReaderImageSources(Threads threads, CameraPipe.Config config) {
        threads.getClass();
        config.getClass();
        this.threads = threads;
        this.platformApiCompat = config.getPlatformApiCompat();
    }

    private static final Handler create$lambda$4(ImageReaderImageSources imageReaderImageSources) {
        return imageReaderImageSources.threads.getCamera2Handler();
    }

    private static final Executor create$lambda$5(ImageReaderImageSources imageReaderImageSources) {
        return imageReaderImageSources.threads.getLightweightExecutor();
    }

    public final ImageSource create(CameraStream cameraStream, int i, Long l, Integer num, Integer num2, boolean z) {
        cameraStream.getClass();
        Long l2 = null;
        if (cameraStream.getOutputs().isEmpty()) {
            xp.i(cameraStream, " must have outputs.");
            return null;
        }
        if (i <= 0) {
            c9.f(kv2.b(i, "Capacity (", ") must be > 0"));
            return null;
        }
        if (i > 52) {
            fg.c("Capacity for creating new ImageReaderImageSources is restricted to 52. Android has undocumented internal limits that can vary per device.");
            return null;
        }
        if (z && cameraStream.getOutputs().size() <= 1) {
            ah.f("Cannot enable concurrent outputs for a single output camera stream.");
            return null;
        }
        int i2 = i + 2;
        if (cameraStream.getOutputs().size() == 1) {
            OutputStream outputStream = (OutputStream) qn1.k0(cameraStream.getOutputs());
            return ImageReaderImageSource.Companion.create(AndroidImageReader.Companion.m979createfE0t4g(outputStream.getSize().getWidth(), outputStream.getSize().getHeight(), outputStream.mo526getFormat8FPWQzE(), i2, l, num, num2, cameraStream.m383getIdptHMqGs(), outputStream.mo527getId4LaLFng(), create$lambda$4(this)));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 31) {
            throw new IllegalStateException("Failed to create an ImageSource for " + cameraStream + '!');
        }
        if (l != null && i3 >= 36) {
            l2 = l;
        } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Ignoring usageFlags (" + l + ") for " + cameraStream + ". MultiResolutionImageReader does not support setting usage flags.");
        }
        if (num != null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Ignoring DataSpace (" + num.intValue() + ") for " + cameraStream + ". MultiResolutionImageReader does not support setting the default DataSpace.");
        }
        if (num2 != null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Ignoring HardwareBufferFormat (" + num2.intValue() + ") for " + cameraStream + ". MultiResolutionImageReader does not support setting the default HardwareBufferFormat.");
        }
        return ImageReaderImageSource.Companion.create(AndroidMultiResolutionImageReader.Companion.create(cameraStream, i, create$lambda$5(this), l2, z, this.platformApiCompat));
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSources
    public ImageSource createImageSource(CameraStream cameraStream, ImageSourceConfig imageSourceConfig) {
        cameraStream.getClass();
        imageSourceConfig.getClass();
        return create(cameraStream, imageSourceConfig.getCapacity(), imageSourceConfig.getUsageFlags(), imageSourceConfig.getDefaultDataSpace(), imageSourceConfig.getDefaultHardwareBufferFormat(), imageSourceConfig.getEnableConcurrentOutputs());
    }
}
