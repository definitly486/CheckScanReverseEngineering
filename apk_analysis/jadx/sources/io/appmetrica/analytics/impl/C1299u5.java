package io.appmetrica.analytics.impl;

import defpackage.xp;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1299u5 implements PermissionStrategy {
    public final PermissionStrategy[] a;

    public C1299u5(PermissionStrategy... permissionStrategyArr) {
        this.a = permissionStrategyArr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final boolean forbidUsePermission(String str) {
        for (PermissionStrategy permissionStrategy : this.a) {
            if (permissionStrategy.forbidUsePermission(str)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return xp.e(new StringBuilder("CompositePermissionStrategy(strategies="), Arrays.toString(this.a), ')');
    }
}
