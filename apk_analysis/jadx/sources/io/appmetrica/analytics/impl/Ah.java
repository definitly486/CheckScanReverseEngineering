package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.m05;
import defpackage.m96;
import defpackage.mx2;
import defpackage.qn1;
import defpackage.x74;
import defpackage.y74;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTrimmer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.networktasks.internal.DefaultNetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.RequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.SendingDataTaskHelper;
import io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Ah implements UnderlyingNetworkTask {
    public final C0989i5 a;
    public C1401y7 c;
    public final Bh d;
    public If e;
    public final C0923fh f;
    public final PublicLogger g;
    public final C0949gh h;
    public final FullUrlFormer i;
    public final Nb j;
    public final RequestDataHolder k;
    public final ResponseDataHolder l;
    public final SendingDataTaskHelper m;
    public int n;
    public final LinkedHashMap b = new LinkedHashMap();
    public boolean o = false;

    public Ah(C0989i5 c0989i5, C0949gh c0949gh, Nb nb, FullUrlFormer<C1233rh> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this.m = new SendingDataTaskHelper(requestBodyEncrypter, new GZIPCompressor(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler());
        this.h = c0949gh;
        this.a = c0989i5;
        Bh bh = new Bh(c0989i5);
        this.d = bh;
        PublicLogger publicLoggerP = c0989i5.p();
        this.g = publicLoggerP;
        this.j = nb;
        this.k = requestDataHolder;
        this.l = responseDataHolder;
        this.i = fullUrlFormer;
        this.f = new C0923fh(bh, new BytesTrimmer(1024000, "event value in ReportTask", publicLoggerP), B1.a(), Fa.k().C());
    }

    public final void a(boolean z) {
        Bh bh = this.d;
        If r2 = this.e;
        C1251s9[] c1251s9Arr = r2.a.a;
        List list = r2.b;
        int i = this.n;
        Go go = bh.c;
        synchronized (go) {
            JSONObject jSONObjectA = go.a.a();
            if (jSONObjectA.optInt("report_request_id", -1) != i) {
                go.a.a(jSONObjectA.put("report_request_id", i));
            }
            Ho ho = go.a;
            Ho.a(ho.a);
            Ho.a(ho.b);
        }
        ArrayList arrayList = new ArrayList(c1251s9Arr.length);
        int length = c1251s9Arr.length;
        char c = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Long l = null;
            if (i2 >= length) {
                break;
            }
            C1251s9 c1251s9 = c1251s9Arr[i2];
            int i4 = i3 + 1;
            long jLongValue = ((Number) list.get(i3)).longValue();
            EnumC1160ol enumC1160ol = (EnumC1160ol) AbstractC0871dg.b.get(c1251s9.b.c);
            if (enumC1160ol == null) {
                enumC1160ol = EnumC1160ol.FOREGROUND;
            }
            C1200q9[] c1200q9Arr = c1251s9.c;
            if (c1200q9Arr.length != 0) {
                Long lValueOf = Long.valueOf(c1200q9Arr[c].a);
                x74 it = new y74(1, c1200q9Arr.length - 1, 1).iterator();
                l = lValueOf;
                while (it.d) {
                    List list2 = list;
                    C1251s9[] c1251s9Arr2 = c1251s9Arr;
                    Long lValueOf2 = Long.valueOf(c1200q9Arr[it.nextInt()].a);
                    if (l.compareTo(lValueOf2) < 0) {
                        l = lValueOf2;
                    }
                    c1251s9Arr = c1251s9Arr2;
                    list = list2;
                }
            }
            List list3 = list;
            C1251s9[] c1251s9Arr3 = c1251s9Arr;
            long jLongValue2 = l != null ? l.longValue() : 0L;
            C1200q9[] c1200q9Arr2 = c1251s9.c;
            if (c1200q9Arr2 != null) {
                for (C1200q9 c1200q9 : c1200q9Arr2) {
                }
            }
            arrayList.add(new Yk(jLongValue, enumC1160ol.a, jLongValue2, z));
            i2++;
            c1251s9Arr = c1251s9Arr3;
            i3 = i4;
            list = list3;
            c = 0;
        }
        Y6 y6 = bh.a;
        long jA = bh.b.a();
        y6.getClass();
        ArrayList<T6> arrayList2 = new ArrayList();
        String str = String.format(Locale.US, "%1$s = ? AND %2$s = ? AND %3$s <= ?", "session_id", "session_type", "number_in_session");
        y6.b.lock();
        try {
            SQLiteDatabase writableDatabase = y6.c.getWritableDatabase();
            if (writableDatabase != null) {
                if (H5.a.booleanValue()) {
                    y6.c();
                }
                writableDatabase.beginTransaction();
                try {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(y6.a(writableDatabase, str, (Yk) it2.next()));
                    }
                    writableDatabase.delete("sessions", F5.c, new String[]{String.valueOf(jA)});
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
        y6.b.unlock();
        int i5 = 0;
        for (T6 t6 : arrayList2) {
            if (t6.a != null) {
                ArrayList arrayList3 = new ArrayList();
                Iterator it3 = t6.a.iterator();
                while (it3.hasNext()) {
                    Integer asInteger = ((ContentValues) it3.next()).getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    asInteger.getClass();
                    arrayList3.add(asInteger);
                }
                Iterator it4 = y6.g.iterator();
                while (it4.hasNext()) {
                    ((InterfaceC0889e9) it4.next()).b(arrayList3);
                }
                List list4 = t6.a;
                for (int i6 = 0; i6 < list4.size(); i6++) {
                    ContentValues contentValues = (ContentValues) list4.get(i6);
                    Integer asInteger2 = contentValues.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    if (I9.d.contains(EnumC1176pb.a(asInteger2 != null ? asInteger2.intValue() : -1))) {
                        C1223r7 model = new C1249s7(null, 1, null).toModel(contentValues);
                        PublicLogger publicLogger = y6.e.m;
                        EnumC1176pb enumC1176pb = model.d;
                        C1198q7 c1198q7 = model.g;
                        publicLogger.info(AbstractC0896eg.a("Event removed from db", enumC1176pb, c1198q7.b, c1198q7.c), new Object[0]);
                    }
                }
            }
            i5 += t6.b;
        }
        y6.f.addAndGet(-i5);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final String description() {
        return "ReportTask_" + ApiKeyUtils.createPartialApiKey(this.a.b.b);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final FullUrlFormer<?> getFullUrlFormer() {
        return this.i;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RequestDataHolder getRequestDataHolder() {
        return this.k;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final ResponseDataHolder getResponseDataHolder() {
        return this.l;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RetryPolicyConfig getRetryPolicyConfig() {
        return ((C1233rh) this.a.k.a()).getRetryPolicyConfig();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final SSLSocketFactory getSslSocketFactory() {
        ((Ql) Fa.I.z()).getClass();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x028d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0295  */
    /* JADX WARN: Code duplicated, block: B:105:0x0299  */
    /* JADX WARN: Code duplicated, block: B:108:0x02a4 A[Catch: all -> 0x02c1, TryCatch #1 {all -> 0x02c1, blocks: (B:106:0x029e, B:108:0x02a4, B:110:0x02b8, B:113:0x02c4, B:114:0x02ca), top: B:203:0x029e, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x02b8 A[Catch: all -> 0x02c1, TryCatch #1 {all -> 0x02c1, blocks: (B:106:0x029e, B:108:0x02a4, B:110:0x02b8, B:113:0x02c4, B:114:0x02ca), top: B:203:0x029e, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:127:0x0304  */
    /* JADX WARN: Code duplicated, block: B:129:0x031d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0355  */
    /* JADX WARN: Code duplicated, block: B:138:0x036b  */
    /* JADX WARN: Code duplicated, block: B:144:0x038f  */
    /* JADX WARN: Code duplicated, block: B:145:0x0392  */
    /* JADX WARN: Code duplicated, block: B:152:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:156:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:162:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:164:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:170:0x040d  */
    /* JADX WARN: Code duplicated, block: B:171:0x0410  */
    /* JADX WARN: Code duplicated, block: B:174:0x041f  */
    /* JADX WARN: Code duplicated, block: B:180:0x045c A[LOOP:5: B:179:0x045a->B:180:0x045c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x047a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:186:0x047d  */
    /* JADX WARN: Code duplicated, block: B:219:0x03f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x03ba A[EDGE_INSN: B:244:0x03ba->B:160:0x03ba BREAK  A[LOOP:4: B:123:0x02ef->B:137:0x0362], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x03b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x03af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d8 A[LOOP:3: B:83:0x01d2->B:85:0x01d8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:89:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:92:0x020b A[Catch: all -> 0x028d, TryCatch #5 {all -> 0x028d, blocks: (B:90:0x0203, B:92:0x020b, B:93:0x0221, B:95:0x0227, B:97:0x022f, B:98:0x0234, B:99:0x0274), top: B:211:0x0203 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0227 A[Catch: all -> 0x028d, TryCatch #5 {all -> 0x028d, blocks: (B:90:0x0203, B:92:0x020b, B:93:0x0221, B:95:0x0227, B:97:0x022f, B:98:0x0234, B:99:0x0274), top: B:211:0x0203 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x022f A[Catch: all -> 0x028d, TryCatch #5 {all -> 0x028d, blocks: (B:90:0x0203, B:92:0x020b, B:93:0x0221, B:95:0x0227, B:97:0x022f, B:98:0x0234, B:99:0x0274), top: B:211:0x0203 }] */
    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final boolean onCreateTask() {
        Cursor cursorRawQuery;
        int i;
        int iComputeUInt64Size;
        int iB;
        LinkedHashMap linkedHashMap;
        Y6 y6;
        Cursor cursorQuery;
        SQLiteDatabase readableDatabase;
        StringBuilder sb;
        String[] strArr;
        int i2;
        LinkedHashMap linkedHashMap2;
        Map map;
        Long asLong;
        Object arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Iterator it;
        int i3;
        int i4;
        Integer num;
        C1061l0 c1061l0;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        An an;
        C0872dh c0872dh;
        int length;
        ArrayList arrayList4;
        Iterator<String> itKeys;
        int i5;
        C1044k9[] c1044k9Arr;
        String[] strArr2;
        int length2;
        byte[][] bArr;
        int i6;
        If r3;
        C1411yh c1411yh;
        C1082ll c1082ll;
        List list;
        C1061l0 c1061l1;
        int i7;
        int i8;
        Integer num2;
        Ni niA;
        C1061l0 c1061l2;
        String str;
        Y6 y7 = this.d.a;
        y7.getClass();
        ArrayList arrayList5 = new ArrayList();
        y7.a.lock();
        try {
            SQLiteDatabase readableDatabase2 = y7.c.getReadableDatabase();
            if (readableDatabase2 != null) {
                cursorRawQuery = readableDatabase2.rawQuery(F5.b, null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursorRawQuery, contentValues);
                        arrayList5.add(contentValues);
                    } catch (Throwable unused) {
                        try {
                            arrayList5 = new ArrayList();
                            xo.a(cursorRawQuery);
                            y7.a.unlock();
                        } catch (Throwable th) {
                            xo.a(cursorRawQuery);
                            y7.a.unlock();
                            throw th;
                        }
                    }
                }
            } else {
                cursorRawQuery = null;
            }
            xo.a(cursorRawQuery);
            y7.a.unlock();
        } catch (Throwable unused2) {
            cursorRawQuery = null;
        }
        ContentValues contentValues2 = (ContentValues) qn1.V(arrayList5);
        if (contentValues2 == null) {
            return false;
        }
        this.b.clear();
        for (Map.Entry<String, Object> entry : contentValues2.valueSet()) {
            this.b.put(entry.getKey(), entry.getValue().toString());
        }
        String asString = contentValues2.getAsString("report_request_parameters");
        if (TextUtils.isEmpty(asString)) {
            C1401y7 c1401y7 = new C1401y7();
            this.c = c1401y7;
            this.h.c = c1401y7;
        } else {
            try {
                C1401y7 c1401y8 = new C1401y7(new C1279tb(asString));
                this.c = c1401y8;
                this.h.c = c1401y8;
            } catch (Throwable unused3) {
                C1401y7 c1401y9 = new C1401y7();
                this.c = c1401y9;
                this.h.c = c1401y9;
            }
        }
        C1233rh config = this.j.getConfig();
        List list2 = config.w;
        if (xo.a((Collection) list2)) {
            return false;
        }
        this.i.setHosts(config.q);
        boolean z = true;
        if (!config.v() || xo.a((Collection) this.i.getAllHosts())) {
            this.o = true;
            return false;
        }
        C1401y7 c1401y10 = this.c;
        if (c1401y10 == null) {
            c1401y10 = new C1401y7();
        }
        C1401y7 c1401y11 = c1401y10;
        C0923fh c0923fh = this.f;
        LinkedHashMap linkedHashMap3 = this.b;
        C1436zh c1436zh = c0923fh.b;
        c1436zh.getClass();
        ArrayList arrayList6 = new ArrayList();
        int i9 = 2;
        int i10 = 100;
        try {
            Iterator it2 = c1436zh.a.a(linkedHashMap3).iterator();
            iComputeUInt64Size = 0;
            while (true) {
                try {
                    if (it2.hasNext()) {
                        F7 f7 = (F7) it2.next();
                        if (arrayList6.size() < i10) {
                            Long l = f7.a;
                            if (l != null) {
                                E7 e7 = f7.d;
                                i = i10;
                                try {
                                    C1303u9 c1303u9A = AbstractC0871dg.a(e7.a, e7.b, e7.c);
                                    String locale = config.getLocale();
                                    EnumC1160ol enumC1160ol = f7.b;
                                    C1225r9 c1225r9 = new C1225r9();
                                    c1225r9.a = c1303u9A;
                                    c1225r9.b = locale;
                                    if (enumC1160ol != null) {
                                        Integer num3 = (Integer) AbstractC0871dg.a.get(enumC1160ol);
                                        c1225r9.c = num3 != null ? num3.intValue() : 0;
                                    }
                                    iComputeUInt64Size = iComputeUInt64Size + CodedOutputByteBufferNano.computeUInt64Size(1, Long.MAX_VALUE) + CodedOutputByteBufferNano.computeMessageSize(i9, c1225r9);
                                    if (iComputeUInt64Size >= 250880) {
                                        break;
                                    }
                                    EnumC1160ol enumC1160ol2 = (EnumC1160ol) AbstractC0871dg.b.get(c1225r9.c);
                                    if (enumC1160ol2 == null) {
                                        enumC1160ol2 = EnumC1160ol.FOREGROUND;
                                    }
                                    int i11 = i9;
                                    try {
                                        arrayList6.add(new C1411yh(l.longValue(), c1225r9, enumC1160ol2.a));
                                        i10 = i;
                                        i9 = i11;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        c1436zh.b.reportError("protobuf_serialization_error", th);
                                        ArrayList<C1411yh> arrayList7 = arrayList6;
                                        int iIntValue = Integer.valueOf(iComputeUInt64Size).intValue();
                                        iB = m05.b(kn1.q(arrayList7, 10));
                                        if (iB < 16) {
                                            iB = 16;
                                        }
                                        linkedHashMap = new LinkedHashMap(iB);
                                        for (C1411yh c1411yh2 : arrayList7) {
                                            linkedHashMap.put(Long.valueOf(c1411yh2.a), Integer.valueOf(c1411yh2.c));
                                        }
                                        y6 = c1436zh.a.a;
                                        y6.getClass();
                                        if (linkedHashMap.isEmpty()) {
                                            cursorQuery = null;
                                        } else {
                                            y6.a.lock();
                                            try {
                                                readableDatabase = y6.c.getReadableDatabase();
                                                if (readableDatabase != null) {
                                                    sb = new StringBuilder();
                                                    strArr = new String[linkedHashMap.size() * 2];
                                                    i2 = 0;
                                                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                                                        if (i2 > 0) {
                                                            sb.append(" OR ");
                                                        }
                                                        sb.append("(");
                                                        sb.append("session_id");
                                                        sb.append(" = ? AND ");
                                                        sb.append("session_type");
                                                        sb.append(" = ?)");
                                                        int i12 = i2 * 2;
                                                        strArr[i12] = Long.toString(((Long) entry2.getKey()).longValue());
                                                        strArr[i12 + 1] = Integer.toString(((Integer) entry2.getValue()).intValue());
                                                        i2++;
                                                    }
                                                    cursorQuery = readableDatabase.query("events", null, sb.toString(), strArr, null, null, "session_id ASC, number_in_session ASC", String.valueOf(i));
                                                } else {
                                                    cursorQuery = null;
                                                }
                                            } catch (Throwable unused4) {
                                            }
                                            y6.a.unlock();
                                        }
                                        if (cursorQuery == null) {
                                            map = mx2.b;
                                        } else {
                                            linkedHashMap2 = new LinkedHashMap();
                                            while (cursorQuery.moveToNext()) {
                                                try {
                                                    try {
                                                        ContentValues contentValues3 = new ContentValues();
                                                        DBUtils.cursorRowToContentValues(cursorQuery, contentValues3);
                                                        asLong = contentValues3.getAsLong("session_id");
                                                        arrayList = linkedHashMap2.get(asLong);
                                                        if (arrayList == null) {
                                                            arrayList = new ArrayList();
                                                            linkedHashMap2.put(asLong, arrayList);
                                                        }
                                                        ((List) arrayList).add(contentValues3);
                                                    } catch (Throwable th3) {
                                                        try {
                                                            throw th3;
                                                        } catch (Throwable th4) {
                                                            m96.c(cursorQuery, th3);
                                                            throw th4;
                                                        }
                                                    }
                                                } catch (Throwable unused5) {
                                                }
                                            }
                                            j59 j59Var = j59.a;
                                            cursorQuery.close();
                                            map = linkedHashMap2;
                                        }
                                        JSONObject jSONObject3 = new JSONObject();
                                        arrayList2 = new ArrayList();
                                        arrayList3 = new ArrayList();
                                        it = arrayList7.iterator();
                                        i3 = iIntValue;
                                        i4 = 0;
                                        num = null;
                                        c1061l0 = null;
                                        jSONObject = jSONObject3;
                                        while (true) {
                                            if (it.hasNext()) {
                                                z = z;
                                                c1411yh = (C1411yh) it.next();
                                                jSONObject2 = jSONObject;
                                                if (i4 < i) {
                                                    C1436zh c1436zh2 = c1436zh;
                                                    c1082ll = c1436zh2.c;
                                                    ArrayList arrayList8 = arrayList2;
                                                    ArrayList arrayList9 = arrayList3;
                                                    long j = c1411yh.a;
                                                    C1225r9 c1225r10 = c1411yh.b;
                                                    list = (List) map.get(Long.valueOf(j));
                                                    if (list == null) {
                                                        list = kx2.b;
                                                    }
                                                    int size = arrayList8.size();
                                                    c1061l1 = c1061l0;
                                                    Yg yg = new Yg(i3, i4, num);
                                                    c1082ll.getClass();
                                                    i7 = i4;
                                                    arrayList3 = arrayList9;
                                                    i8 = i3;
                                                    Map map2 = map;
                                                    arrayList2 = arrayList8;
                                                    num2 = num;
                                                    try {
                                                        niA = c1082ll.a(j, c1225r10, list, config, size, yg);
                                                    } catch (Throwable th5) {
                                                        c1082ll.b.reportError("protobuf_serialization_error", th5);
                                                        niA = null;
                                                    }
                                                    if (niA != null) {
                                                        i3 = niA.d;
                                                        i4 = niA.e;
                                                        num = niA.f;
                                                        if (c1061l1 != null) {
                                                        }
                                                        c1061l0 = niA.b;
                                                        arrayList3.add(Long.valueOf(c1411yh.a));
                                                        arrayList2.add(niA.a);
                                                        c1061l2 = niA.b;
                                                        if (c1061l2 != null) {
                                                            str = c1061l2.a;
                                                        } else {
                                                            str = null;
                                                        }
                                                        if (str != null) {
                                                            jSONObject = jSONObject2;
                                                        } else {
                                                            jSONObject = jSONObject2;
                                                        }
                                                        if (niA.c) {
                                                            break;
                                                        }
                                                    } else {
                                                        c1061l0 = c1061l1;
                                                        i4 = i7;
                                                        jSONObject = jSONObject2;
                                                        num = num2;
                                                        i3 = i8;
                                                    }
                                                    c1436zh = c1436zh2;
                                                    map = map2;
                                                    i = 100;
                                                } else {
                                                    arrayList2 = arrayList2;
                                                    arrayList3 = arrayList3;
                                                }
                                            } else {
                                                jSONObject2 = jSONObject;
                                                arrayList2 = arrayList2;
                                                arrayList3 = arrayList3;
                                                z = z;
                                            }
                                            jSONObject = jSONObject2;
                                            break;
                                        }
                                        if (arrayList2.isEmpty()) {
                                            r3 = null;
                                        } else {
                                            C0897eh c0897eh = c0923fh.c;
                                            c0897eh.getClass();
                                            C1328v9 c1328v9 = new C1328v9();
                                            C1122n9 c1122n9 = new C1122n9();
                                            c1122n9.a = WrapUtils.getOrDefaultIfEmpty(c1401y11.b, config.getUuid());
                                            c1122n9.b = WrapUtils.getOrDefaultIfEmpty(c1401y11.a, config.getDeviceId());
                                            c1328v9.b = c1122n9;
                                            an = c0897eh.a;
                                            c0872dh = new C0872dh(c1328v9);
                                            synchronized (an) {
                                                an.a.a(c0872dh);
                                                c1328v9.a = (C1251s9[]) arrayList2.toArray(new C1251s9[0]);
                                                length = jSONObject.length();
                                                if (length <= 0) {
                                                    c1044k9Arr = null;
                                                    i5 = 0;
                                                } else {
                                                    arrayList4 = new ArrayList(length);
                                                    itKeys = jSONObject.keys();
                                                    while (itKeys.hasNext()) {
                                                        String next = itKeys.next();
                                                        C1044k9 c1044k9 = new C1044k9();
                                                        c1044k9.a = next;
                                                        c1044k9.b = jSONObject.getString(next);
                                                        arrayList4.add(c1044k9);
                                                    }
                                                    i5 = 0;
                                                    c1044k9Arr = (C1044k9[]) arrayList4.toArray(new C1044k9[0]);
                                                }
                                                c1328v9.c = c1044k9Arr;
                                                c1328v9.e = (String[]) list2.toArray(new String[i5]);
                                                strArr2 = (String[]) config.x.toArray(new String[i5]);
                                                length2 = strArr2.length;
                                                bArr = new byte[length2][];
                                                for (i6 = 0; i6 < length2; i6++) {
                                                    bArr[i6] = StringUtils.getUTF8Bytes(strArr2[i6]);
                                                }
                                                c1328v9.f = bArr;
                                                r3 = new If(c1328v9, arrayList3, c0923fh.a.a());
                                            }
                                        }
                                        this.e = r3;
                                        if (r3 == null) {
                                            return false;
                                        }
                                        int i13 = r3.c;
                                        this.n = i13;
                                        this.h.e = i13;
                                        this.m.prepareAndSetPostData(MessageNano.toByteArray(r3.a));
                                        return z;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                }
                            }
                        }
                    }
                    i = i10;
                    break;
                } catch (Throwable th7) {
                    th = th7;
                    i = i10;
                }
            }
            while (true) {
                if (it.hasNext()) {
                    z = z;
                    c1411yh = (C1411yh) it.next();
                    jSONObject2 = jSONObject;
                    if (i4 < i) {
                        C1436zh c1436zh3 = c1436zh;
                        c1082ll = c1436zh3.c;
                        ArrayList arrayList10 = arrayList2;
                        ArrayList arrayList11 = arrayList3;
                        long j2 = c1411yh.a;
                        C1225r9 c1225r11 = c1411yh.b;
                        list = (List) map.get(Long.valueOf(j2));
                        if (list == null) {
                            list = kx2.b;
                        }
                        int size2 = arrayList10.size();
                        c1061l1 = c1061l0;
                        Yg yg2 = new Yg(i3, i4, num);
                        c1082ll.getClass();
                        i7 = i4;
                        arrayList3 = arrayList11;
                        i8 = i3;
                        Map map3 = map;
                        arrayList2 = arrayList10;
                        num2 = num;
                        niA = c1082ll.a(j2, c1225r11, list, config, size2, yg2);
                        if (niA != null) {
                            c1061l0 = c1061l1;
                            i4 = i7;
                            jSONObject = jSONObject2;
                            num = num2;
                            i3 = i8;
                        } else {
                            i3 = niA.d;
                            i4 = niA.e;
                            num = niA.f;
                            if (c1061l1 != null || c1061l1.equals(niA.b)) {
                                c1061l0 = niA.b;
                                arrayList3.add(Long.valueOf(c1411yh.a));
                                arrayList2.add(niA.a);
                                c1061l2 = niA.b;
                                if (c1061l2 != null) {
                                    str = c1061l2.a;
                                } else {
                                    str = null;
                                }
                                if (str != null || str.length() == 0) {
                                    jSONObject = jSONObject2;
                                } else {
                                    try {
                                        jSONObject = new JSONObject(str);
                                    } catch (Throwable unused6) {
                                        jSONObject = jSONObject2;
                                    }
                                }
                                if (niA.c) {
                                    break;
                                    break;
                                }
                            }
                        }
                        c1436zh = c1436zh3;
                        map = map3;
                        i = 100;
                    } else {
                        arrayList2 = arrayList2;
                        arrayList3 = arrayList3;
                    }
                } else {
                    jSONObject2 = jSONObject;
                    arrayList2 = arrayList2;
                    arrayList3 = arrayList3;
                    z = z;
                }
                jSONObject = jSONObject2;
                break;
            }
        } catch (Throwable th8) {
            th = th8;
            i = 100;
            iComputeUInt64Size = 0;
        }
        ArrayList<C1411yh> arrayList12 = arrayList6;
        int iIntValue2 = Integer.valueOf(iComputeUInt64Size).intValue();
        iB = m05.b(kn1.q(arrayList12, 10));
        if (iB < 16) {
            iB = 16;
        }
        linkedHashMap = new LinkedHashMap(iB);
        while (r0.hasNext()) {
            linkedHashMap.put(Long.valueOf(c1411yh2.a), Integer.valueOf(c1411yh2.c));
        }
        y6 = c1436zh.a.a;
        y6.getClass();
        if (linkedHashMap.isEmpty()) {
            cursorQuery = null;
        } else {
            y6.a.lock();
            readableDatabase = y6.c.getReadableDatabase();
            if (readableDatabase != null) {
                sb = new StringBuilder();
                strArr = new String[linkedHashMap.size() * 2];
                i2 = 0;
                while (r3.hasNext()) {
                    if (i2 > 0) {
                        sb.append(" OR ");
                    }
                    sb.append("(");
                    sb.append("session_id");
                    sb.append(" = ? AND ");
                    sb.append("session_type");
                    sb.append(" = ?)");
                    int i14 = i2 * 2;
                    strArr[i14] = Long.toString(((Long) entry2.getKey()).longValue());
                    strArr[i14 + 1] = Integer.toString(((Integer) entry2.getValue()).intValue());
                    i2++;
                }
                cursorQuery = readableDatabase.query("events", null, sb.toString(), strArr, null, null, "session_id ASC, number_in_session ASC", String.valueOf(i));
            } else {
                cursorQuery = null;
            }
            y6.a.unlock();
        }
        if (cursorQuery == null) {
            map = mx2.b;
        } else {
            linkedHashMap2 = new LinkedHashMap();
            while (cursorQuery.moveToNext()) {
                ContentValues contentValues4 = new ContentValues();
                DBUtils.cursorRowToContentValues(cursorQuery, contentValues4);
                asLong = contentValues4.getAsLong("session_id");
                arrayList = linkedHashMap2.get(asLong);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap2.put(asLong, arrayList);
                }
                ((List) arrayList).add(contentValues4);
            }
            j59 j59Var2 = j59.a;
            cursorQuery.close();
            map = linkedHashMap2;
        }
        JSONObject jSONObject4 = new JSONObject();
        arrayList2 = new ArrayList();
        arrayList3 = new ArrayList();
        it = arrayList12.iterator();
        i3 = iIntValue2;
        i4 = 0;
        num = null;
        c1061l0 = null;
        jSONObject = jSONObject4;
        if (arrayList2.isEmpty()) {
            r3 = null;
        } else {
            C0897eh c0897eh2 = c0923fh.c;
            c0897eh2.getClass();
            C1328v9 c1328v10 = new C1328v9();
            C1122n9 c1122n10 = new C1122n9();
            c1122n10.a = WrapUtils.getOrDefaultIfEmpty(c1401y11.b, config.getUuid());
            c1122n10.b = WrapUtils.getOrDefaultIfEmpty(c1401y11.a, config.getDeviceId());
            c1328v10.b = c1122n10;
            an = c0897eh2.a;
            c0872dh = new C0872dh(c1328v10);
            synchronized (an) {
                an.a.a(c0872dh);
            }
            c1328v10.a = (C1251s9[]) arrayList2.toArray(new C1251s9[0]);
            length = jSONObject.length();
            if (length <= 0) {
                c1044k9Arr = null;
                i5 = 0;
            } else {
                arrayList4 = new ArrayList(length);
                itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next2 = itKeys.next();
                    C1044k9 c1044k10 = new C1044k9();
                    c1044k10.a = next2;
                    c1044k10.b = jSONObject.getString(next2);
                    arrayList4.add(c1044k10);
                }
                i5 = 0;
                c1044k9Arr = (C1044k9[]) arrayList4.toArray(new C1044k9[0]);
            }
            c1328v10.c = c1044k9Arr;
            c1328v10.e = (String[]) list2.toArray(new String[i5]);
            strArr2 = (String[]) config.x.toArray(new String[i5]);
            length2 = strArr2.length;
            bArr = new byte[length2][];
            while (i6 < length2) {
                bArr[i6] = StringUtils.getUTF8Bytes(strArr2[i6]);
            }
            c1328v10.f = bArr;
            r3 = new If(c1328v10, arrayList3, c0923fh.a.a());
        }
        this.e = r3;
        if (r3 == null) {
            return false;
        }
        int i15 = r3.c;
        this.n = i15;
        this.h.e = i15;
        this.m.prepareAndSetPostData(MessageNano.toByteArray(r3.a));
        return z;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPerformRequest() {
        this.m.onPerformRequest();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPostRequestComplete(boolean z) {
        String strA;
        if (z) {
            a(false);
        } else if (this.l.getResponseCode() == 400) {
            a(true);
        }
        if (z) {
            for (C1251s9 c1251s9 : this.e.a.a) {
                for (C1200q9 c1200q9 : c1251s9.c) {
                    if (c1200q9 != null && (strA = AbstractC0896eg.a(c1200q9)) != null) {
                        this.g.info(strA, new Object[0]);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final boolean onRequestComplete() {
        return this.m.isResponseValid();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onRequestError(Throwable th) {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onShouldNotExecute() {
        this.o = true;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onSuccessfulTaskFinished() {
        this.o = true;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskAdded() {
        ((C1324v5) this.a.p).d.set(false);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskFinished() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskRemoved() {
        ((C1324v5) this.a.p).d.set(true);
        if (this.o) {
            ((C1324v5) this.a.p).f();
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onUnsuccessfulTaskFinished() {
    }
}
