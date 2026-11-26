package defpackage;

import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class gl4<VB extends ViewBinding> implements by6<DialogFragment, VB> {
    public final Class<VB> b;
    public VB c;

    public gl4(Class<VB> cls) {
        this.b = cls;
    }

    @Override // defpackage.by6
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final VB getValue(DialogFragment dialogFragment, ze4<?> ze4Var) throws IllegalAccessException, InvocationTargetException {
        dialogFragment.getClass();
        ze4Var.getClass();
        VB vb = this.c;
        if (vb != null) {
            return vb;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Don't access viewBinding before onViewCreated() or after onDestroyView() inclusive");
        View view = dialogFragment.getView();
        if (view == null) {
            throw illegalStateException;
        }
        Lifecycle lifecycle = dialogFragment.getViewLifecycleOwner().getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            throw illegalStateException;
        }
        lifecycle.addObserver(new fl4(this));
        Object objInvoke = this.b.getMethod("bind", View.class).invoke(null, view);
        objInvoke.getClass();
        VB vb2 = (VB) objInvoke;
        this.c = vb2;
        return vb2;
    }
}
