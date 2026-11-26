package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsProperties$IsDialog$1 extends gh4 implements bm3<j59, j59, j59> {
    public static final SemanticsProperties$IsDialog$1 INSTANCE = new SemanticsProperties$IsDialog$1();

    public SemanticsProperties$IsDialog$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public final j59 invoke(j59 j59Var, j59 j59Var2) {
        throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
    }
}
