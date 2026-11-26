package yads;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class pr4 {
    public final int a(View view, Rect rect) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(view.getContext());
        if (fe5VarA == null || !fe5VarA.m) {
            return 0;
        }
        ArrayList<View> arrayListA = rr4.a(view);
        ArrayList<Rect> arrayList = new ArrayList();
        for (View view2 : arrayListA) {
            Rect rect2 = new Rect();
            if (view2.getGlobalVisibleRect(rect2)) {
                arrayList.add(rect2);
            }
        }
        for (Rect rect3 : arrayList) {
            int i = rect3.left;
            int i2 = rect.left;
            int i3 = rect.right;
            if (i < i2) {
                i = i2;
            }
            if (i > i3) {
                i = i3;
            }
            rect3.left = i;
            int i4 = rect3.top;
            int i5 = rect.top;
            int i6 = rect.bottom;
            if (i4 < i5) {
                i4 = i5;
            }
            if (i4 > i6) {
                i4 = i6;
            }
            rect3.top = i4;
            int i7 = rect3.right;
            int i8 = rect.left;
            if (i7 < i8) {
                i7 = i8;
            }
            if (i7 <= i3) {
                i3 = i7;
            }
            rect3.right = i3;
            int i9 = rect3.bottom;
            int i10 = rect.top;
            if (i9 < i10) {
                i9 = i10;
            }
            if (i9 <= i6) {
                i6 = i9;
            }
            rect3.bottom = i6;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Rect rect4 = (Rect) obj;
            if (rect4.width() > 0 && rect4.height() > 0) {
                arrayList2.add(obj);
            }
        }
        int size = arrayList2.size();
        List<Rect> listSubList = arrayList2;
        if (size > 100) {
            listSubList = arrayList2.subList(0, 100);
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(Integer.valueOf(rect.left));
        treeSet.add(Integer.valueOf(rect.right));
        for (Rect rect5 : listSubList) {
            treeSet.add(Integer.valueOf(rect5.left));
            treeSet.add(Integer.valueOf(rect5.right));
        }
        ArrayList arrayList3 = new ArrayList(treeSet);
        TreeSet treeSet2 = new TreeSet();
        treeSet2.add(Integer.valueOf(rect.top));
        treeSet2.add(Integer.valueOf(rect.bottom));
        for (Rect rect6 : listSubList) {
            treeSet2.add(Integer.valueOf(rect6.top));
            treeSet2.add(Integer.valueOf(rect6.bottom));
        }
        ArrayList arrayList4 = new ArrayList(treeSet2);
        rect.left = Collections.binarySearch(arrayList3, Integer.valueOf(rect.left));
        rect.top = Collections.binarySearch(arrayList4, Integer.valueOf(rect.top));
        rect.right = Collections.binarySearch(arrayList3, Integer.valueOf(rect.right));
        rect.bottom = Collections.binarySearch(arrayList4, Integer.valueOf(rect.bottom));
        for (Rect rect7 : listSubList) {
            rect7.left = Collections.binarySearch(arrayList3, Integer.valueOf(rect7.left));
            rect7.top = Collections.binarySearch(arrayList4, Integer.valueOf(rect7.top));
            rect7.right = Collections.binarySearch(arrayList3, Integer.valueOf(rect7.right));
            rect7.bottom = Collections.binarySearch(arrayList4, Integer.valueOf(rect7.bottom));
        }
        int size2 = arrayList3.size() - 1;
        byte[][] bArr = new byte[size2][];
        for (int i11 = 0; i11 < size2; i11++) {
            bArr[i11] = new byte[arrayList4.size() - 1];
        }
        for (Rect rect8 : listSubList) {
            int i12 = rect8.right;
            for (int i13 = rect8.left; i13 < i12; i13++) {
                int i14 = rect8.bottom;
                for (int i15 = rect8.top; i15 < i14; i15++) {
                    bArr[i13][i15] = 1;
                }
            }
        }
        int size3 = arrayList3.size() - 1;
        int iIntValue = 0;
        for (int i16 = 0; i16 < size3; i16++) {
            int size4 = arrayList4.size() - 1;
            for (int i17 = 0; i17 < size4; i17++) {
                if (bArr[i16][i17] == 1) {
                    iIntValue = ((((Number) arrayList4.get(i17 + 1)).intValue() - ((Number) arrayList4.get(i17)).intValue()) * (((Number) arrayList3.get(i16 + 1)).intValue() - ((Number) arrayList3.get(i16)).intValue())) + iIntValue;
                }
            }
        }
        return iIntValue;
    }
}
