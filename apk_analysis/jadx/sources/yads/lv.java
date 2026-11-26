package yads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class lv {
    public static k55 a(jv jvVar, ArrayList arrayList) {
        le3 le3Var = oe3.c;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i = 0;
        int i2 = 0;
        while (i < arrayList.size()) {
            Bundle bundle = (Bundle) arrayList.get(i);
            bundle.getClass();
            kv kvVarA = jvVar.a(bundle);
            kvVarA.getClass();
            int i3 = i2 + 1;
            if (objArrCopyOf.length < i3) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i3));
            }
            objArrCopyOf[i2] = kvVarA;
            i++;
            i2 = i3;
        }
        return oe3.b(i2, objArrCopyOf);
    }
}
