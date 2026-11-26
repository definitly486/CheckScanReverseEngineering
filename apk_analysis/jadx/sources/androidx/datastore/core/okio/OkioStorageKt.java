package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.InterProcessCoordinatorKt;
import defpackage.j46;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioStorageKt {
    public static final InterProcessCoordinator createSingleProcessCoordinator(j46 j46Var) {
        j46Var.getClass();
        return InterProcessCoordinatorKt.createSingleProcessCoordinator(j46.a.a(j46Var.b.x(), true).b.x());
    }
}
