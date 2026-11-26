package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.ResultReceiver;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class V6 {
    public final CounterConfigurationReporterType a;

    public V6(CounterConfigurationReporterType counterConfigurationReporterType) {
        this.a = counterConfigurationReporterType;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003e  */
    public final T6 a(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, int i, String str2, boolean z) {
        Cursor cursorQuery;
        ArrayList<ContentValues> arrayList;
        int iDelete;
        C1388xj c1388xj;
        C0781a4 c0781a4;
        Integer num;
        try {
            cursorQuery = sQLiteDatabase.query("events", new String[]{"global_number", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "event_description"}, str, strArr, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            ContentValues contentValues = new ContentValues();
                            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                            arrayList.add(contentValues);
                        }
                    } else {
                        arrayList = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        C0900ek c0900ek = Bj.a;
                        c0900ek.getClass();
                        c0900ek.a(new Cj("select_rows_to_delete_exception", th));
                        xo.a(cursorQuery);
                        arrayList = null;
                    } catch (Throwable th2) {
                        xo.a(cursorQuery);
                        throw th2;
                    }
                }
            } else {
                arrayList = null;
            }
            xo.a(cursorQuery);
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        try {
            iDelete = sQLiteDatabase.delete("events", str, strArr);
        } catch (Throwable unused) {
            iDelete = 0;
        }
        if (arrayList != null && arrayList.size() != 0 && iDelete == arrayList.size() && z) {
            C1438zj c1438zj = Fa.I.f;
            if (str2 != null && c1438zj != null) {
                CounterConfigurationReporterType counterConfigurationReporterType = this.a;
                synchronized (c1438zj) {
                    c1388xj = (C1388xj) c1438zj.c.get(str2);
                    if (c1388xj == null) {
                        c1388xj = new C1388xj(str2, c1438zj.b, counterConfigurationReporterType, c1438zj.a);
                        c1438zj.c.put(str2, c1388xj);
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    for (ContentValues contentValues2 : arrayList) {
                        Integer asInteger = contentValues2.getAsInteger("global_number");
                        Integer asInteger2 = contentValues2.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                        if (asInteger != null && asInteger2 != null) {
                            jSONArray.put(asInteger);
                            EnumC1176pb enumC1176pbA = EnumC1176pb.a(asInteger2.intValue());
                            if (enumC1176pbA == null) {
                                Map map = AbstractC0871dg.a;
                                num = null;
                            } else {
                                num = (Integer) AbstractC0871dg.c.get(enumC1176pbA);
                            }
                            jSONArray2.put(num);
                        }
                    }
                    jSONObject.put("global_number", jSONArray).put("event_type", jSONArray2);
                    JSONObject jSONObjectPut = new JSONObject().put("details", new JSONObject().put("reason", U6.a(i)).put("cleared", jSONObject).put("actual_deleted_number", iDelete));
                    PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(str2);
                    String string = jSONObjectPut.toString();
                    Set set = I9.a;
                    EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
                    c0781a4 = new C0781a4(string, "", 12290, 0, orCreatePublicLogger);
                } catch (Throwable unused2) {
                    c0781a4 = null;
                }
                if (c0781a4 != null && c1388xj.c != null) {
                    try {
                        CounterConfiguration counterConfiguration = new CounterConfiguration(c1388xj.a);
                        counterConfiguration.setReporterType(c1388xj.c);
                        c1388xj.d.a.reportData(1, c0781a4.d(new Mh(new Pf(c1388xj.b, (ResultReceiver) null), counterConfiguration, new O8(new Kl(LoggerStorage.getOrCreatePublicLogger(c1388xj.a), "Crash Environment")), null).c()));
                    } catch (Throwable unused3) {
                    }
                }
            }
        }
        return new T6(arrayList, iDelete);
    }
}
