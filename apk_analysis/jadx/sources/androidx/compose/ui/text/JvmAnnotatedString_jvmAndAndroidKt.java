package androidx.compose.ui.text;

import androidx.collection.IntIntMapKt;
import androidx.collection.MutableIntIntMap;
import defpackage.bt7;
import defpackage.dm3;
import defpackage.ie5;
import defpackage.j59;
import defpackage.jx2;
import defpackage.ly1;
import defpackage.r07;
import defpackage.s38;
import defpackage.u0;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public final class JvmAnnotatedString_jvmAndAndroidKt {
    private static final void collectRangeTransitions(List<? extends AnnotatedString.Range<?>> list, SortedSet<Integer> sortedSet) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range<?> range = list.get(i);
                sortedSet.add(Integer.valueOf(range.getStart()));
                sortedSet.add(Integer.valueOf(range.getEnd()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final AnnotatedString transform(AnnotatedString annotatedString, dm3<? super String, ? super Integer, ? super Integer, String> dm3Var) {
        ArrayList arrayList;
        Integer[] numArr = {0, Integer.valueOf(annotatedString.getText().length())};
        TreeSet treeSet = new TreeSet();
        yr.c0(numArr, treeSet);
        collectRangeTransitions(annotatedString.getAnnotations$ui_text(), treeSet);
        r07 r07Var = new r07();
        r07Var.b = "";
        MutableIntIntMap mutableIntIntMapMutableIntIntMapOf = IntIntMapKt.mutableIntIntMapOf();
        mutableIntIntMapMutableIntIntMapOf.set(0, 0);
        bt7.c(2, 1);
        if ((treeSet instanceof RandomAccess) && (treeSet instanceof List)) {
            List list = (List) treeSet;
            int size = list.size();
            ArrayList arrayList2 = new ArrayList((size % 1 == 0 ? 0 : 1) + size);
            ie5 ie5Var = new ie5(list);
            for (int i = 0; i >= 0 && i < size; i++) {
                int i2 = size - i;
                if (2 <= i2) {
                    i2 = 2;
                }
                if (i2 < 2) {
                    break;
                }
                int i3 = i2 + i;
                u0.a aVar = u0.Companion;
                int size2 = ie5Var.c.size();
                aVar.getClass();
                u0.a.d(i, i3, size2);
                ie5Var.d = i;
                ie5Var.e = i3 - i;
                arrayList2.add(transform$lambda$0(r07Var, dm3Var, annotatedString, mutableIntIntMapMutableIntIntMapOf, ie5Var));
            }
        } else {
            ArrayList arrayList3 = new ArrayList();
            Iterator it = treeSet.iterator();
            it.getClass();
            Iterator itD = !it.hasNext() ? jx2.b : ly1.d(new s38(2, 1, it, true, false, null));
            while (itD.hasNext()) {
                arrayList3.add(transform$lambda$0(r07Var, dm3Var, annotatedString, mutableIntIntMapMutableIntIntMapOf, (List) itD.next()));
            }
        }
        List<AnnotatedString.Range<? extends AnnotatedString.Annotation>> annotations$ui_text = annotatedString.getAnnotations$ui_text();
        if (annotations$ui_text != null) {
            arrayList = new ArrayList(annotations$ui_text.size());
            int size3 = annotations$ui_text.size();
            for (int i4 = 0; i4 < size3; i4++) {
                AnnotatedString.Range<? extends AnnotatedString.Annotation> range = annotations$ui_text.get(i4);
                arrayList.add(new AnnotatedString.Range(range.getItem(), mutableIntIntMapMutableIntIntMapOf.get(range.getStart()), mutableIntIntMapMutableIntIntMapOf.get(range.getEnd())));
            }
        } else {
            arrayList = null;
        }
        return new AnnotatedString(arrayList, (String) r07Var.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.String] */
    private static final j59 transform$lambda$0(r07 r07Var, dm3 dm3Var, AnnotatedString annotatedString, MutableIntIntMap mutableIntIntMap, List list) {
        int iIntValue = ((Number) list.get(0)).intValue();
        int iIntValue2 = ((Number) list.get(1)).intValue();
        ?? r4 = ((String) r07Var.b) + ((String) dm3Var.invoke(annotatedString.getText(), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2)));
        r07Var.b = r4;
        mutableIntIntMap.put(iIntValue2, r4.length());
        return j59.a;
    }
}
