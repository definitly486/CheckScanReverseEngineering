package androidx.compose.ui.node;

import android.os.Trace;
import androidx.compose.runtime.tooling.ComposeToolingFlags;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class MeasureAndLayoutDelegateKt {
    public static final <T> T traceMeasureLayout(String str, ll3<? extends T> ll3Var) {
        if (!ComposeToolingFlags.isVerboseTracingEnabled) {
            return ll3Var.invoke();
        }
        Trace.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }

    public static final <T> T traceMeasureLayoutIf(boolean z, String str, ll3<? extends T> ll3Var) {
        if (!ComposeToolingFlags.isVerboseTracingEnabled || !z) {
            return ll3Var.invoke();
        }
        Trace.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }
}
