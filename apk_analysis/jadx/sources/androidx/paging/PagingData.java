package androidx.paging;

import androidx.paging.PagingData;
import defpackage.hd3;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nc1;
import defpackage.rd3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingData<T> {
    private final ll3<PageEvent.Insert<T>> cachedPageEvent;
    private final hd3<PageEvent<T>> flow;
    private final HintReceiver hintReceiver;
    private final UiReceiver uiReceiver;
    public static final Companion Companion = new Companion(null);
    private static final UiReceiver NOOP_UI_RECEIVER = new UiReceiver() { // from class: androidx.paging.PagingData$Companion$NOOP_UI_RECEIVER$1
        @Override // androidx.paging.UiReceiver
        public void refresh() {
        }

        @Override // androidx.paging.UiReceiver
        public void retry() {
        }
    };
    private static final HintReceiver NOOP_HINT_RECEIVER = new HintReceiver() { // from class: androidx.paging.PagingData$Companion$NOOP_HINT_RECEIVER$1
        @Override // androidx.paging.HintReceiver
        public void processHint(ViewportHint viewportHint) {
            viewportHint.getClass();
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public PagingData(hd3<? extends PageEvent<T>> hd3Var, UiReceiver uiReceiver, HintReceiver hintReceiver, ll3<PageEvent.Insert<T>> ll3Var) {
        hd3Var.getClass();
        uiReceiver.getClass();
        hintReceiver.getClass();
        ll3Var.getClass();
        this.flow = hd3Var;
        this.uiReceiver = uiReceiver;
        this.hintReceiver = hintReceiver;
        this.cachedPageEvent = ll3Var;
    }

    public static final <T> PagingData<T> empty() {
        return Companion.empty();
    }

    public static final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2, int i, int i2) {
        return Companion.from(list, loadStates, loadStates2, i, i2);
    }

    public final PageEvent.Insert<T> cachedEvent$paging_common() {
        return this.cachedPageEvent.invoke();
    }

    public final hd3<PageEvent<T>> getFlow$paging_common() {
        return this.flow;
    }

    public final HintReceiver getHintReceiver$paging_common() {
        return this.hintReceiver;
    }

    public final UiReceiver getUiReceiver$paging_common() {
        return this.uiReceiver;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ PagingData empty$default(Companion companion, LoadStates loadStates, LoadStates loadStates2, int i, Object obj) {
            if ((i & 2) != 0) {
                loadStates2 = null;
            }
            return companion.empty(loadStates, loadStates2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PageEvent.Insert empty$lambda$0() {
            return PageEvent.Insert.Companion.Refresh(u96.h(new TransformablePage(0, kx2.b)), 0, 0, LoadStates.Companion.getIDLE(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PageEvent.Insert empty$lambda$1(LoadStates loadStates, LoadStates loadStates2) {
            return PageEvent.Insert.Companion.Refresh(u96.h(new TransformablePage(0, kx2.b)), 0, 0, loadStates, loadStates2);
        }

        public static /* synthetic */ PagingData from$default(Companion companion, List list, LoadStates loadStates, LoadStates loadStates2, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                loadStates2 = null;
            }
            return companion.from(list, loadStates, loadStates2, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PageEvent.Insert from$lambda$0(List list, int i, int i2) {
            return PageEvent.Insert.Companion.Refresh(u96.h(new TransformablePage(0, list)), i, i2, LoadStates.Companion.getIDLE(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PageEvent.Insert from$lambda$1(List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2) {
            return PageEvent.Insert.Companion.Refresh(u96.h(new TransformablePage(0, list)), i, i2, loadStates, loadStates2);
        }

        public final <T> PagingData<T> empty(final LoadStates loadStates, final LoadStates loadStates2) {
            loadStates.getClass();
            return new PagingData<>(new rd3(new PageEvent.StaticList(kx2.b, loadStates, loadStates2, 0, 0, 24, null)), getNOOP_UI_RECEIVER$paging_common(), getNOOP_HINT_RECEIVER$paging_common(), new ll3() { // from class: w26
                @Override // defpackage.ll3
                public final Object invoke() {
                    return PagingData.Companion.empty$lambda$1(loadStates, loadStates2);
                }
            });
        }

        public final <T> PagingData<T> from(final List<? extends T> list, final LoadStates loadStates, final LoadStates loadStates2, final int i, final int i2) {
            list.getClass();
            loadStates.getClass();
            return new PagingData<>(new rd3(new PageEvent.StaticList(list, loadStates, loadStates2, i, i2)), getNOOP_UI_RECEIVER$paging_common(), getNOOP_HINT_RECEIVER$paging_common(), new ll3() { // from class: u26
                @Override // defpackage.ll3
                public final Object invoke() {
                    return PagingData.Companion.from$lambda$1(list, i, i2, loadStates, loadStates2);
                }
            });
        }

        public final HintReceiver getNOOP_HINT_RECEIVER$paging_common() {
            return PagingData.NOOP_HINT_RECEIVER;
        }

        public final UiReceiver getNOOP_UI_RECEIVER$paging_common() {
            return PagingData.NOOP_UI_RECEIVER;
        }

        private Companion() {
        }

        public static /* synthetic */ PagingData from$default(Companion companion, List list, int i, int i2, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = 0;
            }
            return companion.from(list, i, i2);
        }

        public final <T> PagingData<T> empty() {
            return new PagingData<>(new rd3(new PageEvent.StaticList(kx2.b, null, null, 0, 0, 24, null)), getNOOP_UI_RECEIVER$paging_common(), getNOOP_HINT_RECEIVER$paging_common(), new nc1(1));
        }

        public final <T> PagingData<T> from(List<? extends T> list, int i) {
            list.getClass();
            return from$default(this, list, i, 0, 4, null);
        }

        public final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates) {
            list.getClass();
            loadStates.getClass();
            return from$default(this, list, loadStates, null, 0, 0, 28, null);
        }

        public final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2) {
            list.getClass();
            loadStates.getClass();
            return from$default(this, list, loadStates, loadStates2, 0, 0, 24, null);
        }

        public final <T> PagingData<T> empty(LoadStates loadStates) {
            loadStates.getClass();
            return empty$default(this, loadStates, null, 2, null);
        }

        public final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2, int i) {
            list.getClass();
            loadStates.getClass();
            return from$default(this, list, loadStates, loadStates2, i, 0, 16, null);
        }

        public final <T> PagingData<T> from(final List<? extends T> list, final int i, final int i2) {
            list.getClass();
            return new PagingData<>(new rd3(new PageEvent.StaticList(list, null, null, i, i2)), getNOOP_UI_RECEIVER$paging_common(), getNOOP_HINT_RECEIVER$paging_common(), new ll3() { // from class: v26
                @Override // defpackage.ll3
                public final Object invoke() {
                    return PagingData.Companion.from$lambda$0(list, i, i2);
                }
            });
        }

        public final <T> PagingData<T> from(List<? extends T> list) {
            list.getClass();
            return from$default(this, list, 0, 0, 6, null);
        }
    }

    public static final <T> PagingData<T> empty(LoadStates loadStates) {
        return Companion.empty(loadStates);
    }

    public static final <T> PagingData<T> empty(LoadStates loadStates, LoadStates loadStates2) {
        return Companion.empty(loadStates, loadStates2);
    }

    public static final <T> PagingData<T> from(List<? extends T> list, int i) {
        return Companion.from(list, i);
    }

    public static final <T> PagingData<T> from(List<? extends T> list, int i, int i2) {
        return Companion.from(list, i, i2);
    }

    public static final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates) {
        return Companion.from(list, loadStates);
    }

    public static final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2) {
        return Companion.from(list, loadStates, loadStates2);
    }

    public static final <T> PagingData<T> from(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2, int i) {
        return Companion.from(list, loadStates, loadStates2, i);
    }

    public static final <T> PagingData<T> from(List<? extends T> list) {
        return Companion.from(list);
    }

    public /* synthetic */ PagingData(hd3 hd3Var, UiReceiver uiReceiver, HintReceiver hintReceiver, ll3 ll3Var, int i, jh2 jh2Var) {
        this(hd3Var, uiReceiver, hintReceiver, (i & 8) != 0 ? new ll3() { // from class: androidx.paging.PagingData.1
            @Override // defpackage.ll3
            public final Void invoke() {
                return null;
            }
        } : ll3Var);
    }
}
