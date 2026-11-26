package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import defpackage.aa4;
import defpackage.cm3;
import defpackage.ll3;
import defpackage.mm3;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarKt$sam$androidx_compose_ui_graphics_ColorProducer$0 implements ColorProducer, mm3 {
    private final /* synthetic */ ll3 function;

    public SearchBarKt$sam$androidx_compose_ui_graphics_ColorProducer$0(ll3 ll3Var) {
        this.function = ll3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ColorProducer) && (obj instanceof mm3)) {
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

    @Override // androidx.compose.ui.graphics.ColorProducer
    /* JADX INFO: renamed from: invoke-0d7_KjU */
    public final /* synthetic */ long mo3400invoke0d7_KjU() {
        return ((Color) this.function.invoke()).m6242unboximpl();
    }
}
