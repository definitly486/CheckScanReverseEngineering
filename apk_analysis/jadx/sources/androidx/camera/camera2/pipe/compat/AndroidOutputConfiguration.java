package androidx.camera.camera2.pipe.compat;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j2;
import defpackage.jh2;
import defpackage.kv2;
import defpackage.kx2;
import defpackage.n7;
import defpackage.ne4;
import defpackage.qz0;
import defpackage.u96;
import defpackage.vh;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidOutputConfiguration implements OutputConfigurationWrapper {
    public static final Companion Companion = new Companion(null);
    private final int maxSharedSurfaceCount;
    private final OutputConfiguration output;
    private final String physicalCameraId;
    private final Surface surface;
    private final boolean surfaceSharing;

    private AndroidOutputConfiguration(OutputConfiguration outputConfiguration, boolean z, int i, String str) {
        outputConfiguration.getClass();
        this.output = outputConfiguration;
        this.surfaceSharing = z;
        this.maxSharedSurfaceCount = i;
        this.physicalCameraId = str;
        this.surface = outputConfiguration.getSurface();
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public void addSurface(Surface surface) {
        surface.getClass();
        Api26Compat.addSurfaces(this.output, surface);
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public int getMaxSharedSurfaceCount() {
        return this.maxSharedSurfaceCount;
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    /* JADX INFO: renamed from: getPhysicalCameraId-1LO98Z0, reason: not valid java name */
    public String mo746getPhysicalCameraId1LO98Z0() {
        return this.physicalCameraId;
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public Surface getSurface() {
        return this.surface;
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public int getSurfaceGroupId() {
        return this.output.getSurfaceGroupId();
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public boolean getSurfaceSharing() {
        return this.surfaceSharing;
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public List<Surface> getSurfaces() {
        int i = Build.VERSION.SDK_INT;
        OutputConfiguration outputConfiguration = this.output;
        return i >= 28 ? Api26Compat.getSurfaces(outputConfiguration) : u96.j(outputConfiguration.getSurface());
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public void removeSurface(Surface surface) {
        surface.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            j2.d(kv2.b(i, "removeSurface is not supported on API ", " (requires API 28)"));
        } else if (i >= 28) {
            Api28Compat.removeSurface(this.output, surface);
        }
    }

    public String toString() {
        return this.output.toString();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (!vh.g(ne4Var, OutputConfiguration.class)) {
            return null;
        }
        T t = (T) this.output;
        t.getClass();
        return t;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: create-gWWoySg$default, reason: not valid java name */
        public static /* synthetic */ OutputConfigurationWrapper m747creategWWoySg$default(Companion companion, Surface surface, Integer num, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List list, Size size, boolean z, int i, String str, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                num = null;
            }
            if ((i2 & 4) != 0) {
                outputType = OutputStream.OutputType.Companion.getSURFACE();
            }
            if ((i2 & 8) != 0) {
                mirrorMode = null;
            }
            if ((i2 & 16) != 0) {
                timestampBase = null;
            }
            if ((i2 & 32) != 0) {
                dynamicRangeProfile = null;
            }
            if ((i2 & 64) != 0) {
                streamUseCase = null;
            }
            if ((i2 & 128) != 0) {
                list = kx2.b;
            }
            if ((i2 & 256) != 0) {
                size = null;
            }
            if ((i2 & 512) != 0) {
                z = false;
            }
            if ((i2 & 1024) != 0) {
                i = -1;
            }
            if ((i2 & 2048) != 0) {
                str = null;
            }
            return companion.m749creategWWoySg(surface, num, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, list, size, z, i, str);
        }

        private final void enableSurfaceSharingCompat(OutputConfiguration outputConfiguration) {
            Api26Compat.enableSurfaceSharing(outputConfiguration);
        }

        /* JADX INFO: renamed from: setPhysicalCameraIdCompat-8Ri2elo, reason: not valid java name */
        private final void m748setPhysicalCameraIdCompat8Ri2elo(OutputConfiguration outputConfiguration, String str) {
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                j2.d(kv2.b(i, "physicalCameraId is not supported on API ", " (requires API 28)"));
            } else if (i >= 28) {
                Api28Compat.setPhysicalCameraId(outputConfiguration, str);
            }
        }

        private final Class<? extends Object> toKlass(OutputStream.OutputType outputType) {
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.Companion;
            if (aa4.e(outputType, companion.getSURFACE_TEXTURE())) {
                return SurfaceTexture.class;
            }
            if (aa4.e(outputType, companion.getSURFACE_VIEW())) {
                return SurfaceHolder.class;
            }
            if (aa4.e(outputType, companion.getMEDIA_CODEC())) {
                if (Build.VERSION.SDK_INT >= 35) {
                    return MediaCodec.class;
                }
                ah.f("OutputType.MEDIA_CODEC requires API 35 or higher.");
                return null;
            }
            if (!aa4.e(outputType, companion.getMEDIA_RECORDER())) {
                qz0.i(outputType, "Unsupported OutputType: ");
                return null;
            }
            if (Build.VERSION.SDK_INT >= 35) {
                return MediaRecorder.class;
            }
            ah.f("OutputType.MEDIA_RECORDER requires API 35 or higher.");
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: create-gWWoySg, reason: not valid java name */
        public final OutputConfigurationWrapper m749creategWWoySg(Surface surface, Integer num, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List<OutputStream.SensorPixelMode> list, Size size, boolean z, int i, String str) {
            OutputConfiguration outputConfigurationNewOutputConfiguration;
            OutputConfiguration outputConfiguration;
            OutputConfiguration outputConfigurationNewImageReaderOutputConfiguration;
            outputType.getClass();
            list.getClass();
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.Companion;
            if (outputType == companion.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe() && Build.VERSION.SDK_INT >= 35) {
                if (num == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                if (size == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                outputConfigurationNewImageReaderOutputConfiguration = Api35Compat.newImageReaderOutputConfiguration(num.intValue(), size);
            } else if (outputType != companion.getSURFACE()) {
                if (size == null) {
                    ah.f("Size must defined when creating a deferred OutputConfiguration.");
                    return null;
                }
                outputConfigurationNewOutputConfiguration = Api26Compat.newOutputConfiguration(size, toKlass(outputType));
            } else {
                if (surface == 0) {
                    Objects.toString(companion.getSURFACE());
                    ah.f("non-null surface!");
                    return null;
                }
                try {
                    surface = i != -1 ? new OutputConfiguration(i, surface) : new OutputConfiguration(surface);
                    outputConfiguration = surface;
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to create an OutputConfiguration for " + surface + '!', th);
                    }
                    return null;
                }
            }
            if (z) {
                outputConfiguration = outputConfigurationNewOutputConfiguration;
                outputConfiguration = outputConfigurationNewImageReaderOutputConfiguration;
                enableSurfaceSharingCompat(outputConfiguration);
            }
            if (str != null) {
                m748setPhysicalCameraIdCompat8Ri2elo(outputConfiguration, str);
            }
            if (mirrorMode != null) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 33) {
                    Api33Compat.setMirrorMode(outputConfiguration, mirrorMode.m569unboximpl());
                } else {
                    if (!OutputStream.MirrorMode.m566equalsimpl0(mirrorMode.m569unboximpl(), OutputStream.MirrorMode.Companion.m570getMIRROR_MODE_AUTODrUKqn0()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        StringBuilder sbC = n7.c(i2, "Cannot set mirrorMode to a non-default value on API ", ". This may result in unexpected behavior. Requested ");
                        sbC.append((Object) OutputStream.MirrorMode.m568toStringimpl(mirrorMode.m569unboximpl()));
                        android.util.Log.w(Log.TAG, sbC.toString());
                    }
                }
            }
            if (timestampBase != null) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 33) {
                    Api33Compat.setTimestampBase(outputConfiguration, timestampBase.m612unboximpl());
                } else {
                    if (!OutputStream.TimestampBase.m609equalsimpl0(timestampBase.m612unboximpl(), OutputStream.TimestampBase.Companion.m614getTIMESTAMP_BASE_DEFAULT6HVI0MA()) && Log.INSTANCE.getINFO_LOGGABLE()) {
                        StringBuilder sbC2 = n7.c(i3, "The timestamp base on API ", " will default to TIMESTAMP_BASE_DEFAULT, with which the camera device adjusts timestamps based on the output target. Requested ");
                        sbC2.append((Object) OutputStream.TimestampBase.m611toStringimpl(timestampBase.m612unboximpl()));
                        android.util.Log.i(Log.TAG, sbC2.toString());
                    }
                }
            }
            if (dynamicRangeProfile != null) {
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 33) {
                    Api33Compat.setDynamicRangeProfile(outputConfiguration, dynamicRangeProfile.m549unboximpl());
                } else {
                    if (!OutputStream.DynamicRangeProfile.m546equalsimpl0(dynamicRangeProfile.m549unboximpl(), OutputStream.DynamicRangeProfile.Companion.m562getSTANDARDfFAQAUE()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        StringBuilder sbC3 = n7.c(i4, "Cannot set dynamicRangeProfile to a non-default value on API ", ". This may result in unexpected behavior. Requested ");
                        sbC3.append((Object) OutputStream.DynamicRangeProfile.m548toStringimpl(dynamicRangeProfile.m549unboximpl()));
                        android.util.Log.w(Log.TAG, sbC3.toString());
                    }
                }
            }
            if (streamUseCase != null && Build.VERSION.SDK_INT >= 33) {
                Api33Compat.setStreamUseCase(outputConfiguration, streamUseCase.m589unboximpl());
            }
            if (!list.isEmpty()) {
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 31) {
                    Iterator<OutputStream.SensorPixelMode> it = list.iterator();
                    while (it.hasNext()) {
                        Api31Compat.addSensorPixelModeUsed(outputConfiguration, it.next().m580unboximpl());
                    }
                } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Cannot add sensorPixelModeUsed value on API " + i5 + ". This may result in unexpected behavior. Requested " + list);
                }
            }
            return new AndroidOutputConfiguration(outputConfiguration, z, Build.VERSION.SDK_INT >= 28 ? Api28Compat.getMaxSharedSurfaceCount(outputConfiguration) : 1, str, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidOutputConfiguration(OutputConfiguration outputConfiguration, boolean z, int i, String str, jh2 jh2Var) {
        this(outputConfiguration, z, i, str);
    }
}
