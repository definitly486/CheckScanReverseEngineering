package androidx.compose.material3.internal;

import defpackage.aa4;
import defpackage.cm3;
import defpackage.ll3;
import defpackage.mm3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 implements FloatProducer, mm3 {
    private final /* synthetic */ ll3 function;

    public TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(ll3 ll3Var) {
        this.function = ll3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof FloatProducer) && (obj instanceof mm3)) {
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

    @Override // androidx.compose.material3.internal.FloatProducer
    public final /* synthetic */ float invoke() {
        return ((Number) this.function.invoke()).floatValue();
    }
}
