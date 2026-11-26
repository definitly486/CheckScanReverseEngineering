package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import defpackage.sg;

/* JADX INFO: loaded from: classes5.dex */
public final class j {
    public final boolean a;

    public j(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && this.a == ((j) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return sg.d(new StringBuilder("ClientApplovinConfig(enabled="), this.a, ')');
    }
}
