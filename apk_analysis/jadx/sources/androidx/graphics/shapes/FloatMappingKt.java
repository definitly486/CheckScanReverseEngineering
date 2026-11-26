package androidx.graphics.shapes;

import androidx.collection.FloatList;
import defpackage.ag;
import defpackage.eg;
import defpackage.kx6;
import defpackage.u74;
import defpackage.u96;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class FloatMappingKt {
    public static final float linearMap(FloatList floatList, FloatList floatList2, float f) {
        floatList.getClass();
        floatList2.getClass();
        if (0.0f > f || f > 1.0f) {
            throw new IllegalArgumentException(("Invalid progress: " + f).toString());
        }
        Iterator<Integer> it = kx6.n(0, floatList._size).iterator();
        while (it.hasNext()) {
            int iNextInt = ((u74) it).nextInt();
            int i = iNextInt + 1;
            if (progressInRange(f, floatList.get(iNextInt), floatList.get(i % floatList.getSize()))) {
                int size = i % floatList.getSize();
                float fPositiveModulo = Utils.positiveModulo(floatList.get(size) - floatList.get(iNextInt), 1.0f);
                return Utils.positiveModulo((Utils.positiveModulo(floatList2.get(size) - floatList2.get(iNextInt), 1.0f) * (fPositiveModulo < 0.001f ? 0.5f : Utils.positiveModulo(f - floatList.get(iNextInt), 1.0f) / fPositiveModulo)) + floatList2.get(iNextInt), 1.0f);
            }
        }
        ag.g("Collection contains no element matching the predicate.");
        return 0.0f;
    }

    public static final boolean progressInRange(float f, float f2, float f3) {
        if (f3 >= f2) {
            return f2 <= f && f <= f3;
        }
        return f >= f2 || f <= f3;
    }

    public static final void validateProgress(FloatList floatList) {
        floatList.getClass();
        Boolean boolValueOf = Boolean.TRUE;
        float[] fArr = floatList.content;
        int i = floatList._size;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= i) {
                break;
            }
            float f = fArr[i3];
            if (!boolValueOf.booleanValue() || 0.0f > f || f > 1.0f) {
                z = false;
            }
            boolValueOf = Boolean.valueOf(z);
            i3++;
        }
        if (!boolValueOf.booleanValue()) {
            eg.d(FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null), "FloatMapping - Progress outside of range: ");
            return;
        }
        Iterable iterableN = kx6.n(1, floatList.getSize());
        if (!(iterableN instanceof Collection) || !((Collection) iterableN).isEmpty()) {
            Iterator it = iterableN.iterator();
            while (it.hasNext()) {
                int iNextInt = ((u74) it).nextInt();
                if (floatList.get(iNextInt) < floatList.get(iNextInt - 1) && (i2 = i2 + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
        }
        if (i2 <= 1) {
            return;
        }
        eg.d(FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null), "FloatMapping - Progress wraps more than once: ");
    }
}
