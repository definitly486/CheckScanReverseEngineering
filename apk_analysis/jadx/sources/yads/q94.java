package yads;

import android.content.Context;
import defpackage.yr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class q94 {
    public static p94 a(Context context) {
        l2 l2Var = new l2();
        mg mgVar = new mg(context);
        vm3 e = null;
        try {
            l2Var.a(context);
            e = null;
        } catch (vm3 e2) {
            e = e2;
        }
        try {
            cu4.a(context);
            e = null;
        } catch (vm3 e3) {
            e = e3;
        }
        try {
            mgVar.a();
        } catch (vm3 e4) {
            e = e4;
        }
        ArrayList arrayListG = yr.G(new vm3[]{e, e, e});
        return !arrayListG.isEmpty() ? new o94(arrayListG) : n94.a;
    }
}
