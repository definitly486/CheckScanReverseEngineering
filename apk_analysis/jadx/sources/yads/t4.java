package yads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class t4 {
    public static final void a(String str, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        jn3.a(String.format("Found following errors for %s ad type: %s", Arrays.copyOf(new Object[]{str, defpackage.qn1.a0(arrayList, "\n - ", "\n - ", null, 0, null, 60)}, 2)), new Object[0]);
    }

    public static final void a(String str) {
        jn3.b(String.format("Ad type %s was integrated successfully", Arrays.copyOf(new Object[]{str}, 1)), new Object[0]);
    }
}
