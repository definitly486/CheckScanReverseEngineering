package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.u74;
import defpackage.u96;
import defpackage.y74;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableMethod {
    public static final int $stable = 8;
    private final ComposableInfo composableInfo;
    private final Method method;

    public ComposableMethod(Method method, ComposableInfo composableInfo) {
        this.method = method;
        this.composableInfo = composableInfo;
    }

    public final Method asMethod() {
        return this.method;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ComposableMethod) {
            return aa4.e(this.method, ((ComposableMethod) obj).method);
        }
        return false;
    }

    public final int getParameterCount() {
        return this.composableInfo.getRealParamsCount();
    }

    public final Class<?>[] getParameterTypes() {
        return (Class[]) aq5.r(0, this.composableInfo.getRealParamsCount(), this.method.getParameterTypes());
    }

    public final Parameter[] getParameters() {
        return (Parameter[]) aq5.r(0, this.composableInfo.getRealParamsCount(), this.method.getParameters());
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    public final Object invoke(Composer composer, Object obj, Object... objArr) {
        Object defaultValue;
        ComposableInfo composableInfo = this.composableInfo;
        int iComponent2 = composableInfo.component2();
        int iComponent3 = composableInfo.component3();
        int iComponent4 = composableInfo.component4();
        int length = this.method.getParameterTypes().length;
        int i = iComponent2 + 1;
        int i2 = iComponent3 + i;
        int i3 = 0;
        Object[] objArr2 = new Integer[iComponent4];
        for (int i4 = 0; i4 < iComponent4; i4++) {
            int i5 = i4 * 31;
            y74 y74VarN = kx6.n(i5, Math.min(i5 + 31, iComponent2));
            ArrayList arrayList = new ArrayList(kn1.q(y74VarN, 10));
            Iterator<Integer> it = y74VarN.iterator();
            while (it.hasNext()) {
                int iNextInt = ((u74) it).nextInt();
                arrayList.add(Integer.valueOf((iNextInt >= objArr.length || objArr[iNextInt] == null) ? 1 : 0));
            }
            int iIntValue = 0;
            int i6 = 0;
            for (Object obj2 : arrayList) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    u96.o();
                    throw null;
                }
                iIntValue |= ((Number) obj2).intValue() << i6;
                i6 = i7;
            }
            objArr2[i4] = Integer.valueOf(iIntValue);
        }
        Object[] objArr3 = new Object[length];
        while (i3 < length) {
            if (i3 >= 0 && i3 < iComponent2) {
                defaultValue = (i3 < 0 || i3 >= objArr.length) ? ComposableMethodKt.getDefaultValue(this.method.getParameterTypes()[i3]) : objArr[i3];
            } else if (i3 == iComponent2) {
                defaultValue = composer;
            } else if (i3 == i || (iComponent2 + 2 <= i3 && i3 < i2)) {
                defaultValue = 0;
            } else {
                if (i2 > i3 || i3 >= length) {
                    ah.f("Unexpected index");
                    return null;
                }
                defaultValue = objArr2[i3 - i2];
            }
            objArr3[i3] = defaultValue;
            i3++;
        }
        return this.method.invoke(obj, Arrays.copyOf(objArr3, length));
    }
}
