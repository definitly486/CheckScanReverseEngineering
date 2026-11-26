package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class bt7 implements Continuation, rxa {
    public static final bh8 b = new bh8("NO_VALUE");
    public static final /* synthetic */ bt7 c = new bt7();

    public static final zs7 a(int i, int i2, cu0 cu0Var) {
        if (i < 0) {
            c9.f(jh.b(i, "replay cannot be negative, but was "));
            return null;
        }
        if (i2 < 0) {
            c9.f(jh.b(i2, "extraBufferCapacity cannot be negative, but was "));
            return null;
        }
        if (i <= 0 && i2 <= 0 && cu0Var != cu0.SUSPEND) {
            eg.d(cu0Var, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
            return null;
        }
        int i3 = i2 + i;
        if (i3 < 0) {
            i3 = Integer.MAX_VALUE;
        }
        return new zs7(i, i3, cu0Var);
    }

    public static /* synthetic */ zs7 b(int i, int i2, cu0 cu0Var, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            cu0Var = cu0.SUSPEND;
        }
        return a(i, i2, cu0Var);
    }

    public static final void c(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            c9.f(i != i2 ? ln.c(i, i2, "Both size ", " and step ", " must be greater than zero.") : kv2.b(i, "size ", " must be greater than zero."));
        }
    }

    public static final hd3 d(ys7 ys7Var, o22 o22Var, int i, cu0 cu0Var) {
        return ((i == 0 || i == -3) && cu0Var == cu0.SUSPEND) ? ys7Var : new i91(i, cu0Var, o22Var, ys7Var);
    }

    public static final void e(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* bridge */ /* synthetic */ Object then(Task task) throws ApiException {
        if (((Boolean) task.getResult()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzC());
    }
}
