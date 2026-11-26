package defpackage;

import android.view.inputmethod.RemoveSpaceGesture;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.fragment.app.Fragment;
import java.util.List;
import kotlinx.serialization.UnknownFieldException;
import yads.cj0;
import yads.f31;
import yads.l66;
import yads.lp1;
import yads.my2;
import yads.pe;
import yads.r22;
import yads.st3;
import yads.ut3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pg implements DoubleFunction, ut3, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ pg(int i) {
        this.b = i;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    public static /* bridge */ /* synthetic */ RemoveSpaceGesture e(Object obj) {
        return (RemoveSpaceGesture) obj;
    }

    public static Object f(MutableVector mutableVector, int i) {
        return mutableVector.removeAt(mutableVector.getSize() - i);
    }

    public static String g(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static void h(int i) {
        throw new UnknownFieldException(jh.b(i, "An unknown field for index "));
    }

    public static /* synthetic */ void i(Fragment fragment, String str) {
        throw new IllegalStateException(str + ((Object) fragment.toString()) + ((Object) " is already attached to a FragmentManager."));
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 10:
                return f31.a(((Double) obj).doubleValue());
            default:
                return r22.a(((Long) obj).longValue());
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.ExtendedSrgb$lambda$1(d);
    }

    @Override // yads.ut3
    public void a(Object obj, my2 my2Var) {
        cj0.a((pe) obj, my2Var);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return lp1.b(list);
    }
}
