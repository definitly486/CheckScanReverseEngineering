package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.ej0;
import defpackage.vg;
import defpackage.xp;
import defpackage.zg;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionInfo {
    private final DataCollectionStatus dataCollectionStatus;
    private final long eventTimestampUs;
    private final String firebaseAuthenticationToken;
    private final String firebaseInstallationId;
    private final String firstSessionId;
    private final String sessionId;
    private final int sessionIndex;

    public SessionInfo(String str, String str2, int i, long j, DataCollectionStatus dataCollectionStatus, String str3, String str4) {
        str.getClass();
        str2.getClass();
        dataCollectionStatus.getClass();
        str3.getClass();
        str4.getClass();
        this.sessionId = str;
        this.firstSessionId = str2;
        this.sessionIndex = i;
        this.eventTimestampUs = j;
        this.dataCollectionStatus = dataCollectionStatus;
        this.firebaseInstallationId = str3;
        this.firebaseAuthenticationToken = str4;
    }

    public static /* synthetic */ SessionInfo copy$default(SessionInfo sessionInfo, String str, String str2, int i, long j, DataCollectionStatus dataCollectionStatus, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sessionInfo.sessionId;
        }
        if ((i2 & 2) != 0) {
            str2 = sessionInfo.firstSessionId;
        }
        if ((i2 & 4) != 0) {
            i = sessionInfo.sessionIndex;
        }
        if ((i2 & 8) != 0) {
            j = sessionInfo.eventTimestampUs;
        }
        if ((i2 & 16) != 0) {
            dataCollectionStatus = sessionInfo.dataCollectionStatus;
        }
        if ((i2 & 32) != 0) {
            str3 = sessionInfo.firebaseInstallationId;
        }
        if ((i2 & 64) != 0) {
            str4 = sessionInfo.firebaseAuthenticationToken;
        }
        String str5 = str4;
        DataCollectionStatus dataCollectionStatus2 = dataCollectionStatus;
        long j2 = j;
        int i3 = i;
        return sessionInfo.copy(str, str2, i3, j2, dataCollectionStatus2, str3, str5);
    }

    public final String component1() {
        return this.sessionId;
    }

    public final String component2() {
        return this.firstSessionId;
    }

    public final int component3() {
        return this.sessionIndex;
    }

    public final long component4() {
        return this.eventTimestampUs;
    }

    public final DataCollectionStatus component5() {
        return this.dataCollectionStatus;
    }

    public final String component6() {
        return this.firebaseInstallationId;
    }

    public final String component7() {
        return this.firebaseAuthenticationToken;
    }

    public final SessionInfo copy(String str, String str2, int i, long j, DataCollectionStatus dataCollectionStatus, String str3, String str4) {
        str.getClass();
        str2.getClass();
        dataCollectionStatus.getClass();
        str3.getClass();
        str4.getClass();
        return new SessionInfo(str, str2, i, j, dataCollectionStatus, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionInfo)) {
            return false;
        }
        SessionInfo sessionInfo = (SessionInfo) obj;
        return aa4.e(this.sessionId, sessionInfo.sessionId) && aa4.e(this.firstSessionId, sessionInfo.firstSessionId) && this.sessionIndex == sessionInfo.sessionIndex && this.eventTimestampUs == sessionInfo.eventTimestampUs && aa4.e(this.dataCollectionStatus, sessionInfo.dataCollectionStatus) && aa4.e(this.firebaseInstallationId, sessionInfo.firebaseInstallationId) && aa4.e(this.firebaseAuthenticationToken, sessionInfo.firebaseAuthenticationToken);
    }

    public final DataCollectionStatus getDataCollectionStatus() {
        return this.dataCollectionStatus;
    }

    public final long getEventTimestampUs() {
        return this.eventTimestampUs;
    }

    public final String getFirebaseAuthenticationToken() {
        return this.firebaseAuthenticationToken;
    }

    public final String getFirebaseInstallationId() {
        return this.firebaseInstallationId;
    }

    public final String getFirstSessionId() {
        return this.firstSessionId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final int getSessionIndex() {
        return this.sessionIndex;
    }

    public int hashCode() {
        return this.firebaseAuthenticationToken.hashCode() + zg.b((this.dataCollectionStatus.hashCode() + vg.b(ej0.b(this.sessionIndex, zg.b(this.sessionId.hashCode() * 31, 31, this.firstSessionId), 31), 31, this.eventTimestampUs)) * 31, 31, this.firebaseInstallationId);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SessionInfo(sessionId=");
        sb.append(this.sessionId);
        sb.append(", firstSessionId=");
        sb.append(this.firstSessionId);
        sb.append(", sessionIndex=");
        sb.append(this.sessionIndex);
        sb.append(", eventTimestampUs=");
        sb.append(this.eventTimestampUs);
        sb.append(", dataCollectionStatus=");
        sb.append(this.dataCollectionStatus);
        sb.append(", firebaseInstallationId=");
        sb.append(this.firebaseInstallationId);
        sb.append(", firebaseAuthenticationToken=");
        return xp.e(sb, this.firebaseAuthenticationToken, ')');
    }
}
