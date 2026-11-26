package androidx.paging;

import androidx.paging.internal.SynchronizedLock;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.eg;
import defpackage.fg;
import defpackage.hd3;
import defpackage.j59;
import defpackage.vg5;

/* JADX INFO: loaded from: classes3.dex */
public final class HintHandler {
    private final State state = new State();

    public final class HintFlow {
        private final vg5<ViewportHint> _flow = bt7.b(1, 0, cu0.DROP_OLDEST, 2);
        private ViewportHint value;

        public HintFlow() {
        }

        public final hd3<ViewportHint> getFlow() {
            return this._flow;
        }

        public final ViewportHint getValue() {
            return this.value;
        }

        public final void setValue(ViewportHint viewportHint) {
            this.value = viewportHint;
            if (viewportHint != null) {
                this._flow.e(viewportHint);
            }
        }
    }

    public final class State {
        private final HintFlow append;
        private ViewportHint.Access lastAccessHint;
        private final SynchronizedLock lock = new SynchronizedLock();
        private final HintFlow prepend;

        public State() {
            this.prepend = HintHandler.this.new HintFlow();
            this.append = HintHandler.this.new HintFlow();
        }

        public final hd3<ViewportHint> getAppendFlow() {
            return this.append.getFlow();
        }

        public final ViewportHint.Access getLastAccessHint() {
            return this.lastAccessHint;
        }

        public final hd3<ViewportHint> getPrependFlow() {
            return this.prepend.getFlow();
        }

        public final void modify(ViewportHint.Access access, bm3<? super HintFlow, ? super HintFlow, j59> bm3Var) {
            bm3Var.getClass();
            synchronized (this.lock) {
                if (access != null) {
                    try {
                        this.lastAccessHint = access;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                bm3Var.invoke(this.prepend, this.append);
                j59 j59Var = j59.a;
            }
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 forceSetHint$lambda$1(LoadType loadType, ViewportHint viewportHint, HintFlow hintFlow, HintFlow hintFlow2) {
        hintFlow.getClass();
        hintFlow2.getClass();
        if (loadType == LoadType.PREPEND) {
            hintFlow.setValue(viewportHint);
        } else {
            hintFlow2.setValue(viewportHint);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 processHint$lambda$0(ViewportHint viewportHint, HintFlow hintFlow, HintFlow hintFlow2) {
        hintFlow.getClass();
        hintFlow2.getClass();
        if (HintHandlerKt.shouldPrioritizeOver(viewportHint, hintFlow.getValue(), LoadType.PREPEND)) {
            hintFlow.setValue(viewportHint);
        }
        if (HintHandlerKt.shouldPrioritizeOver(viewportHint, hintFlow2.getValue(), LoadType.APPEND)) {
            hintFlow2.setValue(viewportHint);
        }
        return j59.a;
    }

    public final void forceSetHint(final LoadType loadType, final ViewportHint viewportHint) {
        loadType.getClass();
        viewportHint.getClass();
        if (loadType == LoadType.PREPEND || loadType == LoadType.APPEND) {
            this.state.modify(null, new bm3() { // from class: androidx.paging.d
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return HintHandler.forceSetHint$lambda$1(loadType, viewportHint, (HintHandler.HintFlow) obj, (HintHandler.HintFlow) obj2);
                }
            });
        } else {
            eg.d(loadType, "invalid load type for reset: ");
        }
    }

    public final ViewportHint.Access getLastAccessHint() {
        return this.state.getLastAccessHint();
    }

    public final hd3<ViewportHint> hintFor(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return this.state.getPrependFlow();
        }
        if (i == 2) {
            return this.state.getAppendFlow();
        }
        fg.c("invalid load type for hints");
        return null;
    }

    public final void processHint(final ViewportHint viewportHint) {
        viewportHint.getClass();
        this.state.modify(viewportHint instanceof ViewportHint.Access ? (ViewportHint.Access) viewportHint : null, new bm3() { // from class: androidx.paging.c
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return HintHandler.processHint$lambda$0(viewportHint, (HintHandler.HintFlow) obj, (HintHandler.HintFlow) obj2);
            }
        });
    }
}
