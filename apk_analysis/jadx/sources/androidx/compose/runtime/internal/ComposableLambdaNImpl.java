package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaNImpl;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.l68;
import defpackage.om3;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableLambdaNImpl implements ComposableLambdaN {
    public static final int $stable = 0;
    private Object _block;
    private final int arity;
    private final int key;
    private RecomposeScope scope;
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    public ComposableLambdaNImpl(int i, boolean z, int i2) {
        this.key = i;
        this.tracked = z;
        this.arity = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(Object[] objArr, int i, ComposableLambdaNImpl composableLambdaNImpl, Composer composer, int i2) {
        Object[] array = yr.a0(objArr, kx6.n(0, i)).toArray(new Object[0]);
        Object obj = objArr[i + 1];
        obj.getClass();
        int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(((Integer) obj).intValue());
        int length = (objArr.length - i) - 2;
        Object[] objArr2 = new Object[length];
        for (int i3 = 0; i3 < length; i3++) {
            Object obj2 = objArr[i + 2 + i3];
            obj2.getClass();
            objArr2[i3] = Integer.valueOf(RecomposeScopeImplKt.updateChangedFlags(((Integer) obj2).intValue()));
        }
        l68 l68Var = new l68(4);
        l68Var.b(array);
        l68Var.a(composer);
        l68Var.a(Integer.valueOf(iUpdateChangedFlags | 1));
        l68Var.b(objArr2);
        ArrayList<Object> arrayList = l68Var.a;
        composableLambdaNImpl.invoke(arrayList.toArray(new Object[arrayList.size()]));
        return j59.a;
    }

    private final int realParamCount(int i) {
        int i2 = i - 2;
        for (int i3 = 1; i3 * 10 < i2; i3++) {
            i2--;
        }
        return i2;
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

    @Override // androidx.compose.runtime.internal.ComposableLambdaN, defpackage.nm3
    public int getArity() {
        return this.arity;
    }

    public final int getKey() {
        return this.key;
    }

    @Override // androidx.compose.runtime.internal.ComposableLambdaN, defpackage.om3
    public Object invoke(final Object... objArr) {
        final int iRealParamCount = realParamCount(objArr.length);
        Object obj = objArr[iRealParamCount];
        obj.getClass();
        Object[] array = yr.a0(objArr, kx6.n(0, objArr.length - 1)).toArray(new Object[0]);
        Object obj2 = objArr[objArr.length - 1];
        obj2.getClass();
        int iIntValue = ((Integer) obj2).intValue();
        Composer composerStartRestartGroup = ((Composer) obj).startRestartGroup(this.key);
        trackRead(composerStartRestartGroup);
        int iDifferentBits = iIntValue | (composerStartRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(iRealParamCount) : ComposableLambdaKt.sameBits(iRealParamCount));
        Object obj3 = this._block;
        obj3.getClass();
        l68 l68Var = new l68(2);
        l68Var.b(array);
        l68Var.a(Integer.valueOf(iDifferentBits));
        ArrayList<Object> arrayList = l68Var.a;
        Object objInvoke = ((om3) obj3).invoke(arrayList.toArray(new Object[arrayList.size()]));
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ct1
                @Override // defpackage.bm3
                public final Object invoke(Object obj4, Object obj5) {
                    int iIntValue2 = ((Integer) obj5).intValue();
                    return ComposableLambdaNImpl.invoke$lambda$0(objArr, iRealParamCount, this, (Composer) obj4, iIntValue2);
                }
            });
        }
        return objInvoke;
    }

    public final void update(Object obj) {
        if (aa4.e(obj, this._block)) {
            return;
        }
        boolean z = this._block == null;
        obj.getClass();
        this._block = (om3) obj;
        if (z) {
            return;
        }
        trackWrite();
    }
}
