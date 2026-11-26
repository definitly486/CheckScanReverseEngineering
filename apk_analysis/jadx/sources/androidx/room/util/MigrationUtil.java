package androidx.room.util;

import androidx.room.DatabaseConfiguration;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import defpackage.b36;
import defpackage.kx2;
import defpackage.mx2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class MigrationUtil {
    public static final boolean contains(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        migrationContainer.getClass();
        Map<Integer, Map<Integer, Migration>> migrations = migrationContainer.getMigrations();
        if (!migrations.containsKey(Integer.valueOf(i))) {
            return false;
        }
        Map<Integer, Migration> map = migrations.get(Integer.valueOf(i));
        if (map == null) {
            map = mx2.b;
        }
        return map.containsKey(Integer.valueOf(i2));
    }

    public static final List<Migration> findMigrationPath(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        migrationContainer.getClass();
        if (i == i2) {
            return kx2.b;
        }
        return findUpMigrationPath(migrationContainer, new ArrayList(), i2 > i, i, i2);
    }

    private static final List<Migration> findUpMigrationPath(RoomDatabase.MigrationContainer migrationContainer, List<Migration> list, boolean z, int i, int i2) {
        int iIntValue;
        boolean z2;
        while (true) {
            if (z) {
                if (i >= i2) {
                    return list;
                }
            } else if (i <= i2) {
                return list;
            }
            b36<Map<Integer, Migration>, Iterable<Integer>> sortedDescendingNodes$room_runtime = z ? migrationContainer.getSortedDescendingNodes$room_runtime(i) : migrationContainer.getSortedNodes$room_runtime(i);
            if (sortedDescendingNodes$room_runtime == null) {
                return null;
            }
            Map<Integer, Migration> map = sortedDescendingNodes$room_runtime.b;
            Iterator<Integer> it = sortedDescendingNodes$room_runtime.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    iIntValue = i;
                    z2 = false;
                    break;
                }
                iIntValue = it.next().intValue();
                if (!z) {
                    if (i2 <= iIntValue && iIntValue < i) {
                        Migration migration = map.get(Integer.valueOf(iIntValue));
                        migration.getClass();
                        list.add(migration);
                        z2 = true;
                        break;
                    }
                } else if (i + 1 <= iIntValue && iIntValue <= i2) {
                    Migration migration2 = map.get(Integer.valueOf(iIntValue));
                    migration2.getClass();
                    list.add(migration2);
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                return null;
            }
            i = iIntValue;
        }
    }

    public static final boolean isMigrationRequired(DatabaseConfiguration databaseConfiguration, int i, int i2) {
        databaseConfiguration.getClass();
        if (i > i2 && databaseConfiguration.allowDestructiveMigrationOnDowngrade) {
            return false;
        }
        Set<Integer> migrationNotRequiredFrom$room_runtime = databaseConfiguration.getMigrationNotRequiredFrom$room_runtime();
        return databaseConfiguration.requireMigration && (migrationNotRequiredFrom$room_runtime == null || !migrationNotRequiredFrom$room_runtime.contains(Integer.valueOf(i)));
    }
}
