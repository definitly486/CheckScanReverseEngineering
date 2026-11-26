package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1129ng {
    public static /* synthetic */ String a(int i) {
        if (i == 1) {
            return "unknown";
        }
        if (i == 2) {
            return "gpl";
        }
        if (i == 3) {
            return "hms-content-provider";
        }
        if (i == 4) {
            return CoreConstants.Transport.RUSTORE;
        }
        throw null;
    }

    public static /* synthetic */ String b(int i) {
        if (i == 1) {
            return "UNKNOWN";
        }
        if (i == 2) {
            return "GP";
        }
        if (i != 3) {
            return i != 4 ? "null" : "RS";
        }
        return "HMS";
    }
}
