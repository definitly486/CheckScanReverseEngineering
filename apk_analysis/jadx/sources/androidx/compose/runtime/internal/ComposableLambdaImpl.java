package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gm3;
import defpackage.hm3;
import defpackage.im3;
import defpackage.j59;
import defpackage.jm3;
import defpackage.k8;
import defpackage.km3;
import defpackage.ml3;
import defpackage.ol3;
import defpackage.ql3;
import defpackage.rl3;
import defpackage.sl3;
import defpackage.tl3;
import defpackage.ul3;
import defpackage.v39;
import defpackage.vl3;
import defpackage.wl3;
import defpackage.yl3;
import defpackage.zl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableLambdaImpl implements ComposableLambda {
    public static final int $stable = 0;
    private Object _block;
    private final int key;
    private RecomposeScope scope;
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    public ComposableLambdaImpl(int i, boolean z, Object obj) {
        this.key = i;
        this.tracked = z;
        this._block = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(ComposableLambdaImpl composableLambdaImpl, Object obj, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$10(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$11(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$13(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$14(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$15(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$16(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$17(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, int i, int i2, Composer composer, int i3) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1, RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$2(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$3(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$4(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$5(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$6(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$7(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$8(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composer, RecomposeScopeImplKt.updateChangedFlags(i) | 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$9(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, int i, Composer composer, int i2) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composer, i | 1, i);
        return j59.a;
    }

    private final void trackRead(Composer composer) {
        RecomposeScope recomposeScope;
        if (!this.tracked || (recomposeScope = composer.getRecomposeScope()) == null) {
            return;
        }
        composer.recordUsed(recomposeScope);
        if (ComposableLambdaKt.replacableWith(this.scope, recomposeScope)) {
            this.scope = recomposeScope;
            return;
        }
        List<RecomposeScope> list = this.scopes;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.scopes = arrayList;
            arrayList.add(recomposeScope);
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (ComposableLambdaKt.replacableWith(list.get(i), recomposeScope)) {
                list.set(i, recomposeScope);
                return;
            }
        }
        list.add(recomposeScope);
    }

    private final void trackWrite() {
        if (this.tracked) {
            RecomposeScope recomposeScope = this.scope;
            if (recomposeScope != null) {
                recomposeScope.invalidate();
                this.scope = null;
            }
            List<RecomposeScope> list = this.scopes;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    list.get(i).invalidate();
                }
                list.clear();
            }
        }
    }

    public final int getKey() {
        return this.key;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, final Object obj14, final Object obj15, final Object obj16, final Object obj17, final Object obj18, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(18) : ComposableLambdaKt.sameBits(18);
        Object obj19 = this._block;
        obj19.getClass();
        v39.c(21, obj19);
        Object objInvoke = ((zl3) obj19).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ys1
                @Override // defpackage.bm3
                public final Object invoke(Object obj20, Object obj21) {
                    int iIntValue = ((Integer) obj21).intValue();
                    return ComposableLambdaImpl.invoke$lambda$17(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, i, i2, (Composer) obj20, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public final void update(Object obj) {
        if (aa4.e(this._block, obj)) {
            return;
        }
        boolean z = this._block == null;
        this._block = obj;
        if (z) {
            return;
        }
        trackWrite();
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 extends k8 implements bm3<Composer, Integer, j59> {
        public AnonymousClass1(Object obj) {
            super(2, obj, ComposableLambdaImpl.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            ((ComposableLambdaImpl) this.receiver).invoke(composer, i);
        }
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Composer composer, Integer num) {
        return invoke(obj, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.fm3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Composer composer, Integer num) {
        return invoke(obj, obj2, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.gm3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.hm3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.im3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.jm3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.km3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.ml3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.ol3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.ql3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.rl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.sl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.tl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.ul3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.vl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.wl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.yl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.zl3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composer, num.intValue(), num2.intValue());
    }

    public Object invoke(Composer composer, int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = i | (composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(0) : ComposableLambdaKt.sameBits(0));
        Object obj = this._block;
        obj.getClass();
        v39.c(2, obj);
        Object objInvoke = ((bm3) obj).invoke(composerStartRestartGroup, Integer.valueOf(iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(this));
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(1) : ComposableLambdaKt.sameBits(1);
        Object obj2 = this._block;
        obj2.getClass();
        v39.c(3, obj2);
        Object objInvoke = ((dm3) obj2).invoke(obj, composerStartRestartGroup, Integer.valueOf(iDifferentBits | i));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: at1
                @Override // defpackage.bm3
                public final Object invoke(Object obj3, Object obj4) {
                    int iIntValue = ((Integer) obj4).intValue();
                    return ComposableLambdaImpl.invoke$lambda$0(this.b, obj, i, (Composer) obj3, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(2) : ComposableLambdaKt.sameBits(2);
        Object obj3 = this._block;
        obj3.getClass();
        v39.c(4, obj3);
        Object objInvoke = ((fm3) obj3).invoke(obj, obj2, composerStartRestartGroup, Integer.valueOf(iDifferentBits | i));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ws1
                @Override // defpackage.bm3
                public final Object invoke(Object obj4, Object obj5) {
                    int iIntValue = ((Integer) obj5).intValue();
                    return ComposableLambdaImpl.invoke$lambda$1(this.b, obj, obj2, i, (Composer) obj4, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(3) : ComposableLambdaKt.sameBits(3);
        Object obj4 = this._block;
        obj4.getClass();
        v39.c(5, obj4);
        Object objInvoke = ((gm3) obj4).invoke(obj, obj2, obj3, composerStartRestartGroup, Integer.valueOf(iDifferentBits | i));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xs1
                @Override // defpackage.bm3
                public final Object invoke(Object obj5, Object obj6) {
                    int iIntValue = ((Integer) obj6).intValue();
                    return ComposableLambdaImpl.invoke$lambda$2(this.b, obj, obj2, obj3, i, (Composer) obj5, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(4) : ComposableLambdaKt.sameBits(4);
        Object obj5 = this._block;
        obj5.getClass();
        v39.c(6, obj5);
        Object objInvoke = ((hm3) obj5).invoke(obj, obj2, obj3, obj4, composerStartRestartGroup, Integer.valueOf(iDifferentBits | i));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ps1
                @Override // defpackage.bm3
                public final Object invoke(Object obj6, Object obj7) {
                    int iIntValue = ((Integer) obj7).intValue();
                    return ComposableLambdaImpl.invoke$lambda$3(this.b, obj, obj2, obj3, obj4, i, (Composer) obj6, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(5) : ComposableLambdaKt.sameBits(5);
        Object obj6 = this._block;
        obj6.getClass();
        v39.c(7, obj6);
        Object objInvoke = ((im3) obj6).invoke(obj, obj2, obj3, obj4, obj5, composerStartRestartGroup, Integer.valueOf(i | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bt1
                @Override // defpackage.bm3
                public final Object invoke(Object obj7, Object obj8) {
                    int iIntValue = ((Integer) obj8).intValue();
                    return ComposableLambdaImpl.invoke$lambda$4(this.b, obj, obj2, obj3, obj4, obj5, i, (Composer) obj7, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(6) : ComposableLambdaKt.sameBits(6);
        Object obj7 = this._block;
        obj7.getClass();
        v39.c(8, obj7);
        Object objInvoke = ((jm3) obj7).invoke(obj, obj2, obj3, obj4, obj5, obj6, composerStartRestartGroup, Integer.valueOf(i | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ss1
                @Override // defpackage.bm3
                public final Object invoke(Object obj8, Object obj9) {
                    int iIntValue = ((Integer) obj9).intValue();
                    return ComposableLambdaImpl.invoke$lambda$5(this.b, obj, obj2, obj3, obj4, obj5, obj6, i, (Composer) obj8, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(7) : ComposableLambdaKt.sameBits(7);
        Object obj8 = this._block;
        obj8.getClass();
        v39.c(9, obj8);
        Object objInvoke = ((km3) obj8).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, composerStartRestartGroup, Integer.valueOf(i | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qs1
                @Override // defpackage.bm3
                public final Object invoke(Object obj9, Object obj10) {
                    int iIntValue = ((Integer) obj10).intValue();
                    return ComposableLambdaImpl.invoke$lambda$6(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, i, (Composer) obj9, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(8) : ComposableLambdaKt.sameBits(8);
        Object obj9 = this._block;
        obj9.getClass();
        v39.c(10, obj9);
        Object objInvoke = ((ml3) obj9).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composerStartRestartGroup, Integer.valueOf(i | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: us1
                @Override // defpackage.bm3
                public final Object invoke(Object obj10, Object obj11) {
                    int iIntValue = ((Integer) obj11).intValue();
                    return ComposableLambdaImpl.invoke$lambda$7(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, i, (Composer) obj10, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(9) : ComposableLambdaKt.sameBits(9);
        Object obj10 = this._block;
        obj10.getClass();
        v39.c(11, obj10);
        Object objInvoke = ((ol3) obj10).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composerStartRestartGroup, Integer.valueOf(i | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ms1
                @Override // defpackage.bm3
                public final Object invoke(Object obj11, Object obj12) {
                    int iIntValue = ((Integer) obj12).intValue();
                    return ComposableLambdaImpl.invoke$lambda$8(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, i, (Composer) obj11, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, Composer composer, final int i, int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(10) : ComposableLambdaKt.sameBits(10);
        Object obj11 = this._block;
        obj11.getClass();
        v39.c(13, obj11);
        Object objInvoke = ((ql3) obj11).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ns1
                @Override // defpackage.bm3
                public final Object invoke(Object obj12, Object obj13) {
                    int iIntValue = ((Integer) obj13).intValue();
                    return ComposableLambdaImpl.invoke$lambda$9(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, i, (Composer) obj12, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(11) : ComposableLambdaKt.sameBits(11);
        Object obj12 = this._block;
        obj12.getClass();
        v39.c(14, obj12);
        Object objInvoke = ((rl3) obj12).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return objInvoke;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zs1
            @Override // defpackage.bm3
            public final Object invoke(Object obj13, Object obj14) {
                int iIntValue = ((Integer) obj14).intValue();
                return ComposableLambdaImpl.invoke$lambda$10(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, i, i2, (Composer) obj13, iIntValue);
            }
        });
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(12) : ComposableLambdaKt.sameBits(12);
        Object obj13 = this._block;
        obj13.getClass();
        v39.c(15, obj13);
        Object objInvoke = ((sl3) obj13).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ts1
                @Override // defpackage.bm3
                public final Object invoke(Object obj14, Object obj15) {
                    int iIntValue = ((Integer) obj15).intValue();
                    return ComposableLambdaImpl.invoke$lambda$11(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, i, i2, (Composer) obj14, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(13) : ComposableLambdaKt.sameBits(13);
        Object obj14 = this._block;
        obj14.getClass();
        v39.c(16, obj14);
        Object objInvoke = ((tl3) obj14).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ks1
                @Override // defpackage.bm3
                public final Object invoke(Object obj15, Object obj16) {
                    int iIntValue = ((Integer) obj16).intValue();
                    return ComposableLambdaImpl.invoke$lambda$12(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, i, i2, (Composer) obj15, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, final Object obj14, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(14) : ComposableLambdaKt.sameBits(14);
        Object obj15 = this._block;
        obj15.getClass();
        v39.c(17, obj15);
        Object objInvoke = ((ul3) obj15).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ls1
                @Override // defpackage.bm3
                public final Object invoke(Object obj16, Object obj17) {
                    int iIntValue = ((Integer) obj17).intValue();
                    return ComposableLambdaImpl.invoke$lambda$13(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, i, i2, (Composer) obj16, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, final Object obj14, final Object obj15, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(15) : ComposableLambdaKt.sameBits(15);
        Object obj16 = this._block;
        obj16.getClass();
        v39.c(18, obj16);
        Object objInvoke = ((vl3) obj16).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: vs1
                @Override // defpackage.bm3
                public final Object invoke(Object obj17, Object obj18) {
                    int iIntValue = ((Integer) obj18).intValue();
                    return ComposableLambdaImpl.invoke$lambda$14(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, i, i2, (Composer) obj17, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, final Object obj14, final Object obj15, final Object obj16, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(16) : ComposableLambdaKt.sameBits(16);
        Object obj17 = this._block;
        obj17.getClass();
        v39.c(19, obj17);
        Object objInvoke = ((wl3) obj17).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: os1
                @Override // defpackage.bm3
                public final Object invoke(Object obj18, Object obj19) {
                    int iIntValue = ((Integer) obj19).intValue();
                    return ComposableLambdaImpl.invoke$lambda$15(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, i, i2, (Composer) obj18, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    public Object invoke(final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5, final Object obj6, final Object obj7, final Object obj8, final Object obj9, final Object obj10, final Object obj11, final Object obj12, final Object obj13, final Object obj14, final Object obj15, final Object obj16, final Object obj17, Composer composer, final int i, final int i2) {
        Composer composerStartRestartGroup = composer.startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(17) : ComposableLambdaKt.sameBits(17);
        Object obj18 = this._block;
        obj18.getClass();
        v39.c(20, obj18);
        Object objInvoke = ((yl3) obj18).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composerStartRestartGroup, Integer.valueOf(i), Integer.valueOf(i2 | iDifferentBits));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rs1
                @Override // defpackage.bm3
                public final Object invoke(Object obj19, Object obj20) {
                    int iIntValue = ((Integer) obj20).intValue();
                    return ComposableLambdaImpl.invoke$lambda$16(this.b, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, i, i2, (Composer) obj19, iIntValue);
                }
            });
        }
        return objInvoke;
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Composer composer, Integer num) {
        return invoke(composer, num.intValue());
    }
}
