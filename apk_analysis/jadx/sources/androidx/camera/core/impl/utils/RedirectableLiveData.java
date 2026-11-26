package androidx.camera.core.impl.utils;

import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public final class RedirectableLiveData<T> extends MappingRedirectableLiveData<T, T> {
    private final T initialValue;

    public RedirectableLiveData(T t) {
        super(t, new tg(8));
        this.initialValue = t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object _init_$lambda$0(Object obj) {
        return obj;
    }
}
