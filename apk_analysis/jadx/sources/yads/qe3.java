package yads;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class qe3 implements Serializable {
    public final Object[] b;
    public final Object[] c;

    public qe3(re3 re3Var) {
        int i = ((p55) re3Var).g;
        Object[] objArr = new Object[i];
        Object[] objArr2 = new Object[i];
        i46 it = re3Var.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            objArr[i2] = entry.getKey();
            objArr2[i2] = entry.getValue();
            i2++;
        }
        this.b = objArr;
        this.c = objArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object readResolve() {
        Object[] objArr = this.b;
        int i = 0;
        if (objArr instanceof te3) {
            te3 te3Var = (te3) objArr;
            ie3 ie3Var = (ie3) this.c;
            Object[] objArrCopyOf = new Object[te3Var.size() * 2];
            i46 it = te3Var.iterator();
            i46 it2 = ie3Var.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Object next2 = it2.next();
                int i2 = i + 1;
                int i3 = i2 * 2;
                if (i3 > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i3));
                }
                h20.a(next, next2);
                int i4 = i * 2;
                objArrCopyOf[i4] = next;
                objArrCopyOf[i4 + 1] = next2;
                i = i2;
            }
            return p55.a(i, objArrCopyOf);
        }
        Object[] objArr2 = this.c;
        int i5 = 0;
        Object[] objArrCopyOf2 = new Object[objArr.length * 2];
        while (i < objArr.length) {
            Object[] objArr3 = objArr[i];
            Object obj = objArr2[i];
            int i6 = i5 + 1;
            int i7 = i6 * 2;
            if (i7 > objArrCopyOf2.length) {
                objArrCopyOf2 = Arrays.copyOf(objArrCopyOf2, he3.a(objArrCopyOf2.length, i7));
            }
            h20.a(objArr3, obj);
            int i8 = i5 * 2;
            objArrCopyOf2[i8] = objArr3;
            objArrCopyOf2[i8 + 1] = obj;
            i++;
            i5 = i6;
            objArrCopyOf2 = objArrCopyOf2;
        }
        return p55.a(i5, objArrCopyOf2);
    }
}
