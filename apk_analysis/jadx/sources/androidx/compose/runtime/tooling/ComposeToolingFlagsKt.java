package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.Trace;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeToolingFlagsKt {
    public static final <T> T verboseTrace(String str, ll3<? extends T> ll3Var) {
        if (!ComposeToolingFlags.isVerboseTracingEnabled) {
            return ll3Var.invoke();
        }
        Object objBeginSection = Trace.INSTANCE.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.INSTANCE.endSection(objBeginSection);
        }
    }
}
