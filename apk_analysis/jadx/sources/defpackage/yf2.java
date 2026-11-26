package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.my.target.b0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yf2 implements ListenerSet.Event, u97.a, gv9 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // u97.a
    public Object apply(Object obj) {
        u97 u97Var = (u97) this.b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        sQLiteDatabase.compileStatement((String) this.c).execute();
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
        while (cursorRawQuery.moveToNext()) {
            try {
                u97Var.o(cursorRawQuery.getInt(0), uu4.a.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        }
        cursorRawQuery.close();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    @Override // defpackage.gv9
    public void b() {
        b0 b0Var = (b0) this.b;
        b0Var.h.a.b((wv9) this.c);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onVideoDisabled((AnalyticsListener.EventTime) this.b, (DecoderCounters) this.c);
    }
}
