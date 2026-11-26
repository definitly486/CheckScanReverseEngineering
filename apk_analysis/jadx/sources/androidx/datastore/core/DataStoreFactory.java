package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.rm9;
import defpackage.sh2;
import defpackage.u96;
import defpackage.y22;
import defpackage.z22;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreFactory {
    public static final DataStoreFactory INSTANCE = new DataStoreFactory();

    private DataStoreFactory() {
    }

    public static DataStore create$default(DataStoreFactory dataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        ReplaceFileCorruptionHandler replaceFileCorruptionHandler2 = replaceFileCorruptionHandler;
        if ((i & 4) != 0) {
            list = kx2.b;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            oi2 oi2Var = qo2.a;
            y22Var = z22.a(sh2.c.plus(rm9.b()));
        }
        return dataStoreFactory.create(serializer, replaceFileCorruptionHandler2, list2, y22Var, ll3Var);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, y22 y22Var) {
        storage.getClass();
        list.getClass();
        y22Var.getClass();
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(storage, u96.h(DataMigrationInitializer.Companion.getInitializer(list)), replaceFileCorruptionHandler, y22Var);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, ll3<? extends File> ll3Var) {
        serializer.getClass();
        ll3Var.getClass();
        return create$default(this, serializer, replaceFileCorruptionHandler, null, null, ll3Var, 12, null);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, ll3<? extends File> ll3Var) {
        serializer.getClass();
        list.getClass();
        ll3Var.getClass();
        return create$default(this, serializer, replaceFileCorruptionHandler, list, null, ll3Var, 8, null);
    }

    public final <T> DataStore<T> create(Storage<T> storage) {
        storage.getClass();
        return create$default(this, storage, null, null, null, 14, null);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler) {
        storage.getClass();
        return create$default(this, storage, replaceFileCorruptionHandler, null, null, 12, null);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list) {
        storage.getClass();
        list.getClass();
        return create$default(this, storage, replaceFileCorruptionHandler, list, null, 8, null);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, y22 y22Var, ll3<? extends File> ll3Var) {
        serializer.getClass();
        list.getClass();
        y22Var.getClass();
        ll3Var.getClass();
        return create(new FileStorage(serializer, null, ll3Var, 2, null), replaceFileCorruptionHandler, list, y22Var);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ll3<? extends File> ll3Var) {
        serializer.getClass();
        ll3Var.getClass();
        return create$default(this, serializer, null, null, null, ll3Var, 14, null);
    }

    public static /* synthetic */ DataStore create$default(DataStoreFactory dataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            list = kx2.b;
        }
        if ((i & 8) != 0) {
            y22Var = z22.a(Actual_jvmKt.ioDispatcher().plus(rm9.b()));
        }
        return dataStoreFactory.create(storage, replaceFileCorruptionHandler, list, y22Var);
    }
}
