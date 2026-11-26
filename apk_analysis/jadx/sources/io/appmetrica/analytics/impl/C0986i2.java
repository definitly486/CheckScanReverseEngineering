package io.appmetrica.analytics.impl;

import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0986i2 {
    public final List a;
    public final M2 b;
    public final List c;

    public C0986i2(List list, M2 m2, List list2) {
        this.a = list;
        this.b = m2;
        this.c = list2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppPermissionsState{mPermissionStateList=");
        sb.append(this.a);
        sb.append(", mBackgroundRestrictionsState=");
        sb.append(this.b);
        sb.append(", mAvailableProviders=");
        return defpackage.qg.f(sb, this.c, '}');
    }
}
