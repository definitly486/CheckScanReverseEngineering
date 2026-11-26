package io.appmetrica.analytics.screenshot.impl;

import defpackage.sg;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1538i {
    public final boolean a;

    public C1538i(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1538i) && this.a == ((C1538i) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return sg.d(new StringBuilder("ClientSideApiCaptorConfig(enabled="), this.a, ')');
    }
}
