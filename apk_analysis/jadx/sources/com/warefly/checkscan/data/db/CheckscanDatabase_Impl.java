package com.warefly.checkscan.data.db;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegateMarker;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import defpackage.ip5;
import defpackage.jg1;
import defpackage.jp5;
import defpackage.kp5;
import defpackage.ku6;
import defpackage.lp3;
import defpackage.r71;
import defpackage.rc1;
import defpackage.sc1;
import defpackage.tc1;
import defpackage.wf1;
import defpackage.x71;
import defpackage.zt6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class CheckscanDatabase_Impl extends CheckscanDatabase {
    public static final /* synthetic */ int l = 0;
    public volatile x71 h;
    public volatile jg1 i;
    public volatile kp5 j;
    public volatile ku6 k;

    @Override // androidx.room.RoomDatabase
    public final void clearAllTables() {
        performClear(true, "product_categories", "cheque_requests", "geofence_zones", "notifications", "purchases_table", "purchases_submit_table", "purchases_bank_info_table", "purchases_shop_info_table");
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "product_categories", "cheque_requests", "geofence_zones", "notifications", "purchases_table", "purchases_submit_table", "purchases_bank_info_table", "purchases_shop_info_table");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegateMarker createOpenDelegate() {
        return new tc1(this);
    }

    @Override // com.warefly.checkscan.data.db.CheckscanDatabase
    public final r71 e() {
        x71 x71Var;
        if (this.h != null) {
            return this.h;
        }
        synchronized (this) {
            try {
                if (this.h == null) {
                    this.h = new x71(this);
                }
                x71Var = this.h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return x71Var;
    }

    @Override // com.warefly.checkscan.data.db.CheckscanDatabase
    public final wf1 f() {
        jg1 jg1Var;
        if (this.i != null) {
            return this.i;
        }
        synchronized (this) {
            try {
                if (this.i == null) {
                    this.i = new jg1(this);
                }
                jg1Var = this.i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jg1Var;
    }

    @Override // com.warefly.checkscan.data.db.CheckscanDatabase
    public final ip5 g() {
        kp5 kp5Var;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            try {
                if (this.j == null) {
                    kp5 kp5Var2 = new kp5();
                    new jp5();
                    this.j = kp5Var2;
                }
                kp5Var = this.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kp5Var;
    }

    @Override // androidx.room.RoomDatabase
    public final List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new sc1());
        arrayList.add(new rc1());
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        List list = Collections.EMPTY_LIST;
        map.put(r71.class, list);
        map.put(wf1.class, list);
        map.put(lp3.class, list);
        map.put(ip5.class, list);
        map.put(zt6.class, list);
        return map;
    }

    @Override // com.warefly.checkscan.data.db.CheckscanDatabase
    public final zt6 h() {
        ku6 ku6Var;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            try {
                if (this.k == null) {
                    this.k = new ku6(this);
                }
                ku6Var = this.k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ku6Var;
    }
}
