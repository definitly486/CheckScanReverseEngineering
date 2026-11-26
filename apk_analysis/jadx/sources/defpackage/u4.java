package defpackage;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.os.Bundle;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import com.google.android.gms.measurement.internal.zzic;
import yads.fq5;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.oa2;
import yads.xs4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u4 implements Interpolator, jv, l66 {
    public static /* bridge */ /* synthetic */ CameraExtensionCharacteristics b(Object obj) {
        return (CameraExtensionCharacteristics) obj;
    }

    public static /* synthetic */ void c(int i, String str) throws xs4 {
        throw new xs4(str + i, null, true, 1);
    }

    public static void d(gi0 gi0Var, tc5 tc5Var) {
        tc5Var.a(new m08(gi0Var));
    }

    public static void e(zzic zzicVar, String str) {
        zzicVar.zzaW().zzb().zza(str);
    }

    public static /* synthetic */ void f(Object obj, StringBuilder sb) {
        sb.append(" at path ");
        sb.append(obj);
        throw new jc4(sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return oa2.a(((Double) obj).doubleValue());
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$7(f);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return fq5.b(bundle);
    }
}
