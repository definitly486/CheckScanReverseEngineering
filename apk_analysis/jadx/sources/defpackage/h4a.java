package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class h4a extends SQLiteOpenHelper {
    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS metrics_event_table (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    uuid VARCHAR(36),\n    metrics_event BLOB);\n\nCREATE INDEX IF NOT EXISTS uuid_index\n    ON metrics_event_table(uuid)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws JSONException, IOException {
        if (i == 1 && i2 == 2 && sQLiteDatabase != null) {
            ArrayList<xea> arrayList = new ArrayList();
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("\n                SELECT * FROM metrics_event_table\n                ", new String[0]);
            try {
                int columnIndexOrThrow = cursorRawQuery.getColumnIndexOrThrow(CommonUrlParts.UUID);
                int columnIndexOrThrow2 = cursorRawQuery.getColumnIndexOrThrow("metrics_event");
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(columnIndexOrThrow);
                    string.getClass();
                    byte[] blob = cursorRawQuery.getBlob(columnIndexOrThrow2);
                    blob.getClass();
                    arrayList.add(l1.c(string, ra8.t(blob)));
                }
                j59 j59Var = j59.a;
                cursorRawQuery.close();
                if (arrayList.isEmpty()) {
                    return;
                }
                StringBuilder sb = new StringBuilder("\n                UPDATE metrics_event_table\n                SET metrics_event = CASE\n             ");
                ArrayList arrayList2 = new ArrayList();
                for (xea xeaVar : arrayList) {
                    xeaVar.getClass();
                    Map<String, String> map = xeaVar.c;
                    String str = xeaVar.b;
                    String str2 = xeaVar.a;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    str2.getClass();
                    str.getClass();
                    map.getClass();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", str);
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                    jSONObject.put("data", jSONObject2);
                    String string2 = jSONObject.toString(0);
                    string2.getClass();
                    byte[] bytes = string2.getBytes(ha1.b);
                    bytes.getClass();
                    String strS = yr.S(bytes, "", dn9.f, 30);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("name", str);
                    JSONObject jSONObject4 = new JSONObject();
                    for (Map.Entry<String, String> entry2 : map.entrySet()) {
                        jSONObject4.put(entry2.getKey(), entry2.getValue());
                    }
                    jSONObject3.put("data", jSONObject4);
                    jSONObject3.put("time", jCurrentTimeMillis);
                    String string3 = jSONObject3.toString(0);
                    string3.getClass();
                    byte[] bytes2 = string3.getBytes(ha1.b);
                    bytes2.getClass();
                    String strD = n2.d("\n                WHEN metrics_event = x'", strS, "' THEN x'", yr.S(bytes2, "", dn9.f, 30), "'\n            ");
                    arrayList2.add(str2);
                    sb.append(strD);
                }
                sb.append("\n                END\n                WHERE uuid IN (" + qn1.a0(arrayList2, null, null, null, 0, qz.f, 31) + ")\n            ");
                sQLiteDatabase.execSQL(na8.i(sb.toString()));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(cursorRawQuery, th);
                    throw th2;
                }
            }
        }
    }
}
