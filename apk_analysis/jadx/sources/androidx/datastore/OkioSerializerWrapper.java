package androidx.datastore;

import androidx.datastore.core.Serializer;
import androidx.datastore.core.okio.OkioSerializer;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.vu0;
import defpackage.wu0;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioSerializerWrapper<T> implements OkioSerializer<T> {
    private final Serializer<T> delegate;

    public OkioSerializerWrapper(Serializer<T> serializer) {
        serializer.getClass();
        this.delegate = serializer;
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    public T getDefaultValue() {
        return this.delegate.getDefaultValue();
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    public Object readFrom(wu0 wu0Var, e02<? super T> e02Var) {
        return this.delegate.readFrom(wu0Var.w0(), e02Var);
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    public Object writeTo(T t, vu0 vu0Var, e02<? super j59> e02Var) {
        Object objWriteTo = this.delegate.writeTo(t, vu0Var.v0(), e02Var);
        return objWriteTo == a32.COROUTINE_SUSPENDED ? objWriteTo : j59.a;
    }
}
