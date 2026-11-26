package androidx.compose.foundation.pager;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class DefaultPagerState extends PagerState {
    public static final Companion Companion = new Companion(null);
    private static final Saver<DefaultPagerState, ?> Saver = ListSaverKt.listSaver(new a(), new b());
    private MutableState<ll3<Integer>> pageCountState;

    public DefaultPagerState(int i, float f, ll3<Integer> ll3Var) {
        super(i, f);
        this.pageCountState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ll3Var, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List Saver$lambda$0(SaverScope saverScope, DefaultPagerState defaultPagerState) {
        return u96.i(Integer.valueOf(defaultPagerState.getCurrentPage()), Float.valueOf(kx6.d(defaultPagerState.getCurrentPageOffsetFraction(), -0.5f, 0.5f)), Integer.valueOf(defaultPagerState.getPageCount()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DefaultPagerState Saver$lambda$1(final List list) {
        Object obj = list.get(0);
        obj.getClass();
        int iIntValue = ((Integer) obj).intValue();
        Object obj2 = list.get(1);
        obj2.getClass();
        return new DefaultPagerState(iIntValue, ((Float) obj2).floatValue(), new ll3() { // from class: androidx.compose.foundation.pager.c
            @Override // defpackage.ll3
            public final Object invoke() {
                return Integer.valueOf(DefaultPagerState.Saver$lambda$1$0(list));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Saver$lambda$1$0(List list) {
        Object obj = list.get(2);
        obj.getClass();
        return ((Integer) obj).intValue();
    }

    @Override // androidx.compose.foundation.pager.PagerState
    public int getPageCount() {
        return this.pageCountState.getValue().invoke().intValue();
    }

    public final MutableState<ll3<Integer>> getPageCountState() {
        return this.pageCountState;
    }

    public final void setPageCountState(MutableState<ll3<Integer>> mutableState) {
        this.pageCountState = mutableState;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<DefaultPagerState, ?> getSaver() {
            return DefaultPagerState.Saver;
        }

        private Companion() {
        }
    }
}
