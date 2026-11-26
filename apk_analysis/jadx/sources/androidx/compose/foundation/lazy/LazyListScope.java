package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.co;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@LazyScopeMarker
public interface LazyListScope {
    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, Object obj2, dm3 dm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: item");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.item(obj, obj2, dm3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i, nl3 nl3Var, nl3 nl3Var2, fm3 fm3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: items");
            return;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        if ((i2 & 4) != 0) {
            nl3Var2 = new nl3() { // from class: androidx.compose.foundation.lazy.LazyListScope.items.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }

                public final Void invoke(int i3) {
                    return null;
                }
            };
        }
        lazyListScope.items(i, nl3Var, nl3Var2, fm3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static Object items$lambda$0(int i) {
        return null;
    }

    static /* synthetic */ void stickyHeader$default(LazyListScope lazyListScope, Object obj, Object obj2, dm3 dm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: stickyHeader");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.stickyHeader(obj, obj2, dm3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static j59 stickyHeader$lambda$0(dm3 dm3Var, LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & WebmConstants.MkvEbmlElement.TRACK_TYPE) != 130, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-764088514, i2, -1, "androidx.compose.foundation.lazy.LazyListScope.stickyHeader.<anonymous> (LazyDsl.kt:122)");
            }
            dm3Var.invoke(lazyItemScope, composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static j59 stickyHeader$lambda$1(fm3 fm3Var, LazyItemScope lazyItemScope, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changed(lazyItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1691919627, i, -1, "androidx.compose.foundation.lazy.LazyListScope.stickyHeader.<anonymous> (LazyDsl.kt:148)");
            }
            fm3Var.invoke(lazyItemScope, 0, composer, Integer.valueOf((i & 14) | 48));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    default void item(Object obj, Object obj2, dm3<? super LazyItemScope, ? super Composer, ? super Integer, j59> dm3Var) {
        throw new IllegalStateException("The method is not implemented");
    }

    @ul2
    /* synthetic */ default void items(int i, nl3 nl3Var, fm3 fm3Var) {
        items(i, nl3Var, new co(4), fm3Var);
    }

    @ul2
    /* synthetic */ default void stickyHeader(Object obj, Object obj2, final dm3 dm3Var) {
        stickyHeader(obj, obj2, (fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59>) ComposableLambdaKt.composableLambdaInstance(-764088514, true, new fm3() { // from class: ln4
            @Override // defpackage.fm3
            public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return LazyListScope.stickyHeader$lambda$0(dm3Var, (LazyItemScope) obj3, ((Integer) obj4).intValue(), (Composer) obj5, iIntValue);
            }
        }));
    }

    public static final class DefaultImpls {
        @Deprecated
        public static void item(LazyListScope lazyListScope, Object obj, Object obj2, dm3<? super LazyItemScope, ? super Composer, ? super Integer, j59> dm3Var) {
            LazyListScope.super.item(obj, obj2, dm3Var);
        }

        @Deprecated
        public static void items(LazyListScope lazyListScope, int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
            LazyListScope.super.items(i, nl3Var, nl3Var2, fm3Var);
        }

        @Deprecated
        public static void stickyHeader(LazyListScope lazyListScope, Object obj, Object obj2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
            LazyListScope.super.stickyHeader(obj, obj2, fm3Var);
        }
    }

    @ul2
    /* synthetic */ default void item(Object obj, dm3 dm3Var) {
        item(obj, null, dm3Var);
    }

    default void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        throw new IllegalStateException("The method is not implemented");
    }

    default void stickyHeader(Object obj, Object obj2, final fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        item(obj, obj2, ComposableLambdaKt.composableLambdaInstance(1691919627, true, new dm3() { // from class: mn4
            @Override // defpackage.dm3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj5).intValue();
                return LazyListScope.stickyHeader$lambda$1(fm3Var, (LazyItemScope) obj3, (Composer) obj4, iIntValue);
            }
        }));
    }

    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, dm3 dm3Var, int i, Object obj2) {
        if (obj2 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: item");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        lazyListScope.item(obj, dm3Var);
    }

    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i, nl3 nl3Var, fm3 fm3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: items");
            return;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        lazyListScope.items(i, nl3Var, fm3Var);
    }

    static /* synthetic */ void stickyHeader$default(LazyListScope lazyListScope, Object obj, Object obj2, fm3 fm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: stickyHeader");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.stickyHeader(obj, obj2, (fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59>) fm3Var);
    }
}
