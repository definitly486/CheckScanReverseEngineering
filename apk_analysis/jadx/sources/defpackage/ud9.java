package defpackage;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ud9<T extends ViewBinding> implements by6<BottomSheetDialog, T> {
    public final LayoutInflater b;
    public final View c;
    public final T d;

    public ud9(Class<T> cls, BottomSheetDialog bottomSheetDialog) throws IllegalAccessException, InvocationTargetException {
        T t;
        bottomSheetDialog.getClass();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(bottomSheetDialog.getContext());
        this.b = layoutInflaterFrom;
        View viewFindViewById = bottomSheetDialog.findViewById(R.id.content);
        this.c = viewFindViewById;
        try {
            Object objInvoke = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflaterFrom, viewFindViewById, Boolean.FALSE);
            objInvoke.getClass();
            t = (T) objInvoke;
            bottomSheetDialog.setContentView(t.getRoot());
        } catch (NoSuchMethodException unused) {
            Object objInvoke2 = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class).invoke(null, this.b, this.c);
            objInvoke2.getClass();
            t = (T) objInvoke2;
            bottomSheetDialog.setContentView(t.getRoot());
        }
        this.d = t;
    }

    @Override // defpackage.by6
    public final Object getValue(BottomSheetDialog bottomSheetDialog, ze4 ze4Var) {
        bottomSheetDialog.getClass();
        ze4Var.getClass();
        return this.d;
    }
}
