package androidx.camera.core;

import androidx.tracing.Trace;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class CameraXTracer {
    public static final CameraXTracer INSTANCE = new CameraXTracer();

    private CameraXTracer() {
    }

    public static final void trace(String str, Runnable runnable) {
        str.getClass();
        runnable.getClass();
        Trace.beginSection("CX:".concat(str));
        try {
            runnable.run();
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    public final <T> T trace(String str, ll3<? extends T> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        Trace.beginSection("CX:".concat(str));
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }
}
