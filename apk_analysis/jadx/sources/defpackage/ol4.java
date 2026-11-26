package defpackage;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ol4<VB extends ViewBinding> implements by6<Fragment, VB> {
    public final Class<VB> b;
    public VB c;

    public ol4(Class<VB> cls) {
        this.b = cls;
    }

    @Override // defpackage.by6
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final VB getValue(Fragment fragment, ze4<?> ze4Var) throws IllegalAccessException, InvocationTargetException {
        fragment.getClass();
        ze4Var.getClass();
        VB vb = this.c;
        if (vb != null) {
            return vb;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Don't access viewBinding before onViewCreated() or after onDestroyView() inclusive");
        View view = fragment.getView();
        if (view == null) {
            throw illegalStateException;
        }
        Lifecycle lifecycle = fragment.getViewLifecycleOwner().getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            throw illegalStateException;
        }
        lifecycle.addObserver(new nl4(this));
        Object objInvoke = this.b.getMethod("bind", View.class).invoke(null, view);
        objInvoke.getClass();
        VB vb2 = (VB) objInvoke;
        this.c = vb2;
        return vb2;
    }
}
