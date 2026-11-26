package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import defpackage.ln;
import defpackage.mg;
import defpackage.n7;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmViewModelProviders {
    public static final JvmViewModelProviders INSTANCE = new JvmViewModelProviders();

    private JvmViewModelProviders() {
    }

    public final <T extends ViewModel> T createViewModel(Class<T> cls) throws InvocationTargetException {
        cls.getClass();
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                n7.g(ln.d(cls, "Cannot create an instance of "));
                return null;
            }
            try {
                T tNewInstance = declaredConstructor.newInstance(null);
                tNewInstance.getClass();
                return tNewInstance;
            } catch (IllegalAccessException e) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e);
                return null;
            } catch (InstantiationException e2) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e2);
                return null;
            }
        } catch (NoSuchMethodException e3) {
            mg.e(ln.d(cls, "Cannot create an instance of "), e3);
            return null;
        }
    }
}
