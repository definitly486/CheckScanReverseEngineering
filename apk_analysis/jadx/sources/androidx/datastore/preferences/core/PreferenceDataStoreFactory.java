package androidx.datastore.preferences.core;

import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.Storage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.gh4;
import defpackage.j46;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.rm9;
import defpackage.sh2;
import defpackage.y22;
import defpackage.z22;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreFactory {
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    /* JADX INFO: renamed from: androidx.datastore.preferences.core.PreferenceDataStoreFactory$createWithPath$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<File> {
        final /* synthetic */ ll3<j46> $produceFile;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ll3<j46> ll3Var) {
            super(0);
            this.$produceFile = ll3Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final File invoke() {
            return this.$produceFile.invoke().toFile();
        }
    }

    private PreferenceDataStoreFactory() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            list = kx2.b;
        }
        if ((i & 8) != 0) {
            y22Var = z22.a(Actual_jvmAndroidKt.ioDispatcher().plus(rm9.b()));
        }
        return preferenceDataStoreFactory.create((Storage<Preferences>) storage, (ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, y22Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore createWithPath$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 2) != 0) {
            list = kx2.b;
        }
        if ((i & 4) != 0) {
            y22Var = z22.a(Actual_jvmAndroidKt.ioDispatcher().plus(rm9.b()));
        }
        return preferenceDataStoreFactory.createWithPath(replaceFileCorruptionHandler, list, y22Var, ll3Var);
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, y22 y22Var, ll3<? extends File> ll3Var) {
        list.getClass();
        y22Var.getClass();
        ll3Var.getClass();
        return new PreferenceDataStore(create(new FileStorage(PreferencesFileSerializer.INSTANCE, null, new PreferenceDataStoreFactory$create$delegate$1(ll3Var), 2, null), replaceFileCorruptionHandler, list, y22Var));
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, y22 y22Var, ll3<j46> ll3Var) {
        list.getClass();
        y22Var.getClass();
        ll3Var.getClass();
        return create(replaceFileCorruptionHandler, list, y22Var, new AnonymousClass1(ll3Var));
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, ll3<j46> ll3Var) {
        ll3Var.getClass();
        return createWithPath$default(this, replaceFileCorruptionHandler, null, null, ll3Var, 6, null);
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, ll3<j46> ll3Var) {
        list.getClass();
        ll3Var.getClass();
        return createWithPath$default(this, replaceFileCorruptionHandler, list, null, ll3Var, 4, null);
    }

    public final DataStore<Preferences> createWithPath(ll3<j46> ll3Var) {
        ll3Var.getClass();
        return createWithPath$default(this, null, null, null, ll3Var, 7, null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage) {
        storage.getClass();
        return create$default(this, storage, (ReplaceFileCorruptionHandler) null, (List) null, (y22) null, 14, (Object) null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler) {
        storage.getClass();
        return create$default(this, storage, replaceFileCorruptionHandler, (List) null, (y22) null, 12, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 2) != 0) {
            list = kx2.b;
        }
        if ((i & 4) != 0) {
            oi2 oi2Var = qo2.a;
            y22Var = z22.a(sh2.c.plus(rm9.b()));
        }
        return preferenceDataStoreFactory.create((ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, y22Var, (ll3<? extends File>) ll3Var);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list) {
        storage.getClass();
        list.getClass();
        return create$default(this, storage, replaceFileCorruptionHandler, list, (y22) null, 8, (Object) null);
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, ll3<? extends File> ll3Var) {
        ll3Var.getClass();
        return create$default(this, replaceFileCorruptionHandler, (List) null, (y22) null, ll3Var, 6, (Object) null);
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, ll3<? extends File> ll3Var) {
        list.getClass();
        ll3Var.getClass();
        return create$default(this, replaceFileCorruptionHandler, list, (y22) null, ll3Var, 4, (Object) null);
    }

    public final DataStore<Preferences> create(ll3<? extends File> ll3Var) {
        ll3Var.getClass();
        return create$default(this, (ReplaceFileCorruptionHandler) null, (List) null, (y22) null, ll3Var, 7, (Object) null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, y22 y22Var) {
        storage.getClass();
        list.getClass();
        y22Var.getClass();
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.create(storage, replaceFileCorruptionHandler, list, y22Var));
    }
}
