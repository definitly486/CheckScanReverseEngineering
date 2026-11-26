package com.google.firebase.sessions;

import com.google.firebase.encoders.annotations.Encodable;
import defpackage.aa4;

/* JADX INFO: loaded from: classes4.dex */
@Encodable
public final class SessionEvent {
    private final ApplicationInfo applicationInfo;
    private final EventType eventType;
    private final SessionInfo sessionData;

    public SessionEvent(EventType eventType, SessionInfo sessionInfo, ApplicationInfo applicationInfo) {
        eventType.getClass();
        sessionInfo.getClass();
        applicationInfo.getClass();
        this.eventType = eventType;
        this.sessionData = sessionInfo;
        this.applicationInfo = applicationInfo;
    }

    public static /* synthetic */ SessionEvent copy$default(SessionEvent sessionEvent, EventType eventType, SessionInfo sessionInfo, ApplicationInfo applicationInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            eventType = sessionEvent.eventType;
        }
        if ((i & 2) != 0) {
            sessionInfo = sessionEvent.sessionData;
        }
        if ((i & 4) != 0) {
            applicationInfo = sessionEvent.applicationInfo;
        }
        return sessionEvent.copy(eventType, sessionInfo, applicationInfo);
    }

    public final EventType component1() {
        return this.eventType;
    }

    public final SessionInfo component2() {
        return this.sessionData;
    }

    public final ApplicationInfo component3() {
        return this.applicationInfo;
    }

    public final SessionEvent copy(EventType eventType, SessionInfo sessionInfo, ApplicationInfo applicationInfo) {
        eventType.getClass();
        sessionInfo.getClass();
        applicationInfo.getClass();
        return new SessionEvent(eventType, sessionInfo, applicationInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionEvent)) {
            return false;
        }
        SessionEvent sessionEvent = (SessionEvent) obj;
        return this.eventType == sessionEvent.eventType && aa4.e(this.sessionData, sessionEvent.sessionData) && aa4.e(this.applicationInfo, sessionEvent.applicationInfo);
    }

    public final ApplicationInfo getApplicationInfo() {
        return this.applicationInfo;
    }

    public final EventType getEventType() {
        return this.eventType;
    }

    public final SessionInfo getSessionData() {
        return this.sessionData;
    }

    public int hashCode() {
        return this.applicationInfo.hashCode() + ((this.sessionData.hashCode() + (this.eventType.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "SessionEvent(eventType=" + this.eventType + ", sessionData=" + this.sessionData + ", applicationInfo=" + this.applicationInfo + ')';
    }
}
