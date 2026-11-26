package com.google.firebase.sessions;

import defpackage.mx2;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface ProcessDataManager {

    public static final class DefaultImpls {
        public static Map<String, ProcessData> generateProcessDataMap(ProcessDataManager processDataManager) {
            return processDataManager.updateProcessDataMap(mx2.b);
        }
    }

    Map<String, ProcessData> generateProcessDataMap();

    int getMyPid();

    String getMyProcessName();

    String getMyUuid();

    boolean isColdStart(Map<String, ProcessData> map);

    boolean isMyProcessStale(Map<String, ProcessData> map);

    void onSessionGenerated();

    Map<String, ProcessData> updateProcessDataMap(Map<String, ProcessData> map);
}
