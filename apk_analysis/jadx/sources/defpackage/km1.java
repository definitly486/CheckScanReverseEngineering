package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes3.dex */
public final class km1 implements rxa {
    public static final /* synthetic */ km1 b = new km1();

    public static final ie3 a(hd3 hd3Var, int i) {
        if (i >= 0) {
            return new ie3(hd3Var, i);
        }
        c9.f(jh.b(i, "Drop count should be non-negative, but had "));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final a32 b(id3 id3Var, Object obj, Object obj2, f02 f02Var) {
        me3 me3Var;
        if (f02Var instanceof me3) {
            me3Var = (me3) f02Var;
            int i = me3Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                me3Var.n = i - Integer.MIN_VALUE;
            } else {
                me3Var = new me3(f02Var);
            }
        } else {
            me3Var = new me3(f02Var);
        }
        Object obj3 = me3Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = me3Var.n;
        if (i2 == 0) {
            r57.b(obj3);
            me3Var.l = obj2;
            me3Var.n = 1;
            if (id3Var.emit(obj, me3Var) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = me3Var.l;
            r57.b(obj3);
        }
        throw new AbortFlowException(obj2);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzI());
    }
}
