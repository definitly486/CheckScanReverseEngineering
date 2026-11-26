package io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public enum ApplicationState {
    UNKNOWN("unknown"),
    BACKGROUND("background"),
    VISIBLE(TJAdUnitConstants.String.VISIBLE);

    private final String a;

    ApplicationState(String str) {
        this.a = str;
    }

    public static ApplicationState fromString(String str) {
        ApplicationState applicationState = UNKNOWN;
        for (ApplicationState applicationState2 : values()) {
            if (applicationState2.a.equals(str)) {
                return applicationState2;
            }
        }
        return applicationState;
    }

    public String getStringValue() {
        return this.a;
    }
}
