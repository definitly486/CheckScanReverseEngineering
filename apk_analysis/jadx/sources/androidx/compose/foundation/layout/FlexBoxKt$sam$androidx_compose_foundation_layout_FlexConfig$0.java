package androidx.compose.foundation.layout;

import defpackage.aa4;
import defpackage.cm3;
import defpackage.mm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FlexBoxKt$sam$androidx_compose_foundation_layout_FlexConfig$0 implements FlexConfig, mm3 {
    private final /* synthetic */ nl3 function;

    public FlexBoxKt$sam$androidx_compose_foundation_layout_FlexConfig$0(nl3 nl3Var) {
        this.function = nl3Var;
    }

    @Override // androidx.compose.foundation.layout.FlexConfig
    public final /* synthetic */ void configure(FlexConfigScope flexConfigScope) {
        this.function.invoke(flexConfigScope);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof FlexConfig) && (obj instanceof mm3)) {
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
}
