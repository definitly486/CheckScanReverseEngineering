package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.me0;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public class Q2 implements ExternalAttribution {
    public final N9 a;

    public Q2(N9 n9) {
        this.a = n9;
    }

    @Override // io.appmetrica.analytics.ExternalAttribution
    public final byte[] toBytes() {
        return MessageNano.toByteArray(this.a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExternalAttribution(type=`");
        sb.append(X9.a(this.a.a));
        sb.append("`value=`");
        return me0.d(sb, new String(this.a.b, ha1.b), "`)");
    }
}
