package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.ox2;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements PermissionStrategy {
    public Set a = ox2.b;

    public final synchronized void a(Set<String> set) {
        this.a = set;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final synchronized boolean forbidUsePermission(String str) {
        return !this.a.contains(str);
    }
}
