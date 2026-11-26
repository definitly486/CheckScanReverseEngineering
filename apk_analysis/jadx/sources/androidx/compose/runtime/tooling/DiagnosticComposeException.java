package androidx.compose.runtime.tooling;

import defpackage.aa4;
import defpackage.ad2;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DiagnosticComposeException extends RuntimeException {
    public static final int $stable = 8;
    private final ComposeStackTrace trace;

    public DiagnosticComposeException(ComposeStackTrace composeStackTrace) {
        this.trace = composeStackTrace;
        if (composeStackTrace.getHasSourceInformation()) {
            return;
        }
        List<ComposeStackTraceFrame> listFilterInternalFramesByGroupKey = ComposeStackTraceKt.filterInternalFramesByGroupKey(composeStackTrace);
        int size = listFilterInternalFramesByGroupKey.size();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[size];
        for (int i = 0; i < size; i++) {
            stackTraceElementArr[i] = new StackTraceElement("$$compose", "m$" + listFilterInternalFramesByGroupKey.get(i).getGroupKey(), "SourceFile", 1);
        }
        setStackTrace(stackTraceElementArr);
    }

    private final <T, R> R[] mapToArray(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        list.size();
        aa4.i();
        throw null;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (!this.trace.getHasSourceInformation()) {
            return "Composition stack when thrown:";
        }
        StringBuilder sbC = ad2.c("Composition stack when thrown:\n");
        ComposeStackTraceKt.appendSourceInformationStackTrace(sbC, this.trace);
        return sbC.toString();
    }
}
