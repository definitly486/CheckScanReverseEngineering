package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.kx2;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsActions$CustomActions$1 extends gh4 implements bm3<List<? extends CustomAccessibilityAction>, List<? extends CustomAccessibilityAction>, List<? extends CustomAccessibilityAction>> {
    public static final SemanticsActions$CustomActions$1 INSTANCE = new SemanticsActions$CustomActions$1();

    public SemanticsActions$CustomActions$1() {
        super(2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final List<CustomAccessibilityAction> invoke2(List<CustomAccessibilityAction> list, List<CustomAccessibilityAction> list2) {
        if (list == null) {
            list = kx2.b;
        }
        return qn1.h0(list2, list);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ List<? extends CustomAccessibilityAction> invoke(List<? extends CustomAccessibilityAction> list, List<? extends CustomAccessibilityAction> list2) {
        return invoke2((List<CustomAccessibilityAction>) list, (List<CustomAccessibilityAction>) list2);
    }
}
