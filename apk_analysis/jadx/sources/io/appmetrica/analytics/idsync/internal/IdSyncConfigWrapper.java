package io.appmetrica.analytics.idsync.internal;

import defpackage.jh2;
import io.appmetrica.analytics.idsync.impl.C0765c;

/* JADX INFO: loaded from: classes5.dex */
public final class IdSyncConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final C0765c a;

    public IdSyncConfigWrapper(C0765c c0765c) {
        this.a = c0765c;
    }

    public final C0765c getConfig$id_sync_release() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final IdSyncConfigWrapper toWrapper$id_sync_release(C0765c c0765c) {
            return new IdSyncConfigWrapper(c0765c);
        }

        private Companion() {
        }
    }
}
