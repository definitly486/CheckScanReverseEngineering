package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsProperties$IsPopup$1 extends gh4 implements bm3<j59, j59, j59> {
    public static final SemanticsProperties$IsPopup$1 INSTANCE = new SemanticsProperties$IsPopup$1();

    public SemanticsProperties$IsPopup$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public final j59 invoke(j59 j59Var, j59 j59Var2) {
        throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
    }
}
