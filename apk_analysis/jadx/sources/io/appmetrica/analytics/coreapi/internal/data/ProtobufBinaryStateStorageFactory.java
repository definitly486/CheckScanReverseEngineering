package io.appmetrica.analytics.coreapi.internal.data;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public interface ProtobufBinaryStateStorageFactory<T> {
    ProtobufStateStorage<T> create(Context context);

    ProtobufStateStorage<T> createForMigration(Context context);
}
