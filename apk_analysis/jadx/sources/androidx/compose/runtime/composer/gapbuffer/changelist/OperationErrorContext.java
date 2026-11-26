package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface OperationErrorContext {
    List<ComposeStackTraceFrame> buildStackTrace(Integer num);

    boolean getSourceInformationEnabled();
}
