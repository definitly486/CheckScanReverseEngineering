package androidx.compose.ui.semantics;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.bm3;
import defpackage.gh4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsProperties$Text$1 extends gh4 implements bm3<List<? extends AnnotatedString>, List<? extends AnnotatedString>, List<? extends AnnotatedString>> {
    public static final SemanticsProperties$Text$1 INSTANCE = new SemanticsProperties$Text$1();

    public SemanticsProperties$Text$1() {
        super(2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final List<AnnotatedString> invoke2(List<AnnotatedString> list, List<AnnotatedString> list2) {
        if (list == null) {
            return list2;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ List<? extends AnnotatedString> invoke(List<? extends AnnotatedString> list, List<? extends AnnotatedString> list2) {
        return invoke2((List<AnnotatedString>) list, (List<AnnotatedString>) list2);
    }
}
