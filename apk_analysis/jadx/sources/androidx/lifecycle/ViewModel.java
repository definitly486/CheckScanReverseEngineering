package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import defpackage.ul2;
import defpackage.y22;
import java.io.Closeable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ViewModel {
    private final ViewModelImpl impl;

    public ViewModel(y22 y22Var, AutoCloseable... autoCloseableArr) {
        y22Var.getClass();
        autoCloseableArr.getClass();
        this.impl = new ViewModelImpl(y22Var, (AutoCloseable[]) Arrays.copyOf(autoCloseableArr, autoCloseableArr.length));
    }

    public final void addCloseable(String str, AutoCloseable autoCloseable) {
        str.getClass();
        autoCloseable.getClass();
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.addCloseable(str, autoCloseable);
        }
    }

    public final void clear$lifecycle_viewmodel() {
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.clear();
        }
        onCleared();
    }

    public final <T extends AutoCloseable> T getCloseable(String str) {
        str.getClass();
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            return (T) viewModelImpl.getCloseable(str);
        }
        return null;
    }

    public void onCleared() {
    }

    public void addCloseable(AutoCloseable autoCloseable) {
        autoCloseable.getClass();
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.addCloseable(autoCloseable);
        }
    }

    @ul2
    public /* synthetic */ void addCloseable(Closeable closeable) {
        closeable.getClass();
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.addCloseable(closeable);
        }
    }

    public ViewModel(y22 y22Var) {
        y22Var.getClass();
        this.impl = new ViewModelImpl(y22Var);
    }

    public ViewModel(AutoCloseable... autoCloseableArr) {
        autoCloseableArr.getClass();
        this.impl = new ViewModelImpl((AutoCloseable[]) Arrays.copyOf(autoCloseableArr, autoCloseableArr.length));
    }

    public ViewModel() {
        this.impl = new ViewModelImpl();
    }

    @ul2
    public /* synthetic */ ViewModel(Closeable... closeableArr) {
        closeableArr.getClass();
        this.impl = new ViewModelImpl((AutoCloseable[]) Arrays.copyOf(closeableArr, closeableArr.length));
    }
}
