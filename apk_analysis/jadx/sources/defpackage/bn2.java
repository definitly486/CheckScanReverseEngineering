package defpackage;

import android.R;
import android.app.Dialog;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes3.dex */
public final class bn2 implements by6, v47 {
    public final Object b;
    public final Object c;
    public final Object d;

    public bn2(Class cls, BaseDialogNew baseDialogNew) throws IllegalAccessException, InvocationTargetException {
        ViewBinding viewBinding;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(baseDialogNew.getContext());
        this.b = layoutInflaterFrom;
        View viewFindViewById = baseDialogNew.findViewById(R.id.content);
        this.c = viewFindViewById;
        try {
            Object objInvoke = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflaterFrom, viewFindViewById, Boolean.FALSE);
            objInvoke.getClass();
            viewBinding = (ViewBinding) objInvoke;
            baseDialogNew.setContentView(viewBinding.getRoot());
        } catch (NoSuchMethodException unused) {
            Object objInvoke2 = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class).invoke(null, (LayoutInflater) this.b, (View) this.c);
            objInvoke2.getClass();
            viewBinding = (ViewBinding) objInvoke2;
            baseDialogNew.setContentView(viewBinding.getRoot());
        }
        this.d = viewBinding;
    }

    @Override // defpackage.v47
    public e47 a(e47 e47Var, xz5 xz5Var) {
        Drawable drawable = (Drawable) e47Var.get();
        if (drawable instanceof BitmapDrawable) {
            return ((ui0) this.c).a(kj0.b((ij0) this.b, ((BitmapDrawable) drawable).getBitmap()), xz5Var);
        }
        if (drawable instanceof up3) {
            return ((vp3) this.d).a(e47Var, xz5Var);
        }
        return null;
    }

    @Override // defpackage.by6
    public Object getValue(Object obj, ze4 ze4Var) {
        ((Dialog) obj).getClass();
        ze4Var.getClass();
        return (ViewBinding) this.d;
    }

    public bn2(ij0 ij0Var, ui0 ui0Var, vp3 vp3Var) {
        this.b = ij0Var;
        this.c = ui0Var;
        this.d = vp3Var;
    }
}
