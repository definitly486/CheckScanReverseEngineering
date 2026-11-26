package androidx.compose.material3.carousel;

import androidx.collection.FloatList;
import androidx.collection.FloatListKt;
import androidx.collection.MutableFloatList;
import androidx.compose.material3.carousel.KeylineListScope;
import androidx.compose.material3.carousel.StrategyKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.u74;
import defpackage.y74;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class StrategyKt {
    private static final KeylineList createShiftedKeylineListForContentPadding(final KeylineList keylineList, float f, float f2, float f3, Keyline keyline, int i) {
        ArrayList arrayList = new ArrayList(keylineList.size());
        int size = keylineList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Keyline keyline2 = keylineList.get(i2);
            if (!keyline2.isAnchor()) {
                arrayList.add(keyline2);
            }
        }
        final float size2 = f3 / arrayList.size();
        KeylineList keylineListKeylineListOf = KeylineListKt.keylineListOf(f, f2, i, (keyline.getOffset() - (size2 / 2.0f)) + f3, new nl3() { // from class: d98
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return StrategyKt.createShiftedKeylineListForContentPadding$lambda$2(keylineList, size2, (KeylineListScope) obj);
            }
        });
        ArrayList arrayList2 = new ArrayList(keylineListKeylineListOf.size());
        int size3 = keylineListKeylineListOf.size();
        for (int i3 = 0; i3 < size3; i3++) {
            arrayList2.add(Keyline.copy$default(keylineListKeylineListOf.get(i3), 0.0f, 0.0f, keylineList.get(i3).getUnadjustedOffset(), false, false, false, 0.0f, 123, null));
        }
        return new KeylineList(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createShiftedKeylineListForContentPadding$lambda$2(KeylineList keylineList, float f, KeylineListScope keylineListScope) {
        int size = keylineList.size();
        for (int i = 0; i < size; i++) {
            Keyline keyline = keylineList.get(i);
            keylineListScope.add(keyline.getSize() - Math.abs(f), keyline.isAnchor());
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<KeylineList> getEndKeylineSteps(KeylineList keylineList, float f, float f2, float f3) {
        if (keylineList.isEmpty()) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(keylineList);
        if (keylineList.isLastFocalItemAtEndOfContainer(f)) {
            if (f3 == 0.0f) {
                return arrayList;
            }
            arrayList.add(createShiftedKeylineListForContentPadding(keylineList, f, f2, -f3, keylineList.getLastFocal(), keylineList.getLastFocalIndex()));
            return arrayList;
        }
        int lastFocalIndex = keylineList.getLastFocalIndex();
        int lastNonAnchorIndex = keylineList.getLastNonAnchorIndex();
        int i = lastNonAnchorIndex - lastFocalIndex;
        if (i <= 0 && keylineList.getLastFocal().getCutoff() > 0.0f) {
            arrayList.add(moveKeylineAndCreateShiftedKeylineList(keylineList, 0, 0, f, f2));
            return arrayList;
        }
        for (int i2 = 0; i2 < i; i2++) {
            KeylineList keylineList2 = (KeylineList) qn1.b0(arrayList);
            int i3 = lastNonAnchorIndex - i2;
            arrayList.add(moveKeylineAndCreateShiftedKeylineList(keylineList2, keylineList.getLastNonAnchorIndex(), i3 < keylineList.size() + (-1) ? keylineList2.lastIndexBeforeFocalRangeWithSize(keylineList.get(i3 + 1).getSize()) + 1 : 0, f, f2));
        }
        if (f3 == 0.0f) {
            return arrayList;
        }
        arrayList.set(arrayList.size() - 1, createShiftedKeylineListForContentPadding((KeylineList) qn1.b0(arrayList), f, f2, -f3, ((KeylineList) qn1.b0(arrayList)).getLastFocal(), ((KeylineList) qn1.b0(arrayList)).getLastFocalIndex()));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float getEndShiftDistance(List<KeylineList> list, float f) {
        if (list.isEmpty()) {
            return 0.0f;
        }
        return Math.max(((Keyline) qn1.b0((List) qn1.T(list))).getUnadjustedOffset() - ((Keyline) qn1.b0((List) qn1.b0(list))).getUnadjustedOffset(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShiftPointRange getShiftPointRange(int i, FloatList floatList, float f) {
        float f2 = floatList.get(0);
        Iterator<Integer> it = kx6.n(1, i).iterator();
        while (it.hasNext()) {
            int iNextInt = ((u74) it).nextInt();
            float f3 = floatList.get(iNextInt);
            if (f <= f3) {
                return new ShiftPointRange(iNextInt - 1, iNextInt, lerp(0.0f, 1.0f, f2, f3, f));
            }
            f2 = f3;
        }
        return new ShiftPointRange(0, 0, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<KeylineList> getStartKeylineSteps(KeylineList keylineList, float f, float f2, float f3) {
        if (keylineList.isEmpty()) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(keylineList);
        if (keylineList.isFirstFocalItemAtStartOfContainer()) {
            if (f3 == 0.0f) {
                return arrayList;
            }
            arrayList.add(createShiftedKeylineListForContentPadding(keylineList, f, f2, f3, keylineList.getFirstFocal(), keylineList.getFirstFocalIndex()));
            return arrayList;
        }
        int firstNonAnchorIndex = keylineList.getFirstNonAnchorIndex();
        int firstFocalIndex = keylineList.getFirstFocalIndex() - firstNonAnchorIndex;
        if (firstFocalIndex <= 0 && keylineList.getFirstFocal().getCutoff() > 0.0f) {
            arrayList.add(moveKeylineAndCreateShiftedKeylineList(keylineList, 0, 0, f, f2));
            return arrayList;
        }
        for (int i = 0; i < firstFocalIndex; i++) {
            KeylineList keylineList2 = (KeylineList) qn1.b0(arrayList);
            int i2 = firstNonAnchorIndex + i;
            int size = keylineList.size() - 1;
            if (i2 > 0) {
                size = keylineList2.firstIndexAfterFocalRangeWithSize(keylineList.get(i2 - 1).getSize()) - 1;
            }
            arrayList.add(moveKeylineAndCreateShiftedKeylineList(keylineList2, keylineList.getFirstNonAnchorIndex(), size, f, f2));
        }
        if (f3 == 0.0f) {
            return arrayList;
        }
        arrayList.set(arrayList.size() - 1, createShiftedKeylineListForContentPadding((KeylineList) qn1.b0(arrayList), f, f2, f3, ((KeylineList) qn1.b0(arrayList)).getFirstFocal(), ((KeylineList) qn1.b0(arrayList)).getFirstFocalIndex()));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float getStartShiftDistance(List<KeylineList> list, float f) {
        if (list.isEmpty()) {
            return 0.0f;
        }
        return Math.max(((Keyline) qn1.T((List) qn1.b0(list))).getUnadjustedOffset() - ((Keyline) qn1.T((List) qn1.T(list))).getUnadjustedOffset(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FloatList getStepInterpolationPoints(float f, List<KeylineList> list, boolean z) {
        MutableFloatList mutableFloatListMutableFloatListOf = FloatListKt.mutableFloatListOf(0.0f);
        if (f != 0.0f && !list.isEmpty()) {
            y74 y74VarN = kx6.n(1, list.size());
            ArrayList arrayList = new ArrayList(kn1.q(y74VarN, 10));
            Iterator<Integer> it = y74VarN.iterator();
            while (it.hasNext()) {
                int iNextInt = ((u74) it).nextInt();
                int i = iNextInt - 1;
                KeylineList keylineList = list.get(i);
                KeylineList keylineList2 = list.get(iNextInt);
                arrayList.add(Boolean.valueOf(mutableFloatListMutableFloatListOf.add(iNextInt == list.size() - 1 ? 1.0f : mutableFloatListMutableFloatListOf.get(i) + ((z ? ((Keyline) qn1.T(keylineList2)).getUnadjustedOffset() - ((Keyline) qn1.T(keylineList)).getUnadjustedOffset() : ((Keyline) qn1.b0(keylineList)).getUnadjustedOffset() - ((Keyline) qn1.b0(keylineList2)).getUnadjustedOffset()) / f))));
            }
        }
        return mutableFloatListMutableFloatListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float lerp(float f, float f2, float f3, float f4, float f5) {
        if (f5 <= f3) {
            return f;
        }
        return f5 >= f4 ? f2 : MathHelpersKt.lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

    private static final List<Keyline> move(List<Keyline> list, int i, int i2) {
        Keyline keyline = list.get(i);
        list.remove(i);
        list.add(i2, keyline);
        return list;
    }

    private static final KeylineList moveKeylineAndCreateShiftedKeylineList(final KeylineList keylineList, final int i, final int i2, float f, float f2) {
        int i3 = i > i2 ? 1 : -1;
        return KeylineListKt.keylineListOf(f, f2, keylineList.getPivotIndex() + i3, keylineList.getPivot().getOffset() + (((keylineList.get(i).getSize() - keylineList.get(i).getCutoff()) + f2) * i3), new nl3() { // from class: c98
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return StrategyKt.moveKeylineAndCreateShiftedKeylineList$lambda$5(keylineList, i, i2, (KeylineListScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 moveKeylineAndCreateShiftedKeylineList$lambda$5(KeylineList keylineList, int i, int i2, KeylineListScope keylineListScope) {
        List<Keyline> listMove = move(qn1.v0(keylineList), i, i2);
        int size = listMove.size();
        for (int i3 = 0; i3 < size; i3++) {
            Keyline keyline = listMove.get(i3);
            keylineListScope.add(keyline.getSize(), keyline.isAnchor());
        }
        return j59.a;
    }
}
