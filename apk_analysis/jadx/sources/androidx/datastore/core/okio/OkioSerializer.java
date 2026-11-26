package androidx.datastore.core.okio;

import defpackage.e02;
import defpackage.j59;
import defpackage.vu0;
import defpackage.wu0;

/* JADX INFO: loaded from: classes2.dex */
public interface OkioSerializer<T> {
    T getDefaultValue();

    Object readFrom(wu0 wu0Var, e02<? super T> e02Var);

    Object writeTo(T t, vu0 vu0Var, e02<? super j59> e02Var);
}
