package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
import defpackage.by6;
import defpackage.gh4;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.rm9;
import defpackage.sh2;
import defpackage.y22;
import defpackage.z22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreDelegateKt {
    public static final by6<Context, DataStore<Preferences>> preferencesDataStore(String str, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, nl3<? super Context, ? extends List<? extends DataMigration<Preferences>>> nl3Var, y22 y22Var) {
        str.getClass();
        nl3Var.getClass();
        y22Var.getClass();
        return new PreferenceDataStoreSingletonDelegate(str, replaceFileCorruptionHandler, nl3Var, y22Var);
    }

    public static by6 preferencesDataStore$default(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, nl3 nl3Var, y22 y22Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            nl3Var = AnonymousClass1.INSTANCE;
        }
        if ((i & 8) != 0) {
            oi2 oi2Var = qo2.a;
            y22Var = z22.a(sh2.c.plus(rm9.b()));
        }
        return preferencesDataStore(str, replaceFileCorruptionHandler, nl3Var, y22Var);
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.PreferenceDataStoreDelegateKt$preferencesDataStore$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Context, List<? extends DataMigration<Preferences>>> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final List<DataMigration<Preferences>> invoke(Context context) {
            context.getClass();
            return kx2.b;
        }
    }
}
