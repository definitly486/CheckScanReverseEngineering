package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.gh4;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nl3;
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
public final class MultiProcessDataStoreFactory {
    public static final MultiProcessDataStoreFactory INSTANCE = new MultiProcessDataStoreFactory();

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessDataStoreFactory$create$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<File, InterProcessCoordinator> {
        final /* synthetic */ y22 $scope;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(y22 y22Var) {
            super(1);
            this.$scope = y22Var;
        }

        @Override // defpackage.nl3
        public final InterProcessCoordinator invoke(File file) {
            file.getClass();
            return new MultiProcessCoordinator(this.$scope.getCoroutineContext(), file);
        }
    }

    private MultiProcessDataStoreFactory() {
    }

    public static DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, ll3 ll3Var, int i, Object obj) {
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
        return multiProcessDataStoreFactory.create(serializer, replaceFileCorruptionHandler2, list2, y22Var, ll3Var);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, y22 y22Var, ll3<? extends File> ll3Var) {
        serializer.getClass();
        list.getClass();
        y22Var.getClass();
        ll3Var.getClass();
        FileStorage fileStorage = new FileStorage(serializer, new AnonymousClass1(y22Var), ll3Var);
        List listH = u96.h(DataMigrationInitializer.Companion.getInitializer(list));
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(fileStorage, listH, replaceFileCorruptionHandler, y22Var);
    }

    public static DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            list = kx2.b;
        }
        if ((i & 8) != 0) {
            oi2 oi2Var = qo2.a;
            y22Var = z22.a(sh2.c.plus(rm9.b()));
        }
        return multiProcessDataStoreFactory.create(storage, replaceFileCorruptionHandler, list, y22Var);
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

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, y22 y22Var) {
        storage.getClass();
        list.getClass();
        y22Var.getClass();
        List listH = u96.h(DataMigrationInitializer.Companion.getInitializer(list));
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(storage, listH, replaceFileCorruptionHandler, y22Var);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ll3<? extends File> ll3Var) {
        serializer.getClass();
        ll3Var.getClass();
        return create$default(this, serializer, null, null, null, ll3Var, 14, null);
    }
}
