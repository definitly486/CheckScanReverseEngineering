package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsProperties$ContentDescription$1 extends gh4 implements bm3<List<? extends String>, List<? extends String>, List<? extends String>> {
    public static final SemanticsProperties$ContentDescription$1 INSTANCE = new SemanticsProperties$ContentDescription$1();

    public SemanticsProperties$ContentDescription$1() {
        super(2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final List<String> invoke2(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ List<? extends String> invoke(List<? extends String> list, List<? extends String> list2) {
        return invoke2((List<String>) list, (List<String>) list2);
    }
}
