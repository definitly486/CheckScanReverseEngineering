package androidx.navigation.fragment;

import androidx.lifecycle.Observer;
import defpackage.aa4;
import defpackage.cm3;
import defpackage.mm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentNavigator$sam$androidx_lifecycle_Observer$0 implements Observer, mm3 {
    private final /* synthetic */ nl3 function;

    public FragmentNavigator$sam$androidx_lifecycle_Observer$0(nl3 nl3Var) {
        nl3Var.getClass();
        this.function = nl3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.function.invoke(obj);
    }
}
