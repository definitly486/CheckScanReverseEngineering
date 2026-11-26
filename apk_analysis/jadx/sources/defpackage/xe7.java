package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xe7 extends SQLiteOpenHelper {
    public static final String d = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";
    public static final int e = 7;
    public static final List<a> f = Arrays.asList(new qe7(), new re7(), new se7(), new te7(), new ue7(), new ve7(), new we7());
    public final int b;
    public boolean c;

    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    public xe7(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.c = false;
        this.b = i;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<a> list = f;
        if (i2 <= list.size()) {
            while (i < i2) {
                list.get(i).a(sQLiteDatabase);
                i++;
            }
        } else {
            StringBuilder sbF = bg.f(i, i2, "Migration from ", " to ", " was requested, but cannot be performed. Only ");
            sbF.append(list.size());
            sbF.append(" migrations are provided");
            throw new IllegalArgumentException(sbF.toString());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.c = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, 0, this.b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, 0, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (this.c) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, i, i2);
    }
}
