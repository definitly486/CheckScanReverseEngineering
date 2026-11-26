package androidx.camera.camera2.pipe.core;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamId;
import defpackage.ad2;
import defpackage.b36;
import defpackage.dh;
import defpackage.eh;
import defpackage.fh;
import defpackage.ll3;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.ta8;
import defpackage.u96;
import defpackage.ws0;
import defpackage.yc2;
import defpackage.yr;
import defpackage.zc2;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Debug {
    public static final boolean ENABLE_LOGGING = true;
    public static final boolean ENABLE_TRACING = true;
    public static final Debug INSTANCE = new Debug();
    private static final SystemTimeSource systemTimeSource = new SystemTimeSource();

    private Debug() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void appendParameters(StringBuilder sb, String str, Map<?, ? extends Object> map) {
        if (map.isEmpty()) {
            sb.append(str + ": (None)\n");
            return;
        }
        sb.append(str + '\n');
        Iterator<T> it = INSTANCE.parametersToSortedStringPairs(map).iterator();
        while (it.hasNext()) {
            b36 b36Var = (b36) it.next();
            sb.append("  " + ta8.Q(50, (String) b36Var.b) + ' ' + ((String) b36Var.c) + '\n');
        }
    }

    public static /* synthetic */ String formatParameterMap$default(Debug debug, Map map, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return debug.formatParameterMap(map, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final CharSequence formatParameterMap$lambda$0(b36 b36Var) {
        b36Var.getClass();
        return ((String) b36Var.b) + '=' + ((String) b36Var.c);
    }

    public static /* synthetic */ String formatParameterMapToLineSeparatedList$default(Debug debug, Map map, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return debug.formatParameterMapToLineSeparatedList(map, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final CharSequence formatParameterMapToLineSeparatedList$lambda$0(b36 b36Var) {
        b36Var.getClass();
        return ((String) b36Var.b) + '=' + ((String) b36Var.c);
    }

    private final String keyNameToString(Object obj) {
        if (obj instanceof CameraCharacteristics.Key) {
            String name = ((CameraCharacteristics.Key) obj).getName();
            name.getClass();
            return name;
        }
        if (obj instanceof CaptureRequest.Key) {
            String name2 = ((CaptureRequest.Key) obj).getName();
            name2.getClass();
            return name2;
        }
        if (!(obj instanceof CaptureResult.Key)) {
            return String.valueOf(obj);
        }
        String name3 = ((CaptureResult.Key) obj).getName();
        name3.getClass();
        return name3;
    }

    private final List<b36<String, String>> parametersToSortedStringPairs(Map<?, ? extends Object> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<?, ? extends Object> entry : map.entrySet()) {
            Debug debug = INSTANCE;
            arrayList.add(new b36(debug.keyNameToString(entry.getKey()), debug.valueToString(entry.getValue())));
        }
        return qn1.n0(arrayList, new Comparator() { // from class: androidx.camera.camera2.pipe.core.Debug$parametersToSortedStringPairs$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a((String) ((b36) t).b, (String) ((b36) t2).b);
            }
        });
    }

    private final String valueToString(Object obj) {
        return obj instanceof Object[] ? yr.T((Object[]) obj, "[", "]", new zc2(0), 25) : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence valueToString$lambda$0(Object obj) {
        return INSTANCE.valueToString(obj);
    }

    public final String formatCameraGraphProperties(CameraMetadata cameraMetadata, CameraGraph.Config config, CameraGraph cameraGraph) {
        String str;
        cameraMetadata.getClass();
        config.getClass();
        cameraGraph.getClass();
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = config.getConcurrentCameraGraphs$camera_camera2_pipe();
        Set<CameraId> cameraIds = concurrentCameraGraphs$camera_camera2_pipe != null ? concurrentCameraGraphs$camera_camera2_pipe.getCameraIds() : null;
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        String str2 = "External";
        String str3 = "Unknown";
        if (num != null && num.intValue() == 0) {
            str = "Front";
        } else if (num != null && num.intValue() == 1) {
            str = "Back";
        } else {
            str = (num != null && num.intValue() == 2) ? "External" : "Unknown";
        }
        CameraCharacteristics.Key key2 = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key2.getClass();
        Integer num2 = (Integer) cameraMetadata.get(key2);
        if (num2 != null && num2.intValue() == 0) {
            str2 = "Limited";
        } else if (num2 != null && num2.intValue() == 1) {
            str2 = "Full";
        } else if (num2 != null && num2.intValue() == 2) {
            str2 = "Legacy";
        } else if (num2 != null && num2.intValue() == 3) {
            str2 = "Level 3";
        } else if (num2 == null || num2.intValue() != 4) {
            str2 = "Unknown";
        }
        int iM314getSessionMode2uNL3no = config.m314getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no, companion.m341getHIGH_SPEED2uNL3no())) {
            str3 = "High Speed";
        } else if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no, companion.m342getNORMAL2uNL3no())) {
            str3 = "Normal";
        } else if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no, companion.m340getEXTENSION2uNL3no())) {
            str3 = "Extension";
        }
        CameraCharacteristics.Key key3 = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key3.getClass();
        int[] iArr = (int[]) cameraMetadata.get(key3);
        String str4 = (iArr == null || !yr.C(iArr, 11)) ? "Physical" : "Logical";
        StringBuilder sb = new StringBuilder();
        sb.append(cameraGraph + " (Camera " + config.m310getCameraDz_R5H8() + ")\n");
        if (cameraIds != null) {
            sb.append("  Concurrent: " + cameraIds + '\n');
        }
        StringBuilder sbD = ad2.d("  Facing:    ", str, " (", str4, ", ");
        sbD.append(str2);
        sbD.append(")\n");
        sb.append(sbD.toString());
        sb.append("  Mode:      " + str3 + '\n');
        sb.append("Outputs:\n");
        Iterator<CameraStream> it = cameraGraph.getStreams().getStreams().iterator();
        while (it.hasNext()) {
            int i = 0;
            for (Object obj : it.next().getOutputs()) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                OutputStream outputStream = (OutputStream) obj;
                sb.append("  ");
                sb.append(ta8.Q(12, i == 0 ? StreamId.m728toStringimpl(outputStream.getStream().m383getIdptHMqGs()) : ""));
                sb.append(ta8.Q(12, OutputId.m508toStringimpl(outputStream.mo527getId4LaLFng())));
                String string = outputStream.getSize().toString();
                string.getClass();
                sb.append(ta8.Q(12, string));
                sb.append(ta8.Q(16, StreamFormat.m682getNameimpl(outputStream.mo526getFormat8FPWQzE())));
                OutputStream.MirrorMode mirrorModeMo528getMirrorModedO1_9xk = outputStream.mo528getMirrorModedO1_9xk();
                if (mirrorModeMo528getMirrorModedO1_9xk != null) {
                    sb.append(" [" + ((Object) OutputStream.MirrorMode.m568toStringimpl(mirrorModeMo528getMirrorModedO1_9xk.m569unboximpl())) + ']');
                }
                OutputStream.TimestampBase timestampBaseMo531getTimestampBasepcPfPbY = outputStream.mo531getTimestampBasepcPfPbY();
                if (timestampBaseMo531getTimestampBasepcPfPbY != null) {
                    sb.append(" [" + ((Object) OutputStream.TimestampBase.m611toStringimpl(timestampBaseMo531getTimestampBasepcPfPbY.m612unboximpl())) + ']');
                }
                OutputStream.DynamicRangeProfile dynamicRangeProfileMo525getDynamicRangeProfileOoVcG5w = outputStream.mo525getDynamicRangeProfileOoVcG5w();
                if (dynamicRangeProfileMo525getDynamicRangeProfileOoVcG5w != null) {
                    sb.append(" [" + ((Object) OutputStream.DynamicRangeProfile.m548toStringimpl(dynamicRangeProfileMo525getDynamicRangeProfileOoVcG5w.m549unboximpl())) + ']');
                }
                OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = outputStream.mo529getStreamUseCase8x2ez34();
                if (streamUseCaseMo529getStreamUseCase8x2ez34 != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseCase.m588toStringimpl(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl())) + ']');
                }
                OutputStream.StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc = outputStream.mo530getStreamUseHintHIPxoCc();
                if (streamUseHintMo530getStreamUseHintHIPxoCc != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseHint.m602toStringimpl(streamUseHintMo530getStreamUseHintHIPxoCc.m603unboximpl())) + ']');
                }
                if (!CameraId.m354equalsimpl0(outputStream.mo524getCameraDz_R5H8(), config.m310getCameraDz_R5H8())) {
                    sb.append(" [");
                    sb.append(CameraId.m351boximpl(outputStream.mo524getCameraDz_R5H8()));
                    sb.append("]");
                }
                sb.append("\n");
                i = i2;
            }
        }
        if (!cameraGraph.getStreams().getInputs().isEmpty()) {
            sb.append("Inputs:\n");
            for (InputStream inputStream : cameraGraph.getStreams().getInputs()) {
                sb.append(" ");
                sb.append(ta8.Q(12, InputStreamId.m488toStringimpl(inputStream.mo480getIdm1bwn9M())));
                sb.append(ta8.Q(12, StreamFormat.m684toStringimpl(inputStream.mo479getFormat8FPWQzE())));
                sb.append(ta8.Q(12, String.valueOf(inputStream.getMaxImages())));
                sb.append("\n");
            }
        }
        sb.append("Session Template: " + RequestTemplate.m650getNameimpl(config.m315getSessionTemplatefGx8uWA()) + '\n');
        Debug debug = INSTANCE;
        debug.appendParameters(sb, "Session Parameters", config.getSessionParameters());
        sb.append("Default Template: " + RequestTemplate.m650getNameimpl(config.m312getDefaultTemplatefGx8uWA()) + '\n');
        debug.appendParameters(sb, "Default Parameters", config.getDefaultParameters());
        debug.appendParameters(sb, "Required Parameters", config.getRequiredParameters());
        return sb.toString();
    }

    public final String formatParameterMap(Map<?, ? extends Object> map, int i) {
        map.getClass();
        return qn1.a0(parametersToSortedStringPairs(map), null, "{", "}", i, new ws0(1), 17);
    }

    public final String formatParameterMapToLineSeparatedList(Map<?, ? extends Object> map, int i) {
        map.getClass();
        return qn1.a0(parametersToSortedStringPairs(map), ",\n", "{\n", "\n}", i, new yc2(0), 16);
    }

    public final SystemTimeSource getSystemTimeSource$camera_camera2_pipe() {
        return systemTimeSource;
    }

    public final <T> T instrument$camera_camera2_pipe(String str, ll3<? extends T> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        long jMo855nowvQl9yQU = getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            return ll3Var.invoke();
        } finally {
            long jD = dh.d(this, jMo855nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sbD = fh.d(str, " - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD));
            }
        }
    }

    public final <T> T trace(String str, ll3<? extends T> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        try {
            Trace.beginSection(str);
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }

    public final void traceStart(ll3<String> ll3Var) {
        ll3Var.getClass();
        Trace.beginSection(ll3Var.invoke());
    }

    public final void traceStop() {
        Trace.endSection();
    }
}
