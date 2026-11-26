package com.google.firebase.sessions;

import android.content.Context;
import android.os.Process;
import defpackage.aa4;
import defpackage.b36;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jj5;
import defpackage.n05;
import defpackage.ny4;
import defpackage.zg0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ProcessDataManagerImpl implements ProcessDataManager {
    private final Context appContext;
    private boolean hasGeneratedSession;
    private final int myPid;
    private final cl4 myProcessDetails$delegate;
    private final cl4 myProcessName$delegate;
    private final cl4 myUuid$delegate;

    public ProcessDataManagerImpl(Context context, UuidGenerator uuidGenerator) {
        context.getClass();
        uuidGenerator.getClass();
        this.appContext = context;
        this.myProcessName$delegate = new fh8(new ny4(this, 1));
        this.myPid = Process.myPid();
        this.myUuid$delegate = new fh8(new jj5(uuidGenerator, 2));
        this.myProcessDetails$delegate = new fh8(new zg0(this, 3));
    }

    private final List<ProcessDetails> getAppProcessDetails() {
        return ProcessDetailsProvider.INSTANCE.getAppProcessDetails(this.appContext);
    }

    private final ProcessDetails getMyProcessDetails() {
        return (ProcessDetails) this.myProcessDetails$delegate.getValue();
    }

    private final boolean isProcessStale(ProcessDetails processDetails, ProcessData processData) {
        if (aa4.e(getMyProcessName(), processDetails.getProcessName())) {
            return (processDetails.getPid() == processData.getPid() && aa4.e(getMyUuid(), processData.getUuid())) ? false : true;
        }
        return processDetails.getPid() != processData.getPid();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProcessDetails myProcessDetails_delegate$lambda$2(ProcessDataManagerImpl processDataManagerImpl) {
        return ProcessDetailsProvider.INSTANCE.getMyProcessDetails(processDataManagerImpl.appContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myProcessName_delegate$lambda$0(ProcessDataManagerImpl processDataManagerImpl) {
        return processDataManagerImpl.getMyProcessDetails().getProcessName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myUuid_delegate$lambda$1(UuidGenerator uuidGenerator) {
        String string = uuidGenerator.next().toString();
        string.getClass();
        return string;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public Map<String, ProcessData> generateProcessDataMap() {
        return ProcessDataManager.DefaultImpls.generateProcessDataMap(this);
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public int getMyPid() {
        return this.myPid;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public String getMyProcessName() {
        return (String) this.myProcessName$delegate.getValue();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public String getMyUuid() {
        return (String) this.myUuid$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isColdStart(Map<String, ProcessData> map) {
        map.getClass();
        if (this.hasGeneratedSession) {
            return false;
        }
        List<ProcessDetails> appProcessDetails = getAppProcessDetails();
        ArrayList<b36> arrayList = new ArrayList();
        for (ProcessDetails processDetails : appProcessDetails) {
            ProcessData processData = map.get(processDetails.getProcessName());
            b36 b36Var = processData != null ? new b36(processDetails, processData) : null;
            if (b36Var != null) {
                arrayList.add(b36Var);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        for (b36 b36Var2 : arrayList) {
            if (!isProcessStale((ProcessDetails) b36Var2.b, (ProcessData) b36Var2.c)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isMyProcessStale(Map<String, ProcessData> map) {
        map.getClass();
        ProcessData processData = map.get(getMyProcessName());
        return (processData != null && processData.getPid() == getMyPid() && aa4.e(processData.getUuid(), getMyUuid())) ? false : true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public void onSessionGenerated() {
        this.hasGeneratedSession = true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public Map<String, ProcessData> updateProcessDataMap(Map<String, ProcessData> map) {
        if (map != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid()));
            return n05.l(linkedHashMap);
        }
        Map<String, ProcessData> mapSingletonMap = Collections.singletonMap(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid()));
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }
}
