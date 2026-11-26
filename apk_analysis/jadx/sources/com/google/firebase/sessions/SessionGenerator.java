package com.google.firebase.sessions;

import defpackage.ra8;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionGenerator {
    private final TimeProvider timeProvider;
    private final UuidGenerator uuidGenerator;

    public SessionGenerator(TimeProvider timeProvider, UuidGenerator uuidGenerator) {
        timeProvider.getClass();
        uuidGenerator.getClass();
        this.timeProvider = timeProvider;
        this.uuidGenerator = uuidGenerator;
    }

    private final String generateSessionId() {
        String string = this.uuidGenerator.next().toString();
        string.getClass();
        String lowerCase = ra8.y(string, "-", "").toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase;
    }

    public final SessionDetails generateNewSession(SessionDetails sessionDetails) {
        String firstSessionId;
        String strGenerateSessionId = generateSessionId();
        if (sessionDetails == null || (firstSessionId = sessionDetails.getFirstSessionId()) == null) {
            firstSessionId = strGenerateSessionId;
        }
        return new SessionDetails(strGenerateSessionId, firstSessionId, sessionDetails != null ? sessionDetails.getSessionIndex() + 1 : 0, this.timeProvider.currentTime().getUs());
    }
}
