package androidx.paging;

import defpackage.e02;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RemoteMediator<Key, Value> {

    public enum InitializeAction {
        LAUNCH_INITIAL_REFRESH,
        SKIP_INITIAL_REFRESH;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<InitializeAction> getEntries() {
            return $ENTRIES;
        }
    }

    public static /* synthetic */ <Key, Value> Object initialize$suspendImpl(RemoteMediator<Key, Value> remoteMediator, e02<? super InitializeAction> e02Var) {
        return InitializeAction.LAUNCH_INITIAL_REFRESH;
    }

    public Object initialize(e02<? super InitializeAction> e02Var) {
        return initialize$suspendImpl(this, e02Var);
    }

    public abstract Object load(LoadType loadType, PagingState<Key, Value> pagingState, e02<? super MediatorResult> e02Var);

    public static abstract class MediatorResult {

        public static final class Error extends MediatorResult {
            private final Throwable throwable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(Throwable th) {
                super(null);
                th.getClass();
                this.throwable = th;
            }

            public final Throwable getThrowable() {
                return this.throwable;
            }
        }

        public static final class Success extends MediatorResult {
            private final boolean endOfPaginationReached;

            public Success(boolean z) {
                super(null);
                this.endOfPaginationReached = z;
            }

            public final boolean endOfPaginationReached() {
                return this.endOfPaginationReached;
            }
        }

        public /* synthetic */ MediatorResult(jh2 jh2Var) {
            this();
        }

        private MediatorResult() {
        }
    }
}
