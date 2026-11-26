package androidx.room;

import android.content.Context;
import defpackage.aa4;
import defpackage.fg;
import defpackage.ll3;
import defpackage.ta8;

/* JADX INFO: loaded from: classes3.dex */
public final class Room {
    public static final Room INSTANCE = new Room();
    public static final String LOG_TAG = "ROOM";
    public static final String MASTER_TABLE_NAME = "room_master_table";

    private Room() {
    }

    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(Context context, Class<T> cls, String str) {
        context.getClass();
        cls.getClass();
        if (str == null || ta8.M(str)) {
            fg.c("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            return null;
        }
        if (!aa4.e(str, ":memory:")) {
            return new RoomDatabase.Builder<>(context, cls, str);
        }
        fg.c("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        return null;
    }

    public static RoomDatabase.Builder databaseBuilder$default(Room room, Context context, String str, ll3 ll3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            aa4.i();
            throw null;
        }
        context.getClass();
        str.getClass();
        ll3Var.getClass();
        if (ta8.M(str)) {
            throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        if (str.equals(":memory:")) {
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        aa4.i();
        throw null;
    }

    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(Context context, Class<T> cls) {
        context.getClass();
        cls.getClass();
        return new RoomDatabase.Builder<>(context, cls, null);
    }

    public static RoomDatabase.Builder inMemoryDatabaseBuilder$default(Room room, Context context, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            aa4.i();
            throw null;
        }
        context.getClass();
        ll3Var.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: androidx.room.Room$databaseBuilder$3, reason: invalid class name */
    public static final class AnonymousClass3 implements ll3 {
        public static final AnonymousClass3 INSTANCE = null;

        static {
            aa4.i();
            throw null;
        }

        @Override // defpackage.ll3
        public final RoomDatabase invoke() {
            aa4.i();
            throw null;
        }
    }

    /* JADX INFO: renamed from: androidx.room.Room$inMemoryDatabaseBuilder$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3 {
        public static final AnonymousClass1 INSTANCE = null;

        static {
            aa4.i();
            throw null;
        }

        @Override // defpackage.ll3
        public final RoomDatabase invoke() {
            aa4.i();
            throw null;
        }
    }

    public final <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(Context context, ll3<? extends T> ll3Var) {
        context.getClass();
        ll3Var.getClass();
        aa4.i();
        throw null;
    }

    public final <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(Context context, String str, ll3<? extends T> ll3Var) {
        context.getClass();
        str.getClass();
        ll3Var.getClass();
        if (!ta8.M(str)) {
            if (str.equals(":memory:")) {
                throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
            }
            aa4.i();
            throw null;
        }
        throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
    }
}
