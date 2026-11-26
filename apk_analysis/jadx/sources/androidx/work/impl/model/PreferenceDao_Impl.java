package androidx.work.impl.model;

import androidx.lifecycle.LiveData;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.ff6;
import defpackage.gf6;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.of3;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class PreferenceDao_Impl implements PreferenceDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<Preference> __insertAdapterOfPreference;

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.__db = roomDatabase;
        this.__insertAdapterOfPreference = new EntityInsertAdapter<Preference>() { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement sQLiteStatement, Preference preference) {
                sQLiteStatement.getClass();
                preference.getClass();
                sQLiteStatement.mo9365bindText(1, preference.getKey());
                Long value = preference.getValue();
                if (value == null) {
                    sQLiteStatement.mo9364bindNull(2);
                } else {
                    sQLiteStatement.mo9363bindLong(2, value.longValue());
                }
            }

            @Override // androidx.room.EntityInsertAdapter
            public String createQuery() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getLongValue$lambda$1(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            Long lValueOf = null;
            if (sQLiteStatementPrepare.step() && !sQLiteStatementPrepare.isNull(0)) {
                lValueOf = Long.valueOf(sQLiteStatementPrepare.getLong(0));
            }
            return lValueOf;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getObservableLongValue$lambda$2(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            Long lValueOf = null;
            if (sQLiteStatementPrepare.step() && !sQLiteStatementPrepare.isNull(0)) {
                lValueOf = Long.valueOf(sQLiteStatementPrepare.getLong(0));
            }
            return lValueOf;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertPreference$lambda$0(PreferenceDao_Impl preferenceDao_Impl, Preference preference, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        preferenceDao_Impl.__insertAdapterOfPreference.insert(sQLiteConnection, preference);
        return j59.a;
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long getLongValue(String str) {
        str.getClass();
        return (Long) DBUtil.performBlocking(this.__db, true, false, new gf6(str, 0));
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public LiveData<Long> getObservableLongValue(String str) {
        str.getClass();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"Preference"}, false, (nl3) new ff6(str, 0));
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void insertPreference(Preference preference) {
        preference.getClass();
        DBUtil.performBlocking(this.__db, false, true, new of3(1, this, preference));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<ne4<?>> getRequiredConverters() {
            return kx2.b;
        }

        private Companion() {
        }
    }
}
