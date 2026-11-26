package io.appmetrica.analytics.coreapi.internal.data;

/* JADX INFO: loaded from: classes5.dex */
public interface StateSerializer<T> {
    T defaultValue();

    byte[] toByteArray(T t);

    T toState(byte[] bArr);
}
