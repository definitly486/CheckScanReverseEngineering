package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes5.dex */
public class m13 implements c0b {
    public static final /* synthetic */ m13 b = new m13();

    public static final de3 b(hd3 hd3Var, String str, nl3 nl3Var) {
        hd3Var.getClass();
        str.getClass();
        nl3Var.getClass();
        return new de3(hd3Var, new pd3(str, nl3Var, null));
    }

    public static /* synthetic */ de3 c(hd3 hd3Var, String str, nl3 nl3Var, int i) {
        if ((i & 1) != 0) {
            str = new String();
        }
        if ((i & 2) != 0) {
            nl3Var = od3.g;
        }
        return b(hd3Var, str, nl3Var);
    }

    public static void d(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    @Override // defpackage.c0b
    public /* synthetic */ void a(zzec zzecVar, ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        zzecVar.zzw(listenerKey, z, taskCompletionSource);
    }
}
