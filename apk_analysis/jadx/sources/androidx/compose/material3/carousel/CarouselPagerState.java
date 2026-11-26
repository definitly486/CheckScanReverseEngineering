package androidx.compose.material3.carousel;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.f80;
import defpackage.j51;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.pf;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselPagerState extends PagerState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<CarouselPagerState, ?> Saver = ListSaverKt.listSaver(new j51(0), new pf(1));
    private MutableState<ll3<Integer>> pageCountState;

    public CarouselPagerState(int i, float f, ll3<Integer> ll3Var) {
        super(i, f);
        this.pageCountState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ll3Var, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List Saver$lambda$0(SaverScope saverScope, CarouselPagerState carouselPagerState) {
        return u96.i(Integer.valueOf(carouselPagerState.getCurrentPage()), Float.valueOf(kx6.d(carouselPagerState.getCurrentPageOffsetFraction(), -0.5f, 0.5f)), carouselPagerState.pageCountState.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CarouselPagerState Saver$lambda$2(List list) {
        Object obj = list.get(0);
        obj.getClass();
        int iIntValue = ((Integer) obj).intValue();
        Object obj2 = list.get(1);
        obj2.getClass();
        return new CarouselPagerState(iIntValue, ((Float) obj2).floatValue(), new f80(list, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Saver$lambda$2$lambda$1(List list) {
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

        public final Saver<CarouselPagerState, ?> getSaver() {
            return CarouselPagerState.Saver;
        }

        private Companion() {
        }
    }
}
