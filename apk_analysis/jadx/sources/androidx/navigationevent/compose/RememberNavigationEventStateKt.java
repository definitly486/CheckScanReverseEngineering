package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.navigationevent.NavigationEventInfo;
import defpackage.j59;
import defpackage.jh0;
import defpackage.kx2;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RememberNavigationEventStateKt {
    public static final <T extends NavigationEventInfo> NavigationEventState<T> rememberNavigationEventState(T t, List<? extends T> list, List<? extends T> list2, Composer composer, int i, int i2) {
        int i3 = i2 & 2;
        kx2 kx2Var = kx2.b;
        List<? extends T> list3 = i3 != 0 ? kx2Var : list;
        List<? extends T> list4 = (i2 & 4) != 0 ? kx2Var : list2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(116613162, i, -1, "androidx.navigationevent.compose.rememberNavigationEventState (RememberNavigationEventState.kt:44)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = new NavigationEventState(t, list3, list4);
            composer.updateRememberedValue(objRememberedValue);
        }
        NavigationEventState<T> navigationEventState = (NavigationEventState) objRememberedValue;
        boolean zChangedInstance = ((((i & 14) ^ 6) > 4 && composer.changedInstance(t)) || (i & 6) == 4) | composer.changedInstance(list3) | composer.changedInstance(list4);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
            jh0 jh0Var = new jh0(navigationEventState, t, list3, list4, 1);
            composer.updateRememberedValue(jh0Var);
            objRememberedValue2 = jh0Var;
        }
        EffectsKt.SideEffect((ll3) objRememberedValue2, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return navigationEventState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberNavigationEventState$lambda$2$lambda$1(NavigationEventState navigationEventState, NavigationEventInfo navigationEventInfo, List list, List list2) {
        navigationEventState.setCurrentInfo$navigationevent_compose(navigationEventInfo);
        navigationEventState.setBackInfo$navigationevent_compose(list);
        navigationEventState.setForwardInfo$navigationevent_compose(list2);
        return j59.a;
    }
}
