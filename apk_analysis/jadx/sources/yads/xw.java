package yads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJKeyValueStorageKt;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class xw implements zw {
    public static final String[] e = {TtmlNode.ATTR_ID, TJKeyValueStorageKt.KEY, TtmlNode.TAG_METADATA};
    public final rp2 a;
    public final SparseArray b = new SparseArray();
    public String c;
    public String d;

    public xw(rp2 rp2Var) {
        this.a = rp2Var;
    }

    @Override // yads.zw
    public final void a(HashMap map, SparseArray sparseArray) throws cd0 {
        if (this.b.size() != 0) {
            defpackage.ud.g();
            return;
        }
        try {
            SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
            String str = this.c;
            str.getClass();
            if (l96.a(readableDatabase, 1, str) != 1) {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    String str2 = this.c;
                    str2.getClass();
                    l96.a(writableDatabase, 1, str2, 1);
                    String str3 = this.d;
                    str3.getClass();
                    writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str3));
                    writableDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            SQLiteDatabase readableDatabase2 = this.a.getReadableDatabase();
            String str4 = this.d;
            str4.getClass();
            Cursor cursorQuery = readableDatabase2.query(str4, e, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    int i = cursorQuery.getInt(0);
                    String string = cursorQuery.getString(1);
                    string.getClass();
                    map.put(string, new ww(i, string, ax.a(new DataInputStream(new ByteArrayInputStream(cursorQuery.getBlob(2))))));
                    sparseArray.put(i, string);
                } catch (Throwable th2) {
                    if (cursorQuery == null) {
                        throw th2;
                    }
                    try {
                        cursorQuery.close();
                        throw th2;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                        throw th2;
                    }
                }
            }
            cursorQuery.close();
        } catch (SQLiteException e2) {
            map.clear();
            sparseArray.clear();
            throw new cd0(e2);
        }
    }

    @Override // yads.zw
    public final void b(HashMap map) throws cd0 {
        try {
            SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                String str = this.c;
                str.getClass();
                l96.a(writableDatabase, 1, str, 1);
                String str2 = this.d;
                str2.getClass();
                writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str2));
                writableDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
                for (ww wwVar : map.values()) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    fk0 fk0Var = wwVar.e;
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    Set<Map.Entry> setEntrySet = fk0Var.b.entrySet();
                    dataOutputStream.writeInt(setEntrySet.size());
                    for (Map.Entry entry : setEntrySet) {
                        dataOutputStream.writeUTF((String) entry.getKey());
                        byte[] bArr = (byte[]) entry.getValue();
                        dataOutputStream.writeInt(bArr.length);
                        dataOutputStream.write(bArr);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(TtmlNode.ATTR_ID, Integer.valueOf(wwVar.a));
                    contentValues.put(TJKeyValueStorageKt.KEY, wwVar.b);
                    contentValues.put(TtmlNode.TAG_METADATA, byteArray);
                    String str3 = this.d;
                    str3.getClass();
                    writableDatabase.replaceOrThrow(str3, null, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                this.b.clear();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e2) {
            throw new cd0(e2);
        }
    }

    @Override // yads.zw
    public final boolean a() {
        SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
        String str = this.c;
        str.getClass();
        return l96.a(readableDatabase, 1, str) != -1;
    }

    @Override // yads.zw
    public final void a(long j) {
        String hexString = Long.toHexString(j);
        this.c = hexString;
        this.d = defpackage.bj.c("ExoPlayerCacheIndex", hexString);
    }

    @Override // yads.zw
    public final void b() throws cd0 {
        rp2 rp2Var = this.a;
        String str = this.c;
        str.getClass();
        try {
            String strConcat = "ExoPlayerCacheIndex".concat(str);
            SQLiteDatabase writableDatabase = rp2Var.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                int i = l96.a;
                try {
                    if (u56.a(writableDatabase, "ExoPlayerVersions")) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                    }
                    writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(strConcat));
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e2) {
                    throw new cd0(e2);
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        } catch (SQLException e3) {
            throw new cd0(e3);
        }
    }

    @Override // yads.zw
    public final void a(HashMap map) throws cd0 {
        if (this.b.size() == 0) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            for (int i = 0; i < this.b.size(); i++) {
                try {
                    ww wwVar = (ww) this.b.valueAt(i);
                    if (wwVar == null) {
                        int iKeyAt = this.b.keyAt(i);
                        String str = this.d;
                        str.getClass();
                        writableDatabase.delete(str, "id = ?", new String[]{Integer.toString(iKeyAt)});
                    } else {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        fk0 fk0Var = wwVar.e;
                        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                        Set<Map.Entry> setEntrySet = fk0Var.b.entrySet();
                        dataOutputStream.writeInt(setEntrySet.size());
                        for (Map.Entry entry : setEntrySet) {
                            dataOutputStream.writeUTF((String) entry.getKey());
                            byte[] bArr = (byte[]) entry.getValue();
                            dataOutputStream.writeInt(bArr.length);
                            dataOutputStream.write(bArr);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(TtmlNode.ATTR_ID, Integer.valueOf(wwVar.a));
                        contentValues.put(TJKeyValueStorageKt.KEY, wwVar.b);
                        contentValues.put(TtmlNode.TAG_METADATA, byteArray);
                        String str2 = this.d;
                        str2.getClass();
                        writableDatabase.replaceOrThrow(str2, null, contentValues);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            writableDatabase.setTransactionSuccessful();
            this.b.clear();
            writableDatabase.endTransaction();
        } catch (SQLException e2) {
            throw new cd0(e2);
        }
    }

    @Override // yads.zw
    public final void a(ww wwVar) {
        this.b.put(wwVar.a, wwVar);
    }

    @Override // yads.zw
    public final void a(ww wwVar, boolean z) {
        SparseArray sparseArray = this.b;
        if (z) {
            sparseArray.delete(wwVar.a);
        } else {
            sparseArray.put(wwVar.a, null);
        }
    }
}
