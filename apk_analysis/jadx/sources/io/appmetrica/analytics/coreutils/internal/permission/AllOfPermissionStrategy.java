package io.appmetrica.analytics.coreutils.internal.permission;

import android.content.Context;
import defpackage.yr;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AllOfPermissionStrategy extends MultiplePermissionBaseStrategy {
    public AllOfPermissionStrategy(PermissionExtractor permissionExtractor, String... strArr) {
        super(permissionExtractor, yr.h0(strArr));
    }

    @Override // io.appmetrica.analytics.coreutils.internal.permission.MultiplePermissionBaseStrategy
    public boolean hasNecessaryPermissions(Context context, PermissionExtractor permissionExtractor, List<String> list) {
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!permissionExtractor.hasPermission(context, (String) it.next())) {
                return false;
            }
        }
        return true;
    }
}
