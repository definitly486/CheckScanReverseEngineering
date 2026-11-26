package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MovableContentKt;
import defpackage.aa4;
import defpackage.ar4;
import defpackage.f96;
import defpackage.ll3;
import defpackage.nn1;
import defpackage.sj0;
import defpackage.u96;
import defpackage.yr;
import defpackage.z67;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeStackTraceKt {
    private static final boolean IncludeDebugInfo = false;
    private static final String RuntimePackageHash = "9igjgp";

    public static final void appendGroupKeyStackTrace(StringBuilder sb, ComposeStackTrace composeStackTrace) {
        List<ComposeStackTraceFrame> listFilterInternalFramesByGroupKey = filterInternalFramesByGroupKey(composeStackTrace);
        int size = listFilterInternalFramesByGroupKey.size();
        for (int i = 0; i < size; i++) {
            ComposeStackTraceFrame composeStackTraceFrame = listFilterInternalFramesByGroupKey.get(i);
            sb.append("\tat $$compose.m$");
            sb.append(composeStackTraceFrame.getGroupKey());
            sb.append("(SourceFile:1)");
            sb.append('\n');
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e A[PHI: r9
      0x003e: PHI (r9v1 java.lang.String) = (r9v0 java.lang.String), (r9v13 java.lang.String) binds: [B:7:0x002b, B:12:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    public static final void appendSourceInformationStackTrace(StringBuilder sb, ComposeStackTrace composeStackTrace) {
        ar4 ar4VarE = u96.e();
        List<ComposeStackTraceFrame> frames = composeStackTrace.getFrames();
        frames.getClass();
        z67 z67Var = new z67(frames);
        int size = z67Var.size();
        String str = null;
        String str2 = null;
        for (int i = 0; i < size; i++) {
            ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) z67Var.get(i);
            SourceInformation sourceInfo = composeStackTraceFrame.getSourceInfo();
            if (sourceInfo != null) {
                String functionName = sourceInfo.getFunctionName();
                if (functionName != null) {
                    str = functionName;
                } else {
                    functionName = sourceInfo.isCall() ? "<lambda>" : null;
                    if (functionName != null) {
                        str = functionName;
                    } else if (str == null) {
                        str = "<unknown function>";
                    }
                }
                String sourceFile = sourceInfo.getSourceFile();
                if (sourceFile != null) {
                    str2 = sourceFile;
                } else if (str2 == null) {
                    str2 = "<unknown file>";
                }
                List<LocationSourceInformation> locations = sourceInfo.getLocations();
                String str3 = str + '(' + str2 + ':' + ((composeStackTraceFrame.getGroupOffset() == null || composeStackTraceFrame.getGroupOffset().intValue() >= locations.size()) ? "<unknown line>" : String.valueOf(locations.get(composeStackTraceFrame.getGroupOffset().intValue()).getLineNumber())) + ')';
                if (!sourceInfo.isCall()) {
                }
                if (!aa4.e(sourceInfo.getFunctionName(), "rememberCompositionContext") || !aa4.e(sourceInfo.getPackageHash(), RuntimePackageHash)) {
                    ar4VarE.add(str3);
                }
            }
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        ar4VarD.getClass();
        z67 z67Var2 = new z67(ar4VarD);
        int size2 = z67Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String str4 = (String) z67Var2.get(i2);
            sb.append("\tat ");
            sb.append(str4);
            sb.append('\n');
        }
    }

    public static final void appendStackTrace(StringBuilder sb, ComposeStackTrace composeStackTrace) {
        if (composeStackTrace.getHasSourceInformation()) {
            appendSourceInformationStackTrace(sb, composeStackTrace);
        } else {
            appendGroupKeyStackTrace(sb, composeStackTrace);
        }
    }

    public static final Throwable attachComposeStackTrace(Throwable th, ll3<ComposeStackTrace> ll3Var) {
        tryAttachComposeStackTrace(th, ll3Var);
        return th;
    }

    public static final List<ComposeStackTraceFrame> filterInternalFramesByGroupKey(ComposeStackTrace composeStackTrace) {
        int[] iArr = {ComposerKt.providerKey, ComposerKt.compositionLocalMapKey, 204, ComposerKt.referenceKey, ComposerKt.reuseKey, GapComposerKt.nodeKey, ComposerKt.defaultsKey, MovableContentKt.movableContentKey, 200};
        int size = composeStackTrace.getFrames().size();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            ComposeStackTraceFrame composeStackTraceFrame = composeStackTrace.getFrames().get(i);
            if (!yr.C(iArr, composeStackTraceFrame.getGroupKey())) {
                if (composeStackTraceFrame.getGroupKey() == 100) {
                    int i3 = i + 2;
                    if (i3 < size && composeStackTrace.getFrames().get(i3).getGroupKey() == 1000) {
                        break;
                    }
                    nn1.F(arrayList);
                } else {
                    arrayList.add(composeStackTraceFrame);
                }
            }
            i = i2;
        }
        return arrayList;
    }

    public static final boolean tryAttachComposeStackTrace(Throwable th, ll3<ComposeStackTrace> ll3Var) {
        DiagnosticComposeException diagnosticComposeException;
        th.getClass();
        List<Throwable> listB = f96.a.b(th);
        int size = listB.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (listB.get(i) instanceof DiagnosticComposeException) {
                return false;
            }
        }
        try {
            ComposeStackTrace composeStackTraceInvoke = ll3Var.invoke();
            if (composeStackTraceInvoke != null) {
                if (composeStackTraceInvoke.getHasSourceInformation()) {
                    List<ComposeStackTraceFrame> frames = composeStackTraceInvoke.getFrames();
                    int size2 = frames.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if (frames.get(i2).getSourceInfo() != null) {
                            z = true;
                            break;
                        }
                    }
                } else if (!composeStackTraceInvoke.getFrames().isEmpty()) {
                    z = true;
                    break;
                }
            }
            if (z) {
                composeStackTraceInvoke.getClass();
                diagnosticComposeException = new DiagnosticComposeException(composeStackTraceInvoke);
            } else {
                diagnosticComposeException = null;
            }
        } catch (Throwable th2) {
            diagnosticComposeException = th2;
        }
        if (diagnosticComposeException != null) {
            sj0.c(th, diagnosticComposeException);
        }
        return z;
    }
}
