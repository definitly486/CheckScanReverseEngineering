package androidx.compose.ui.input.pointer;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class RequestDisallowInterceptTouchEvent implements nl3<Boolean, j59> {
    public static final int $stable = 8;
    private PointerInteropFilter pointerInteropFilter;

    public final PointerInteropFilter getPointerInteropFilter$ui() {
        return this.pointerInteropFilter;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return j59.a;
    }

    public final void setPointerInteropFilter$ui(PointerInteropFilter pointerInteropFilter) {
        this.pointerInteropFilter = pointerInteropFilter;
    }

    public void invoke(boolean z) {
        PointerInteropFilter pointerInteropFilter = this.pointerInteropFilter;
        if (pointerInteropFilter != null) {
            pointerInteropFilter.setDisallowIntercept$ui(z);
        }
    }
}
