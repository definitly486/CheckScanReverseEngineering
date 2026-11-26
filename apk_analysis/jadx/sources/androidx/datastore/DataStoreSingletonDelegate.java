package androidx.datastore;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.core.okio.OkioSerializer;
import androidx.datastore.core.okio.OkioStorage;
import defpackage.by6;
import defpackage.nl3;
import defpackage.w93;
import defpackage.y22;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreSingletonDelegate<T> implements by6<Context, DataStore<T>> {
    private volatile DataStore<T> INSTANCE;
    private final ReplaceFileCorruptionHandler<T> corruptionHandler;
    private final String fileName;
    private final Object lock;
    private final nl3<Context, List<DataMigration<T>>> produceMigrations;
    private final y22 scope;
    private final OkioSerializer<T> serializer;

    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreSingletonDelegate(String str, OkioSerializer<T> okioSerializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, nl3<? super Context, ? extends List<? extends DataMigration<T>>> nl3Var, y22 y22Var) {
        str.getClass();
        okioSerializer.getClass();
        nl3Var.getClass();
        y22Var.getClass();
        this.fileName = str;
        this.serializer = okioSerializer;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = nl3Var;
        this.scope = y22Var;
        this.lock = new Object();
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public DataStore<T> getValue2(Context context, ze4<?> ze4Var) {
        DataStore<T> dataStore;
        context.getClass();
        ze4Var.getClass();
        DataStore<T> dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    Context applicationContext = context.getApplicationContext();
                    DataStoreFactory dataStoreFactory = DataStoreFactory.INSTANCE;
                    OkioStorage okioStorage = new OkioStorage(w93.b, this.serializer, null, new DataStoreSingletonDelegate$getValue$1$1(applicationContext, this), 4, null);
                    ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler = this.corruptionHandler;
                    nl3<Context, List<DataMigration<T>>> nl3Var = this.produceMigrations;
                    applicationContext.getClass();
                    this.INSTANCE = dataStoreFactory.create(okioStorage, replaceFileCorruptionHandler, nl3Var.invoke(applicationContext), this.scope);
                }
                dataStore = this.INSTANCE;
                dataStore.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return dataStore;
    }

    @Override // defpackage.by6
    public /* bridge */ /* synthetic */ Object getValue(Context context, ze4 ze4Var) {
        return getValue2(context, (ze4<?>) ze4Var);
    }
}
