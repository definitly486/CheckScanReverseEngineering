package defpackage;

import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import yads.bt2;
import yads.cy2;
import yads.ws2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mz0 implements Interpolator, bt2 {
    public static StringBuilder a(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(i);
        sb.append(str4);
        return sb;
    }

    public static /* synthetic */ void c(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void d(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    @Override // yads.bt2
    public ws2[] b() {
        return cy2.a();
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$4(f);
    }
}
