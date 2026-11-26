package androidx.camera.camera2.pipe;

import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import defpackage.dm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureSequences {
    public static final CaptureSequences INSTANCE = new CaptureSequences();

    private CaptureSequences() {
    }

    public final <T> void invokeOnRequest(CaptureSequence<? extends T> captureSequence, RequestMetadata requestMetadata, nl3<? super Request.Listener, ? extends Object> nl3Var) {
        captureSequence.getClass();
        requestMetadata.getClass();
        nl3Var.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = captureSequence.getListeners().size();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(captureSequence.getListeners().get(i));
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            nl3Var.invoke(requestMetadata.getRequest().getListeners().get(i2));
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    public final <T> void invokeOnRequests(CaptureSequence<? extends T> captureSequence, dm3<? super RequestMetadata, ? super Integer, ? super Request.Listener, ? extends Object> dm3Var) {
        captureSequence.getClass();
        dm3Var.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = captureSequence.getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
            int size2 = captureSequence.getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                dm3Var.invoke(requestMetadata, Integer.valueOf(i), captureSequence.getListeners().get(i2));
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = captureSequence.getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                dm3Var.invoke(requestMetadata2, Integer.valueOf(i3), requestMetadata2.getRequest().getListeners().get(i4));
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }
}
