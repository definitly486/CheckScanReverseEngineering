package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import androidx.datastore.preferences.core.Preferences;
import defpackage.by6;
import defpackage.nl3;
import defpackage.y22;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate implements by6<Context, DataStore<Preferences>> {
    private volatile DataStore<Preferences> INSTANCE;
    private final ReplaceFileCorruptionHandler<Preferences> corruptionHandler;
    private final Object lock;
    private final String name;
    private final nl3<Context, List<DataMigration<Preferences>>> produceMigrations;
    private final y22 scope;

    /* JADX WARN: Multi-variable type inference failed */
    public PreferenceDataStoreSingletonDelegate(String str, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, nl3<? super Context, ? extends List<? extends DataMigration<Preferences>>> nl3Var, y22 y22Var) {
        str.getClass();
        nl3Var.getClass();
        y22Var.getClass();
        this.name = str;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = nl3Var;
        this.scope = y22Var;
        this.lock = new Object();
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public DataStore<Preferences> getValue2(Context context, ze4<?> ze4Var) {
        DataStore<Preferences> dataStore;
        context.getClass();
        ze4Var.getClass();
        DataStore<Preferences> dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    Context applicationContext = context.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.INSTANCE;
                    ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler = this.corruptionHandler;
                    nl3<Context, List<DataMigration<Preferences>>> nl3Var = this.produceMigrations;
                    applicationContext.getClass();
                    this.INSTANCE = preferenceDataStoreFactory.create(replaceFileCorruptionHandler, nl3Var.invoke(applicationContext), this.scope, new PreferenceDataStoreSingletonDelegate$getValue$1$1(applicationContext, this));
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
    public /* bridge */ /* synthetic */ DataStore<Preferences> getValue(Context context, ze4 ze4Var) {
        return getValue2(context, (ze4<?>) ze4Var);
    }
}
