package com.google.firebase.sessions.api;

import defpackage.aa4;
import defpackage.g03;
import defpackage.h03;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public interface SessionSubscriber {

    public enum Name {
        CRASHLYTICS,
        PERFORMANCE,
        MATT_SAYS_HI;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<Name> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class SessionDetails {
        private final String sessionId;

        public SessionDetails(String str) {
            str.getClass();
            this.sessionId = str;
        }

        public static /* synthetic */ SessionDetails copy$default(SessionDetails sessionDetails, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = sessionDetails.sessionId;
            }
            return sessionDetails.copy(str);
        }

        public final String component1() {
            return this.sessionId;
        }

        public final SessionDetails copy(String str) {
            str.getClass();
            return new SessionDetails(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SessionDetails) && aa4.e(this.sessionId, ((SessionDetails) obj).sessionId);
        }

        public final String getSessionId() {
            return this.sessionId;
        }

        public int hashCode() {
            return this.sessionId.hashCode();
        }

        public String toString() {
            return xp.e(new StringBuilder("SessionDetails(sessionId="), this.sessionId, ')');
        }
    }

    Name getSessionSubscriberName();

    boolean isDataCollectionEnabled();

    void onSessionChanged(SessionDetails sessionDetails);
}
