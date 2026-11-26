package yads;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xt3 {
    public static ArrayList a(Object... objArr) {
        objArr.getClass();
        int length = objArr.length;
        h20.a(length, "arraySize");
        ArrayList arrayList = new ArrayList(bq3.b(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }
}
