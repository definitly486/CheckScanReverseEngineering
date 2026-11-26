package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface PerfSessionOrBuilder extends ha5 {
    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    String getSessionId();

    fx0 getSessionIdBytes();

    SessionVerbosity getSessionVerbosity(int i);

    int getSessionVerbosityCount();

    List<SessionVerbosity> getSessionVerbosityList();

    boolean hasSessionId();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
