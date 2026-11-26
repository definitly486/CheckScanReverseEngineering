package defpackage;

import com.google.android.gms.internal.measurement.zzaht;
import com.posthog.internal.PostHogApiError;

/* JADX INFO: loaded from: classes4.dex */
public class vc3 implements cc9, rxa {
    public static final vc3 b = new vc3();
    public static final /* synthetic */ vc3 c = new vc3();

    public static final void a(int i) {
        new Integer(i);
    }

    public static final boolean b(PostHogApiError postHogApiError, ei0 ei0Var, int i, ic6 ic6Var, nl3 nl3Var) {
        int i2;
        ic6Var.getClass();
        nl3Var.getClass();
        int i3 = postHogApiError.b;
        if (i3 < 400) {
            ic6Var.a("Flushing failed with " + i3 + ", let's try again soon.");
            return false;
        }
        if (i3 != 413 || i <= 1 || (i2 = ei0Var.a) <= 1) {
            if (!((Boolean) nl3Var.invoke(Integer.valueOf(i3))).booleanValue()) {
                return true;
            }
            ic6Var.a("Flushing failed with " + i3 + ", let's try again soon.");
            return false;
        }
        int iMin = Math.min(i2, i) / 2;
        if (iMin < 1) {
            iMin = 1;
        }
        ei0Var.a = iMin;
        int i4 = ei0Var.b / 2;
        if (i4 <= iMin) {
            iMin = i4;
        }
        ei0Var.b = iMin >= 1 ? iMin : 1;
        ic6Var.a("Flushing failed with " + i3 + ", let's try again with a smaller batch.");
        return false;
    }

    @Override // defpackage.cc9
    public Object e(td4 td4Var, float f) {
        return Float.valueOf(ie4.d(td4Var) * f);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        return new Boolean(zzaht.zzb());
    }
}
