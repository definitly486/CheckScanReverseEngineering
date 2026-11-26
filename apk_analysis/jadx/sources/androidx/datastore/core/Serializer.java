package androidx.datastore.core;

import defpackage.e02;
import defpackage.j59;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface Serializer<T> {
    T getDefaultValue();

    Object readFrom(InputStream inputStream, e02<? super T> e02Var);

    Object writeTo(T t, OutputStream outputStream, e02<? super j59> e02Var);
}
