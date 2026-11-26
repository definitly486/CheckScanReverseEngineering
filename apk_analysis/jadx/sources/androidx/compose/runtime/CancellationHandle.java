package androidx.compose.runtime;

import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public interface CancellationHandle {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final CancellationHandle Empty = new qz0(1);

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void Empty$lambda$0() {
        }

        public final CancellationHandle getEmpty$runtime() {
            return Empty;
        }
    }

    void cancel();
}
