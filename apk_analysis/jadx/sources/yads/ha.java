package yads;

import defpackage.ta8;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ha {
    public static String a(ga gaVar) {
        ArrayList arrayList = new ArrayList();
        if (!ta8.M(gaVar.a())) {
            arrayList.add(gaVar.a());
        }
        if (!ta8.M(gaVar.b())) {
            arrayList.add("erid: " + gaVar.b());
        }
        return defpackage.qn1.a0(arrayList, " · ", null, null, 0, null, 62);
    }
}
