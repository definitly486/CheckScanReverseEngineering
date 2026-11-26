package yads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ok0 {
    public static final String d;
    public static final String[] e;
    public final dq5 a;
    public final Object b = new Object();
    public boolean c;

    static {
        int[] iArr = {3, 4};
        StringBuilder sb = new StringBuilder("state IN (");
        for (int i = 0; i < 2; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(iArr[i]);
        }
        sb.append(')');
        d = sb.toString();
        e = new String[]{TtmlNode.ATTR_ID, "mime_type", "uri", "stream_keys", "custom_cache_key", "data", RemoteConfigConstants.ResponseFieldKey.STATE, "start_time_ms", "update_time_ms", "content_length", DownloadService.KEY_STOP_REASON, "failure_reason", "percent_downloaded", "bytes_downloaded", "key_set_id"};
    }

    public ok0(dq5 dq5Var) {
        this.a = dq5Var;
    }

    public static kk2 b(Cursor cursor) {
        String str;
        String string = cursor.getString(0);
        string.getClass();
        String string2 = cursor.getString(2);
        string2.getClass();
        Uri uri = Uri.parse(string2);
        String string3 = cursor.getString(1);
        if ("dash".equals(string3)) {
            str = MimeTypes.APPLICATION_MPD;
        } else if ("hls".equals(string3)) {
            str = MimeTypes.APPLICATION_M3U8;
        } else {
            str = "ss".equals(string3) ? MimeTypes.APPLICATION_SS : MimeTypes.VIDEO_UNKNOWN;
        }
        tk2 tk2Var = new tk2(string, uri, str, a(cursor.getString(3)), null, cursor.getString(4), cursor.getBlob(5));
        rk2 rk2Var = new rk2();
        rk2Var.a = cursor.getLong(13);
        rk2Var.b = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new kk2(tk2Var, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, rk2Var);
    }

    public final void a(kk2 kk2Var, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = kk2Var.a.f;
        if (bArr == null) {
            bArr = u56.f;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(TtmlNode.ATTR_ID, kk2Var.a.b);
        contentValues.put("mime_type", kk2Var.a.d);
        contentValues.put("uri", kk2Var.a.c.toString());
        List list = kk2Var.a.e;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            bs5 bs5Var = (bs5) list.get(i);
            sb.append(bs5Var.b);
            sb.append('.');
            sb.append(bs5Var.c);
            sb.append('.');
            sb.append(bs5Var.d);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        contentValues.put("stream_keys", sb.toString());
        contentValues.put("custom_cache_key", kk2Var.a.g);
        contentValues.put("data", kk2Var.a.h);
        contentValues.put(RemoteConfigConstants.ResponseFieldKey.STATE, Integer.valueOf(kk2Var.b));
        contentValues.put("start_time_ms", Long.valueOf(kk2Var.c));
        contentValues.put("update_time_ms", Long.valueOf(kk2Var.d));
        contentValues.put("content_length", Long.valueOf(kk2Var.e));
        contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(kk2Var.f));
        contentValues.put("failure_reason", Integer.valueOf(kk2Var.g));
        contentValues.put("percent_downloaded", Float.valueOf(kk2Var.h.b));
        contentValues.put("bytes_downloaded", Long.valueOf(kk2Var.h.a));
        contentValues.put("key_set_id", bArr);
        sQLiteDatabase.replaceOrThrow("ExoPlayerDownloads", null, contentValues);
    }

    public final void c() {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(RemoteConfigConstants.ResponseFieldKey.STATE, (Integer) 5);
            contentValues.put("failure_reason", (Integer) 0);
            this.a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, null, null);
        } catch (Throwable th) {
            throw new cd0(th);
        }
    }

    public final void b() {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(RemoteConfigConstants.ResponseFieldKey.STATE, (Integer) 0);
            this.a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, "state = 2", null);
        } catch (Throwable th) {
            throw new cd0(th);
        }
    }

    public final kk2 b(String str) throws cd0 {
        a();
        try {
            Cursor cursorA = a("id = ?", new String[]{str});
            try {
                if (cursorA.getCount() == 0) {
                    cursorA.close();
                    return null;
                }
                cursorA.moveToNext();
                kk2 kk2VarA = a(cursorA);
                cursorA.close();
                return kk2VarA;
            } catch (Throwable th) {
                if (cursorA != null) {
                    try {
                        cursorA.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            throw new cd0(e2);
        }
        throw new cd0(e2);
    }

    public final void a(int i, String str) {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(i));
            this.a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, d + " AND id = ?", new String[]{str});
        } catch (Throwable th) {
            throw new cd0(th);
        }
    }

    public final void a() {
        synchronized (this.b) {
            if (this.c) {
                return;
            }
            try {
                int iA = l96.a(this.a.getReadableDatabase(), 0, "");
                if (iA != 3) {
                    SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        l96.a(writableDatabase, 0, "", 3);
                        ArrayList arrayListA = iA == 2 ? a(writableDatabase) : new ArrayList();
                        writableDatabase.execSQL("DROP TABLE IF EXISTS ExoPlayerDownloads");
                        writableDatabase.execSQL("CREATE TABLE ExoPlayerDownloads (id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)");
                        Iterator it = arrayListA.iterator();
                        while (it.hasNext()) {
                            a((kk2) it.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                this.c = true;
            } catch (Throwable th2) {
                throw new cd0(th2);
            }
        }
    }

    public final void a(kk2 kk2Var) {
        a();
        try {
            a(kk2Var, this.a.getWritableDatabase());
        } catch (Throwable th) {
            throw new cd0(th);
        }
    }

    public static ArrayList a(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (!u56.a(sQLiteDatabase, "ExoPlayerDownloads")) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabase.query("ExoPlayerDownloads", new String[]{TtmlNode.ATTR_ID, TJAdUnitConstants.String.TITLE, "uri", "stream_keys", "custom_cache_key", "data", RemoteConfigConstants.ResponseFieldKey.STATE, "start_time_ms", "update_time_ms", "content_length", DownloadService.KEY_STOP_REASON, "failure_reason", "percent_downloaded", "bytes_downloaded"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(b(cursorQuery));
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    public final Cursor a(String str, String[] strArr) {
        try {
            return this.a.getReadableDatabase().query("ExoPlayerDownloads", e, str, strArr, null, null, "start_time_ms ASC");
        } catch (Throwable th) {
            throw new cd0(th);
        }
    }

    public static kk2 a(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        String string = cursor.getString(0);
        string.getClass();
        String string2 = cursor.getString(2);
        string2.getClass();
        Uri uri = Uri.parse(string2);
        String string3 = cursor.getString(1);
        ArrayList arrayListA = a(cursor.getString(3));
        if (blob.length <= 0) {
            blob = null;
        }
        tk2 tk2Var = new tk2(string, uri, string3, arrayListA, blob, cursor.getString(4), cursor.getBlob(5));
        rk2 rk2Var = new rk2();
        rk2Var.a = cursor.getLong(13);
        rk2Var.b = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new kk2(tk2Var, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, rk2Var);
    }

    public static ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            int i = u56.a;
            for (String str2 : str.split(StringUtils.COMMA, -1)) {
                String[] strArrSplit = str2.split("\\.", -1);
                if (strArrSplit.length == 3) {
                    arrayList.add(new bs5(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
                } else {
                    defpackage.ud.g();
                    return null;
                }
            }
        }
        return arrayList;
    }
}
