package io.appmetrica.analytics.billing.impl;

import defpackage.aa4;
import defpackage.sg;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.billing.impl.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0761a {
    public final List a;
    public final boolean b;

    public C0761a(List list, boolean z) {
        this.a = list;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0761a)) {
            return false;
        }
        C0761a c0761a = (C0761a) obj;
        return aa4.e(this.a, c0761a.a) && this.b == c0761a.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AutoInappCollectingInfo(billingInfos=");
        sb.append(this.a);
        sb.append(", firstInappCheckOccurred=");
        return sg.d(sb, this.b, ')');
    }
}
