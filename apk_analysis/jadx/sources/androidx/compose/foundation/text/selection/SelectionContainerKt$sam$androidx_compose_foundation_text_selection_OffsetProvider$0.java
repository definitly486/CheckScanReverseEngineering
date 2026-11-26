package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import defpackage.aa4;
import defpackage.cm3;
import defpackage.ll3;
import defpackage.mm3;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 implements OffsetProvider, mm3 {
    private final /* synthetic */ ll3 function;

    public SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(ll3 ll3Var) {
        this.function = ll3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof OffsetProvider) && (obj instanceof mm3)) {
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

    @Override // androidx.compose.foundation.text.selection.OffsetProvider
    /* JADX INFO: renamed from: provide-F1C5BW0 */
    public final /* synthetic */ long mo2453provideF1C5BW0() {
        return ((Offset) this.function.invoke()).m5997unboximpl();
    }
}
