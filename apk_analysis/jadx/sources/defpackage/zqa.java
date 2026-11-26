package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzahn;
import com.google.android.gms.internal.measurement.zzfe;
import com.google.android.gms.internal.measurement.zzff;
import com.google.android.gms.internal.measurement.zzfm;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzhg;
import com.google.android.gms.internal.measurement.zzhq;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzih;
import com.google.android.gms.internal.measurement.zzii;
import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zziu;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpk;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zqa extends lac {
    public String d;
    public HashSet e;
    public ArrayMap f;
    public Long g;
    public Long h;

    @Override // defpackage.lac
    public final void b() {
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0242 A[LOOP:20: B:90:0x01f2->B:107:0x0242, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:122:0x0274  */
    /* JADX WARN: Code duplicated, block: B:126:0x027e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0289  */
    /* JADX WARN: Code duplicated, block: B:130:0x0294  */
    /* JADX WARN: Code duplicated, block: B:136:0x02c2 A[Catch: all -> 0x02dd, SQLiteException -> 0x02df, LOOP:11: B:136:0x02c2->B:573:?, LOOP_START, TryCatch #6 {SQLiteException -> 0x02df, blocks: (B:134:0x02bc, B:136:0x02c2, B:138:0x02d3, B:144:0x02e1, B:147:0x02f6), top: B:483:0x02bc }] */
    /* JADX WARN: Code duplicated, block: B:138:0x02d3 A[Catch: all -> 0x02dd, SQLiteException -> 0x02df, TryCatch #6 {SQLiteException -> 0x02df, blocks: (B:134:0x02bc, B:136:0x02c2, B:138:0x02d3, B:144:0x02e1, B:147:0x02f6), top: B:483:0x02bc }] */
    /* JADX WARN: Code duplicated, block: B:147:0x02f6 A[Catch: all -> 0x02dd, SQLiteException -> 0x02df, TRY_ENTER, TRY_LEAVE, TryCatch #6 {SQLiteException -> 0x02df, blocks: (B:134:0x02bc, B:136:0x02c2, B:138:0x02d3, B:144:0x02e1, B:147:0x02f6), top: B:483:0x02bc }] */
    /* JADX WARN: Code duplicated, block: B:164:0x0336  */
    /* JADX WARN: Code duplicated, block: B:167:0x0344  */
    /* JADX WARN: Code duplicated, block: B:169:0x035b  */
    /* JADX WARN: Code duplicated, block: B:195:0x0434  */
    /* JADX WARN: Code duplicated, block: B:199:0x0445  */
    /* JADX WARN: Code duplicated, block: B:201:0x0465  */
    /* JADX WARN: Code duplicated, block: B:207:0x047c  */
    /* JADX WARN: Code duplicated, block: B:211:0x0498  */
    /* JADX WARN: Code duplicated, block: B:212:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:216:0x04af  */
    /* JADX WARN: Code duplicated, block: B:222:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:228:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:231:0x0505  */
    /* JADX WARN: Code duplicated, block: B:233:0x050f  */
    /* JADX WARN: Code duplicated, block: B:235:0x052f  */
    /* JADX WARN: Code duplicated, block: B:236:0x0533  */
    /* JADX WARN: Code duplicated, block: B:241:0x054c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:252:0x056b  */
    /* JADX WARN: Code duplicated, block: B:254:0x0587  */
    /* JADX WARN: Code duplicated, block: B:257:0x0599  */
    /* JADX WARN: Code duplicated, block: B:260:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:267:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:270:0x0602  */
    /* JADX WARN: Code duplicated, block: B:276:0x0638  */
    /* JADX WARN: Code duplicated, block: B:282:0x0679  */
    /* JADX WARN: Code duplicated, block: B:289:0x06a1  */
    /* JADX WARN: Code duplicated, block: B:295:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:306:0x06dd A[LOOP:8: B:283:0x067b->B:306:0x06dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:307:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:309:0x06e6 A[PHI: r0 r20 r22
      0x06e6: PHI (r0v77 java.util.Map) = (r0v79 java.util.Map), (r0v87 java.util.Map) binds: [B:322:0x0712, B:308:0x06e4] A[DONT_GENERATE, DONT_INLINE]
      0x06e6: PHI (r20v11 android.database.Cursor) = (r20v12 android.database.Cursor), (r20v16 android.database.Cursor) binds: [B:322:0x0712, B:308:0x06e4] A[DONT_GENERATE, DONT_INLINE]
      0x06e6: PHI (r22v9 qwa) = (r22v10 qwa), (r22v13 qwa) binds: [B:322:0x0712, B:308:0x06e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:328:0x071f  */
    /* JADX WARN: Code duplicated, block: B:332:0x0733  */
    /* JADX WARN: Code duplicated, block: B:338:0x0763  */
    /* JADX WARN: Code duplicated, block: B:340:0x0790  */
    /* JADX WARN: Code duplicated, block: B:342:0x0797  */
    /* JADX WARN: Code duplicated, block: B:345:0x07a8 A[LOOP:10: B:336:0x075d->B:345:0x07a8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:349:0x07cc  */
    /* JADX WARN: Code duplicated, block: B:353:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:356:0x07ee  */
    /* JADX WARN: Code duplicated, block: B:359:0x07fd  */
    /* JADX WARN: Code duplicated, block: B:361:0x0810  */
    /* JADX WARN: Code duplicated, block: B:365:0x0849 A[Catch: all -> 0x087a, SQLiteException -> 0x088a, LOOP:3: B:365:0x0849->B:387:0x08af, LOOP_START, PHI: r4 r7
      0x0849: PHI (r4v38 java.util.Iterator) = (r4v31 java.util.Iterator), (r4v41 java.util.Iterator) binds: [B:364:0x0847, B:387:0x08af] A[DONT_GENERATE, DONT_INLINE]
      0x0849: PHI (r7v50 java.lang.String) = (r7v41 java.lang.String), (r7v52 java.lang.String) binds: [B:364:0x0847, B:387:0x08af] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #15 {all -> 0x087a, blocks: (B:363:0x0843, B:365:0x0849, B:366:0x084e, B:368:0x085f, B:371:0x0871, B:377:0x0884, B:384:0x08a4, B:381:0x088f, B:383:0x089d, B:391:0x08ba), top: B:497:0x0843 }] */
    /* JADX WARN: Code duplicated, block: B:370:0x086f  */
    /* JADX WARN: Code duplicated, block: B:376:0x0880  */
    /* JADX WARN: Code duplicated, block: B:387:0x08af A[LOOP:3: B:365:0x0849->B:387:0x08af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:390:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:403:0x08e2  */
    /* JADX WARN: Code duplicated, block: B:407:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:409:0x08f0  */
    /* JADX WARN: Code duplicated, block: B:413:0x0900  */
    /* JADX WARN: Code duplicated, block: B:417:0x0921  */
    /* JADX WARN: Code duplicated, block: B:420:0x0932  */
    /* JADX WARN: Code duplicated, block: B:422:0x0947  */
    /* JADX WARN: Code duplicated, block: B:424:0x0955  */
    /* JADX WARN: Code duplicated, block: B:426:0x0960  */
    /* JADX WARN: Code duplicated, block: B:428:0x098b  */
    /* JADX WARN: Code duplicated, block: B:431:0x0995  */
    /* JADX WARN: Code duplicated, block: B:444:0x09ec  */
    /* JADX WARN: Code duplicated, block: B:445:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:449:0x0a06 A[PHI: r16 r38
      0x0a06: PHI (r16v18 java.lang.String) = (r16v19 java.lang.String), (r2v40 java.lang.String) binds: [B:448:0x0a04, B:446:0x09f6] A[DONT_GENERATE, DONT_INLINE]
      0x0a06: PHI (r38v3 java.util.Map) = (r38v4 java.util.Map), (r0v121 java.util.Map) binds: [B:448:0x0a04, B:446:0x09f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:454:0x0a2b  */
    /* JADX WARN: Code duplicated, block: B:467:0x0aaf  */
    /* JADX WARN: Code duplicated, block: B:470:0x0ab7  */
    /* JADX WARN: Code duplicated, block: B:542:0x08aa A[EDGE_INSN: B:542:0x08aa->B:386:0x08aa BREAK  A[LOOP:3: B:365:0x0849->B:387:0x08af], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:543:0x0912 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:545:0x0a0b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x0a00 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:0x09d8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x0a85 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x0a25 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:0x0610 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:0x0627 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:560:0x05fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:561:0x05fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x06d8 A[EDGE_INSN: B:563:0x06d8->B:305:0x06d8 BREAK  A[LOOP:8: B:283:0x067b->B:306:0x06dd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x0751 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:566:0x0745 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:570:0x07c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:571:0x07ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:575:0x0488 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x0476 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:0x04d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x04c0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x05ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x0361 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x023e A[EDGE_INSN: B:609:0x023e->B:106:0x023e BREAK  A[LOOP:20: B:90:0x01f2->B:107:0x0242], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x018f  */
    /* JADX WARN: Code duplicated, block: B:72:0x0197  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d1 A[Catch: all -> 0x01dd, SQLiteException -> 0x01e0, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x01e0, blocks: (B:77:0x01cb, B:79:0x01d1, B:88:0x01eb), top: B:481:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01eb A[Catch: all -> 0x01dd, SQLiteException -> 0x01e0, TRY_ENTER, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x01e0, blocks: (B:77:0x01cb, B:79:0x01d1, B:88:0x01eb), top: B:481:0x01cb }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v21 */
    /* JADX WARN: Type inference failed for: r18v24 */
    /* JADX WARN: Type inference failed for: r18v25 */
    /* JADX WARN: Type inference failed for: r18v26 */
    /* JADX WARN: Type inference failed for: r18v27 */
    /* JADX WARN: Type inference failed for: r18v29 */
    /* JADX WARN: Type inference failed for: r18v30 */
    /* JADX WARN: Type inference failed for: r18v31 */
    /* JADX WARN: Type inference failed for: r18v32 */
    /* JADX WARN: Type inference failed for: r18v33 */
    /* JADX WARN: Type inference failed for: r18v34, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r18v38 */
    /* JADX WARN: Type inference failed for: r18v39 */
    /* JADX WARN: Type inference failed for: r18v40 */
    /* JADX WARN: Type inference failed for: r18v41 */
    /* JADX WARN: Type inference failed for: r18v42 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v62 */
    /* JADX WARN: Type inference failed for: r2v63, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v64, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r2v67, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82 */
    /* JADX WARN: Type inference failed for: r3v64, types: [com.google.android.gms.measurement.internal.zzgs] */
    /* JADX WARN: Type inference failed for: r4v36, types: [com.google.android.gms.measurement.internal.zzgs] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v57, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r7v60 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.String] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final ArrayList c(String str, List list, List list2, Long l, Long l2, boolean z) throws Throwable {
        boolean z2;
        boolean z3;
        String str2;
        Map arrayMap;
        ?? r2;
        zzic zzicVar;
        Cursor cursorQuery;
        ?? r17;
        String str3;
        Object obj;
        zzic zzicVar2;
        Map arrayMap2;
        String str4;
        zzic zzicVar3;
        Map map;
        String str5;
        zzii zziiVar;
        BitSet bitSet;
        BitSet bitSet2;
        ArrayMap arrayMap3;
        zzii zziiVar2;
        ArrayMap arrayMap4;
        List<zzff> list3;
        long jLongValue;
        Integer numValueOf;
        int i;
        boolean z4;
        Iterator it;
        zzik zzikVar;
        Long lValueOf;
        kva kvaVarZzj;
        String str6;
        Map arrayMap5;
        ?? r7;
        Cursor cursorRawQuery;
        ArrayMap arrayMap6;
        Iterator it2;
        Integer num;
        zzii zziiVar3;
        List list4;
        Map map2;
        Iterator it3;
        zzic zzicVar4;
        Integer numValueOf2;
        List arrayList;
        String str7;
        String str8;
        mic micVar;
        ArrayMap arrayMap7;
        Iterator it4;
        zzhs zzhsVar;
        zzhs zzhsVarA;
        qwa qwaVarH;
        zzpg zzpgVar;
        long j;
        String strZzd;
        Map map3;
        qwa qwaVar;
        Iterator it5;
        Integer num2;
        int iIntValue;
        Iterator it6;
        boolean z5;
        Map map4;
        Iterator it7;
        ArrayMap arrayMap8;
        long j2;
        toa toaVar;
        int iZzb;
        whc whcVar;
        boolean z6;
        boolean zG;
        String str9;
        ArrayMap arrayMap9;
        String str10;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursorQuery2;
        Integer numValueOf3;
        List list5;
        List arrayList2;
        zzpg zzpgVar2;
        ArrayList arrayList3;
        kva kvaVarZzj2;
        String str11;
        zzic zzicVar5;
        ContentValues contentValues;
        ArrayMap arrayMap10;
        Iterator it8;
        String strZzc;
        Map map5;
        Iterator it9;
        Iterator it10;
        boolean zG2;
        zzfn zzfnVar;
        Integer numValueOf4;
        bqa bqaVar;
        Integer numValueOf5;
        String str12;
        ArrayMap arrayMap11;
        Cursor cursor3;
        String str13;
        Cursor cursorQuery3;
        Integer numValueOf6;
        List list6;
        List arrayList4;
        int i2;
        zzic zzicVar6;
        Object obj2;
        ?? r8;
        ?? r3;
        ?? r18;
        ?? r19;
        List arrayList5;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.d = str;
        this.e = new HashSet();
        this.f = new ArrayMap();
        this.g = l;
        this.h = l2;
        Iterator it11 = list.iterator();
        while (true) {
            if (!it11.hasNext()) {
                z2 = false;
                break;
            }
            if ("_s".equals(((zzhs) it11.next()).zzd())) {
                z2 = true;
                break;
            }
        }
        zzahn.zza();
        zzic zzicVar7 = this.a;
        boolean zZzp = zzicVar7.zzc().zzp(this.d, zzfy.zzaF);
        zzahn.zza();
        boolean zZzp2 = zzicVar7.zzc().zzp(this.d, zzfy.zzaE);
        String str14 = "events";
        zzpg zzpgVar3 = this.b;
        if (z2) {
            kva kvaVarZzj3 = zzpgVar3.zzj();
            String str15 = this.d;
            kvaVarZzj3.a();
            kvaVarZzj3.zzg();
            Preconditions.checkNotEmpty(str15);
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("current_session_count", (Integer) 0);
            try {
                kvaVarZzj3.M().update("events", contentValues2, "app_id = ?", new String[]{str15});
            } catch (SQLiteException e) {
                kvaVarZzj3.a.zzaW().zzb().zzc("Error resetting session-scoped event counts. appId", zzgu.d(str15), e);
            }
        }
        Map map6 = Collections.EMPTY_MAP;
        String str16 = "Failed to merge filter. appId";
        Object objD = "Database error querying filters. appId";
        String str17 = "audience_id";
        try {
            try {
                try {
                    if (zZzp2 && zZzp) {
                        kva kvaVarZzj4 = zzpgVar3.zzj();
                        String str18 = this.d;
                        Preconditions.checkNotEmpty(str18);
                        arrayMap = new ArrayMap();
                        SQLiteDatabase sQLiteDatabaseM = kvaVarZzj4.M();
                        zzic zzicVar8 = kvaVarZzj4.a;
                        try {
                            try {
                                String[] strArr = {"audience_id", "data"};
                                z3 = z2;
                                try {
                                    ?? Query = sQLiteDatabaseM.query("event_filters", strArr, "app_id=?", new String[]{str18}, null, null, null);
                                    try {
                                        try {
                                            if (Query.moveToFirst()) {
                                                str2 = "data";
                                                Query = Query;
                                                ?? r110 = strArr;
                                                while (true) {
                                                    try {
                                                        try {
                                                            zzff zzffVar = (zzff) ((zzfe) zzpk.H(zzff.zzn(), Query.getBlob(1))).zzbd();
                                                            if (zzffVar.zzh()) {
                                                                Integer numValueOf7 = Integer.valueOf(Query.getInt(0));
                                                                List list7 = (List) arrayMap.get(numValueOf7);
                                                                if (list7 == null) {
                                                                    arrayList5 = new ArrayList();
                                                                    arrayMap.put(numValueOf7, arrayList5);
                                                                } else {
                                                                    arrayList5 = list7;
                                                                }
                                                                arrayList5.add(zzffVar);
                                                                r110 = Query;
                                                            } else {
                                                                r110 = Query;
                                                            }
                                                        } catch (IOException e2) {
                                                            r110 = Query;
                                                            zzicVar8.zzaW().zzb().zzc("Failed to merge filter. appId", zzgu.d(str18), e2);
                                                        }
                                                        try {
                                                            if (!r110.moveToNext()) {
                                                                break;
                                                            }
                                                            Query = r110;
                                                            r110 = r110;
                                                        } catch (SQLiteException e3) {
                                                            e = e3;
                                                            r19 = r110;
                                                            r3 = r19;
                                                            try {
                                                                zzicVar8.zzaW().zzb().zzc("Database error querying filters. appId", zzgu.d(str18), e);
                                                                map6 = Collections.EMPTY_MAP;
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                arrayMap = map6;
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                r8 = r3;
                                                                if (r8 != 0) {
                                                                    r8.close();
                                                                }
                                                                throw th;
                                                            }
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            r18 = r110;
                                                            r8 = r18;
                                                            if (r8 != 0) {
                                                                r8.close();
                                                            }
                                                            throw th;
                                                        }
                                                    } catch (SQLiteException e4) {
                                                        e = e4;
                                                        r19 = Query;
                                                    }
                                                }
                                                r110.close();
                                            } else {
                                                str2 = "data";
                                                Query.close();
                                            }
                                        } catch (SQLiteException e5) {
                                            e = e5;
                                            r19 = Query;
                                            str2 = "data";
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r18 = Query;
                                    }
                                } catch (SQLiteException e6) {
                                    e = e6;
                                    str2 = "data";
                                    r3 = 0;
                                    zzicVar8.zzaW().zzb().zzc("Database error querying filters. appId", zzgu.d(str18), e);
                                    map6 = Collections.EMPTY_MAP;
                                    if (r3 != 0) {
                                        r3.close();
                                    }
                                    arrayMap = map6;
                                    kva kvaVarZzj5 = zzpgVar3.zzj();
                                    r2 = this.d;
                                    kvaVarZzj5.a();
                                    zzicVar = kvaVarZzj5.a;
                                    kvaVarZzj5.zzg();
                                    Preconditions.checkNotEmpty(r2);
                                    cursorQuery = kvaVarZzj5.M().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r2}, null, null, null);
                                    if (cursorQuery.moveToFirst()) {
                                        arrayMap2 = new ArrayMap();
                                        r17 = r2;
                                        zzicVar2 = zzicVar;
                                        while (true) {
                                            try {
                                                i2 = cursorQuery.getInt(0);
                                                try {
                                                    zzii zziiVar4 = (zzii) ((zzih) zzpk.H(zzii.zzj(), cursorQuery.getBlob(1))).zzbd();
                                                    Integer numValueOf8 = Integer.valueOf(i2);
                                                    arrayMap2.put(numValueOf8, zziiVar4);
                                                    str3 = str16;
                                                    obj = objD;
                                                    obj2 = numValueOf8;
                                                    zzicVar6 = zzicVar2;
                                                } catch (IOException e7) {
                                                    zzgs zzgsVarZzb = zzicVar2.zzaW().zzb();
                                                    str3 = str16;
                                                    str16 = "Failed to merge filter results. appId, audienceId, error";
                                                    obj = objD;
                                                    try {
                                                        objD = zzgu.d(r17);
                                                        Object objValueOf = Integer.valueOf(i2);
                                                        zzgsVarZzb.zzd("Failed to merge filter results. appId, audienceId, error", objD, objValueOf, e7);
                                                        obj2 = zzgsVarZzb;
                                                        zzicVar6 = objValueOf;
                                                    } catch (SQLiteException e8) {
                                                        e = e8;
                                                        zzicVar2 = zzicVar2;
                                                        zzicVar2.zzaW().zzb().zzc("Database error querying filter results. appId", zzgu.d(r17), e);
                                                        Map map7 = Collections.EMPTY_MAP;
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        arrayMap2 = map7;
                                                        if (arrayMap2.isEmpty()) {
                                                            str5 = "audience_id";
                                                            zzicVar3 = zzicVar7;
                                                        } else {
                                                            HashSet<Integer> hashSet = new HashSet(arrayMap2.keySet());
                                                            if (z3) {
                                                                String str19 = this.d;
                                                                kvaVarZzj = zzpgVar3.zzj();
                                                                str6 = this.d;
                                                                kvaVarZzj.a();
                                                                kvaVarZzj.zzg();
                                                                Preconditions.checkNotEmpty(str6);
                                                                arrayMap5 = new ArrayMap();
                                                                try {
                                                                    try {
                                                                        cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                                                        try {
                                                                            if (cursorRawQuery.moveToFirst()) {
                                                                                do {
                                                                                    numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                                                    arrayList = (List) arrayMap5.get(numValueOf2);
                                                                                    if (arrayList == null) {
                                                                                        arrayList = new ArrayList();
                                                                                        arrayMap5.put(numValueOf2, arrayList);
                                                                                    }
                                                                                    arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                                                } while (cursorRawQuery.moveToNext());
                                                                            } else {
                                                                                arrayMap5 = Collections.EMPTY_MAP;
                                                                            }
                                                                        } catch (SQLiteException e9) {
                                                                            e = e9;
                                                                            kvaVarZzj.a.zzaW().zzb().zzc("Database error querying scoped filters. appId", zzgu.d(str6), e);
                                                                            arrayMap5 = Collections.EMPTY_MAP;
                                                                            if (cursorRawQuery != null) {
                                                                            }
                                                                            Preconditions.checkNotEmpty(str19);
                                                                            Preconditions.checkNotNull(arrayMap2);
                                                                            arrayMap6 = new ArrayMap();
                                                                            if (!arrayMap2.isEmpty()) {
                                                                                it2 = arrayMap2.keySet().iterator();
                                                                                while (it2.hasNext()) {
                                                                                    num = (Integer) it2.next();
                                                                                    num.getClass();
                                                                                    zziiVar3 = (zzii) arrayMap2.get(num);
                                                                                    list4 = (List) arrayMap5.get(num);
                                                                                    if (list4 != null) {
                                                                                    }
                                                                                    map2 = arrayMap5;
                                                                                    it3 = it2;
                                                                                    zzicVar4 = zzicVar7;
                                                                                    arrayMap6.put(num, zziiVar3);
                                                                                    arrayMap5 = map2;
                                                                                    it2 = it3;
                                                                                    str17 = str17;
                                                                                    zzicVar7 = zzicVar4;
                                                                                }
                                                                            }
                                                                            str4 = str17;
                                                                            zzicVar3 = zzicVar7;
                                                                            map = arrayMap6;
                                                                            for (Integer num3 : hashSet) {
                                                                                num3.getClass();
                                                                                zziiVar = (zzii) map.get(num3);
                                                                                bitSet = new BitSet();
                                                                                bitSet2 = new BitSet();
                                                                                arrayMap3 = new ArrayMap();
                                                                                if (zziiVar != null) {
                                                                                    for (zzhq zzhqVar : zziiVar.zze()) {
                                                                                        if (zzhqVar.zza()) {
                                                                                            zzii zziiVar5 = zziiVar;
                                                                                            Integer numValueOf9 = Integer.valueOf(zzhqVar.zzb());
                                                                                            if (zzhqVar.zzc()) {
                                                                                                lValueOf = Long.valueOf(zzhqVar.zzd());
                                                                                            } else {
                                                                                                lValueOf = null;
                                                                                            }
                                                                                            arrayMap3.put(numValueOf9, lValueOf);
                                                                                            zziiVar = zziiVar5;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                zziiVar2 = zziiVar;
                                                                                arrayMap4 = new ArrayMap();
                                                                                if (zziiVar2 != null) {
                                                                                    it = zziiVar2.zzh().iterator();
                                                                                    while (it.hasNext()) {
                                                                                        zzikVar = (zzik) it.next();
                                                                                        if (!zzikVar.zza()) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                                Map map8 = map;
                                                                                if (zziiVar2 != null) {
                                                                                    i = 0;
                                                                                    while (i < zziiVar2.zzb() * 64) {
                                                                                        if (zzpk.B(i, zziiVar2.zza())) {
                                                                                            z4 = zZzp;
                                                                                            zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                                                                                            bitSet2.set(i);
                                                                                            if (zzpk.B(i, zziiVar2.zzc())) {
                                                                                                bitSet.set(i);
                                                                                            }
                                                                                            i++;
                                                                                            zZzp = z4;
                                                                                        } else {
                                                                                            z4 = zZzp;
                                                                                        }
                                                                                        arrayMap3.remove(Integer.valueOf(i));
                                                                                        i++;
                                                                                        zZzp = z4;
                                                                                    }
                                                                                }
                                                                                boolean z7 = zZzp;
                                                                                zzii zziiVar6 = (zzii) arrayMap2.get(num3);
                                                                                if (zZzp2) {
                                                                                    for (zzff zzffVar2 : list3) {
                                                                                        int iZzb2 = zzffVar2.zzb();
                                                                                        Integer num4 = num3;
                                                                                        jLongValue = this.h.longValue() / 1000;
                                                                                        if (zzffVar2.zzk()) {
                                                                                            jLongValue = this.g.longValue() / 1000;
                                                                                        }
                                                                                        numValueOf = Integer.valueOf(iZzb2);
                                                                                        if (arrayMap3.containsKey(numValueOf)) {
                                                                                            arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                                                                                        }
                                                                                        if (arrayMap4.containsKey(numValueOf)) {
                                                                                            arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                                                                                        }
                                                                                        num3 = num4;
                                                                                    }
                                                                                }
                                                                                String str20 = str3;
                                                                                this.f.put(num3, new whc(this, this.d, zziiVar6, bitSet, bitSet2, arrayMap3, arrayMap4));
                                                                                zZzp = z7;
                                                                                zZzp2 = zZzp2;
                                                                                obj = obj;
                                                                                arrayMap2 = arrayMap2;
                                                                                str2 = str2;
                                                                                arrayMap = arrayMap;
                                                                                str3 = str20;
                                                                                map = map8;
                                                                            }
                                                                            str5 = str4;
                                                                            str7 = str2;
                                                                            String str21 = str3;
                                                                            ?? r9 = obj;
                                                                            str8 = "Skipping failed audience ID";
                                                                            if (!list.isEmpty()) {
                                                                                micVar = new mic(this);
                                                                                arrayMap7 = new ArrayMap();
                                                                                it4 = list.iterator();
                                                                                while (it4.hasNext()) {
                                                                                    zzhsVar = (zzhs) it4.next();
                                                                                    zzhsVarA = micVar.a(zzhsVar, this.d);
                                                                                    if (zzhsVarA != null) {
                                                                                        qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                                                                                        zzpgVar3.zzj().y(str14, qwaVarH);
                                                                                        if (!z) {
                                                                                            String str22 = str14;
                                                                                            zzpgVar = zzpgVar3;
                                                                                            j = qwaVarH.c;
                                                                                            strZzd = zzhsVarA.zzd();
                                                                                            map3 = (Map) arrayMap7.get(strZzd);
                                                                                            if (map3 == null) {
                                                                                                kva kvaVarZzj6 = zzpgVar.zzj();
                                                                                                str9 = this.d;
                                                                                                kvaVarZzj6.a();
                                                                                                zzic zzicVar9 = kvaVarZzj6.a;
                                                                                                kvaVarZzj6.zzg();
                                                                                                Preconditions.checkNotEmpty(str9);
                                                                                                Preconditions.checkNotEmpty(strZzd);
                                                                                                arrayMap9 = new ArrayMap();
                                                                                                try {
                                                                                                    try {
                                                                                                        str10 = str9;
                                                                                                        try {
                                                                                                            cursorQuery2 = kvaVarZzj6.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                                                                                                            try {
                                                                                                                try {
                                                                                                                    if (cursorQuery2.moveToFirst()) {
                                                                                                                        qwaVar = qwaVarH;
                                                                                                                        while (true) {
                                                                                                                            try {
                                                                                                                                try {
                                                                                                                                    zzff zzffVar3 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                                                                                                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                                                                                    list5 = (List) arrayMap9.get(numValueOf3);
                                                                                                                                    if (list5 == null) {
                                                                                                                                        cursor2 = cursorQuery2;
                                                                                                                                        try {
                                                                                                                                            try {
                                                                                                                                                arrayList2 = new ArrayList();
                                                                                                                                                arrayMap9.put(numValueOf3, arrayList2);
                                                                                                                                            } catch (Throwable th4) {
                                                                                                                                                th = th4;
                                                                                                                                                cursor = cursor2;
                                                                                                                                                if (cursor != null) {
                                                                                                                                                    cursor.close();
                                                                                                                                                }
                                                                                                                                                throw th;
                                                                                                                                            }
                                                                                                                                        } catch (SQLiteException e10) {
                                                                                                                                            e = e10;
                                                                                                                                            zzicVar9.zzaW().zzb().zzc(r9, zzgu.d(str10), e);
                                                                                                                                            map3 = Collections.EMPTY_MAP;
                                                                                                                                            if (cursor2 != null) {
                                                                                                                                                cursor2.close();
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        cursor2 = cursorQuery2;
                                                                                                                                        arrayList2 = list5;
                                                                                                                                    }
                                                                                                                                    arrayList2.add(zzffVar3);
                                                                                                                                } catch (IOException e11) {
                                                                                                                                    cursor2 = cursorQuery2;
                                                                                                                                    zzicVar9.zzaW().zzb().zzc(str21, zzgu.d(str10), e11);
                                                                                                                                }
                                                                                                                                if (!cursor2.moveToNext()) {
                                                                                                                                    break;
                                                                                                                                }
                                                                                                                                cursorQuery2 = cursor2;
                                                                                                                            } catch (SQLiteException e12) {
                                                                                                                                e = e12;
                                                                                                                                cursor2 = cursorQuery2;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        cursor2.close();
                                                                                                                        map3 = arrayMap9;
                                                                                                                    } else {
                                                                                                                        cursor2 = cursorQuery2;
                                                                                                                        qwaVar = qwaVarH;
                                                                                                                        map3 = Collections.EMPTY_MAP;
                                                                                                                        cursor2.close();
                                                                                                                    }
                                                                                                                } catch (Throwable th5) {
                                                                                                                    th = th5;
                                                                                                                    cursor2 = cursorQuery2;
                                                                                                                }
                                                                                                            } catch (SQLiteException e13) {
                                                                                                                e = e13;
                                                                                                                cursor2 = cursorQuery2;
                                                                                                                qwaVar = qwaVarH;
                                                                                                            }
                                                                                                        } catch (SQLiteException e14) {
                                                                                                            e = e14;
                                                                                                            qwaVar = qwaVarH;
                                                                                                            cursor2 = null;
                                                                                                            zzicVar9.zzaW().zzb().zzc(r9, zzgu.d(str10), e);
                                                                                                            map3 = Collections.EMPTY_MAP;
                                                                                                            if (cursor2 != null) {
                                                                                                                cursor2.close();
                                                                                                            }
                                                                                                            arrayMap7.put(strZzd, map3);
                                                                                                            it5 = map3.keySet().iterator();
                                                                                                            while (it5.hasNext()) {
                                                                                                                num2 = (Integer) it5.next();
                                                                                                                iIntValue = num2.intValue();
                                                                                                                if (this.e.contains(num2)) {
                                                                                                                    zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                                                                                                } else {
                                                                                                                    it6 = ((List) map3.get(num2)).iterator();
                                                                                                                    z5 = true;
                                                                                                                    while (true) {
                                                                                                                        if (!it6.hasNext()) {
                                                                                                                            map4 = map3;
                                                                                                                            it7 = it5;
                                                                                                                            arrayMap8 = arrayMap7;
                                                                                                                            j2 = j;
                                                                                                                            break;
                                                                                                                        }
                                                                                                                        map4 = map3;
                                                                                                                        zzff zzffVar4 = (zzff) it6.next();
                                                                                                                        it7 = it5;
                                                                                                                        arrayMap8 = arrayMap7;
                                                                                                                        toaVar = new toa(this, this.d, iIntValue, zzffVar4);
                                                                                                                        Long l3 = this.g;
                                                                                                                        Long l4 = this.h;
                                                                                                                        iZzb = zzffVar4.zzb();
                                                                                                                        whcVar = (whc) this.f.get(num2);
                                                                                                                        if (whcVar == null) {
                                                                                                                            z6 = false;
                                                                                                                        } else {
                                                                                                                            z6 = whcVar.d.get(iZzb);
                                                                                                                        }
                                                                                                                        j2 = j;
                                                                                                                        zG = toaVar.g(l3, l4, zzhsVarA, j2, qwaVar, z6);
                                                                                                                        if (!zG) {
                                                                                                                            this.e.add(num2);
                                                                                                                            z5 = zG;
                                                                                                                            break;
                                                                                                                        }
                                                                                                                        d(num2).a(toaVar);
                                                                                                                        z5 = zG;
                                                                                                                        j = j2;
                                                                                                                        map3 = map4;
                                                                                                                        it5 = it7;
                                                                                                                        arrayMap7 = arrayMap8;
                                                                                                                    }
                                                                                                                    if (!z5) {
                                                                                                                        this.e.add(num2);
                                                                                                                    }
                                                                                                                    j = j2;
                                                                                                                    map3 = map4;
                                                                                                                    it5 = it7;
                                                                                                                    arrayMap7 = arrayMap8;
                                                                                                                }
                                                                                                            }
                                                                                                            it4 = it4;
                                                                                                            str14 = str22;
                                                                                                            zzpgVar3 = zzpgVar;
                                                                                                            micVar = micVar;
                                                                                                        }
                                                                                                    } catch (Throwable th6) {
                                                                                                        th = th6;
                                                                                                        cursor = null;
                                                                                                    }
                                                                                                } catch (SQLiteException e15) {
                                                                                                    e = e15;
                                                                                                    str10 = str9;
                                                                                                }
                                                                                                arrayMap7.put(strZzd, map3);
                                                                                            } else {
                                                                                                qwaVar = qwaVarH;
                                                                                            }
                                                                                            it5 = map3.keySet().iterator();
                                                                                            while (it5.hasNext()) {
                                                                                                num2 = (Integer) it5.next();
                                                                                                iIntValue = num2.intValue();
                                                                                                if (this.e.contains(num2)) {
                                                                                                    zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                                                                                } else {
                                                                                                    it6 = ((List) map3.get(num2)).iterator();
                                                                                                    z5 = true;
                                                                                                    while (true) {
                                                                                                        if (!it6.hasNext()) {
                                                                                                            map4 = map3;
                                                                                                            it7 = it5;
                                                                                                            arrayMap8 = arrayMap7;
                                                                                                            j2 = j;
                                                                                                            break;
                                                                                                        }
                                                                                                        map4 = map3;
                                                                                                        zzff zzffVar5 = (zzff) it6.next();
                                                                                                        it7 = it5;
                                                                                                        arrayMap8 = arrayMap7;
                                                                                                        toaVar = new toa(this, this.d, iIntValue, zzffVar5);
                                                                                                        Long l5 = this.g;
                                                                                                        Long l6 = this.h;
                                                                                                        iZzb = zzffVar5.zzb();
                                                                                                        whcVar = (whc) this.f.get(num2);
                                                                                                        if (whcVar == null) {
                                                                                                            z6 = false;
                                                                                                        } else {
                                                                                                            z6 = whcVar.d.get(iZzb);
                                                                                                        }
                                                                                                        j2 = j;
                                                                                                        zG = toaVar.g(l5, l6, zzhsVarA, j2, qwaVar, z6);
                                                                                                        if (!zG) {
                                                                                                            this.e.add(num2);
                                                                                                            z5 = zG;
                                                                                                            break;
                                                                                                        }
                                                                                                        d(num2).a(toaVar);
                                                                                                        z5 = zG;
                                                                                                        j = j2;
                                                                                                        map3 = map4;
                                                                                                        it5 = it7;
                                                                                                        arrayMap7 = arrayMap8;
                                                                                                    }
                                                                                                    if (!z5) {
                                                                                                        this.e.add(num2);
                                                                                                    }
                                                                                                    j = j2;
                                                                                                    map3 = map4;
                                                                                                    it5 = it7;
                                                                                                    arrayMap7 = arrayMap8;
                                                                                                }
                                                                                            }
                                                                                            it4 = it4;
                                                                                            str14 = str22;
                                                                                            zzpgVar3 = zzpgVar;
                                                                                            micVar = micVar;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            zzpgVar2 = zzpgVar3;
                                                                            if (!z) {
                                                                                return new ArrayList();
                                                                            }
                                                                            if (!list2.isEmpty()) {
                                                                                arrayMap10 = new ArrayMap();
                                                                                it8 = list2.iterator();
                                                                                while (it8.hasNext()) {
                                                                                    zziu zziuVar = (zziu) it8.next();
                                                                                    strZzc = zziuVar.zzc();
                                                                                    map5 = (Map) arrayMap10.get(strZzc);
                                                                                    if (map5 == null) {
                                                                                        kva kvaVarZzj7 = zzpgVar2.zzj();
                                                                                        str12 = this.d;
                                                                                        kvaVarZzj7.a();
                                                                                        zzic zzicVar10 = kvaVarZzj7.a;
                                                                                        kvaVarZzj7.zzg();
                                                                                        Preconditions.checkNotEmpty(str12);
                                                                                        Preconditions.checkNotEmpty(strZzc);
                                                                                        arrayMap11 = new ArrayMap();
                                                                                        try {
                                                                                            cursorQuery3 = kvaVarZzj7.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                                                                                            try {
                                                                                                try {
                                                                                                    if (cursorQuery3.moveToFirst()) {
                                                                                                        while (true) {
                                                                                                            try {
                                                                                                                zzfn zzfnVar2 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                                                                                                                numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                                                                list6 = (List) arrayMap11.get(numValueOf6);
                                                                                                                if (list6 == null) {
                                                                                                                    it9 = it8;
                                                                                                                    try {
                                                                                                                        arrayList4 = new ArrayList();
                                                                                                                        arrayMap11.put(numValueOf6, arrayList4);
                                                                                                                    } catch (SQLiteException e16) {
                                                                                                                        e = e16;
                                                                                                                        str13 = str12;
                                                                                                                        cursor3 = cursorQuery3;
                                                                                                                        try {
                                                                                                                            zzicVar10.zzaW().zzb().zzc(r9, zzgu.d(str13), e);
                                                                                                                            map5 = Collections.EMPTY_MAP;
                                                                                                                            if (cursor3 != null) {
                                                                                                                                cursor3.close();
                                                                                                                            }
                                                                                                                            arrayMap10.put(strZzc, map5);
                                                                                                                            for (Integer num5 : map5.keySet()) {
                                                                                                                                int iIntValue2 = num5.intValue();
                                                                                                                                if (this.e.contains(num5)) {
                                                                                                                                    zzicVar3.zzaW().zzk().zzb(str8, num5);
                                                                                                                                    break;
                                                                                                                                }
                                                                                                                                it10 = ((List) map5.get(num5)).iterator();
                                                                                                                                zG2 = true;
                                                                                                                                while (true) {
                                                                                                                                    if (it10.hasNext()) {
                                                                                                                                        zzfnVar = (zzfn) it10.next();
                                                                                                                                        if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                                                                                                            zzgs zzgsVarZzk = zzicVar3.zzaW().zzk();
                                                                                                                                            if (zzfnVar.zza()) {
                                                                                                                                                numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                                                                                                            } else {
                                                                                                                                                numValueOf5 = null;
                                                                                                                                            }
                                                                                                                                            zzgsVarZzk.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                                                                                                            zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                                                                                                                        }
                                                                                                                                        if (zzfnVar.zza()) {
                                                                                                                                        }
                                                                                                                                        zzgs zzgsVarZze = zzicVar3.zzaW().zze();
                                                                                                                                        qkb qkbVarD = zzgu.d(this.d);
                                                                                                                                        if (zzfnVar.zza()) {
                                                                                                                                            numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                                                                                                        } else {
                                                                                                                                            numValueOf4 = null;
                                                                                                                                        }
                                                                                                                                        zzgsVarZze.zzc("Invalid property filter ID. appId, id", qkbVarD, String.valueOf(numValueOf4));
                                                                                                                                        this.e.add(num5);
                                                                                                                                        map5 = map5;
                                                                                                                                        str8 = str8;
                                                                                                                                    } else {
                                                                                                                                        map5 = map5;
                                                                                                                                        str8 = str8;
                                                                                                                                    }
                                                                                                                                    if (!zG2) {
                                                                                                                                        this.e.add(num5);
                                                                                                                                    }
                                                                                                                                    map5 = map5;
                                                                                                                                    str8 = str8;
                                                                                                                                    d(num5).a(bqaVar);
                                                                                                                                    map5 = map5;
                                                                                                                                    str8 = str8;
                                                                                                                                }
                                                                                                                            }
                                                                                                                            it8 = it9;
                                                                                                                        } catch (Throwable th7) {
                                                                                                                            th = th7;
                                                                                                                            if (cursor3 != null) {
                                                                                                                                cursor3.close();
                                                                                                                            }
                                                                                                                            throw th;
                                                                                                                        }
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    it9 = it8;
                                                                                                                    arrayList4 = list6;
                                                                                                                }
                                                                                                                arrayList4.add(zzfnVar2);
                                                                                                                str13 = str12;
                                                                                                            } catch (IOException e17) {
                                                                                                                it9 = it8;
                                                                                                                str13 = str12;
                                                                                                                zzicVar10.zzaW().zzb().zzc("Failed to merge filter", zzgu.d(str13), e17);
                                                                                                            }
                                                                                                            try {
                                                                                                                if (!cursorQuery3.moveToNext()) {
                                                                                                                    break;
                                                                                                                }
                                                                                                                it8 = it9;
                                                                                                                str12 = str13;
                                                                                                            } catch (SQLiteException e18) {
                                                                                                                e = e18;
                                                                                                                cursor3 = cursorQuery3;
                                                                                                                zzicVar10.zzaW().zzb().zzc(r9, zzgu.d(str13), e);
                                                                                                                map5 = Collections.EMPTY_MAP;
                                                                                                                if (cursor3 != null) {
                                                                                                                    cursor3.close();
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        cursorQuery3.close();
                                                                                                        map5 = arrayMap11;
                                                                                                    } else {
                                                                                                        it9 = it8;
                                                                                                        map5 = Collections.EMPTY_MAP;
                                                                                                        cursorQuery3.close();
                                                                                                    }
                                                                                                } catch (Throwable th8) {
                                                                                                    th = th8;
                                                                                                    cursor3 = cursorQuery3;
                                                                                                    if (cursor3 != null) {
                                                                                                        cursor3.close();
                                                                                                    }
                                                                                                    throw th;
                                                                                                }
                                                                                            } catch (SQLiteException e19) {
                                                                                                e = e19;
                                                                                                it9 = it8;
                                                                                            }
                                                                                        } catch (SQLiteException e20) {
                                                                                            e = e20;
                                                                                            it9 = it8;
                                                                                            str13 = str12;
                                                                                            cursor3 = null;
                                                                                        } catch (Throwable th9) {
                                                                                            th = th9;
                                                                                            cursor3 = null;
                                                                                        }
                                                                                        arrayMap10.put(strZzc, map5);
                                                                                    } else {
                                                                                        it9 = it8;
                                                                                    }
                                                                                    while (r4.hasNext()) {
                                                                                        int iIntValue3 = num5.intValue();
                                                                                        if (this.e.contains(num5)) {
                                                                                            zzicVar3.zzaW().zzk().zzb(str8, num5);
                                                                                            break;
                                                                                            break;
                                                                                        }
                                                                                        it10 = ((List) map5.get(num5)).iterator();
                                                                                        zG2 = true;
                                                                                        while (true) {
                                                                                            if (it10.hasNext()) {
                                                                                                zzfnVar = (zzfn) it10.next();
                                                                                                if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                                                                    zzgs zzgsVarZzk2 = zzicVar3.zzaW().zzk();
                                                                                                    if (zzfnVar.zza()) {
                                                                                                        numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                                                                    } else {
                                                                                                        numValueOf5 = null;
                                                                                                    }
                                                                                                    zzgsVarZzk2.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                                                                    zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                                                                                }
                                                                                                if (zzfnVar.zza()) {
                                                                                                }
                                                                                                zzgs zzgsVarZze2 = zzicVar3.zzaW().zze();
                                                                                                qkb qkbVarD2 = zzgu.d(this.d);
                                                                                                if (zzfnVar.zza()) {
                                                                                                    numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                                                                } else {
                                                                                                    numValueOf4 = null;
                                                                                                }
                                                                                                zzgsVarZze2.zzc("Invalid property filter ID. appId, id", qkbVarD2, String.valueOf(numValueOf4));
                                                                                                this.e.add(num5);
                                                                                                map5 = map5;
                                                                                                str8 = str8;
                                                                                            } else {
                                                                                                map5 = map5;
                                                                                                str8 = str8;
                                                                                            }
                                                                                            if (!zG2) {
                                                                                                this.e.add(num5);
                                                                                            }
                                                                                            map5 = map5;
                                                                                            str8 = str8;
                                                                                            d(num5).a(bqaVar);
                                                                                            map5 = map5;
                                                                                            str8 = str8;
                                                                                        }
                                                                                    }
                                                                                    it8 = it9;
                                                                                }
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            Set<Integer> setKeySet = this.f.keySet();
                                                                            setKeySet.removeAll(this.e);
                                                                            for (Integer num6 : setKeySet) {
                                                                                int iIntValue4 = num6.intValue();
                                                                                whc whcVar2 = (whc) this.f.get(num6);
                                                                                Preconditions.checkNotNull(whcVar2);
                                                                                zzhg zzhgVarB = whcVar2.b(iIntValue4);
                                                                                arrayList3.add(zzhgVarB);
                                                                                kvaVarZzj2 = zzpgVar2.zzj();
                                                                                str11 = this.d;
                                                                                zzii zziiVarZzc = zzhgVarB.zzc();
                                                                                kvaVarZzj2.a();
                                                                                zzicVar5 = kvaVarZzj2.a;
                                                                                kvaVarZzj2.zzg();
                                                                                Preconditions.checkNotEmpty(str11);
                                                                                Preconditions.checkNotNull(zziiVarZzc);
                                                                                byte[] bArrZzcd = zziiVarZzc.zzcd();
                                                                                contentValues = new ContentValues();
                                                                                contentValues.put(CommonUrlParts.APP_ID, str11);
                                                                                contentValues.put(str5, num6);
                                                                                contentValues.put("current_results", bArrZzcd);
                                                                                try {
                                                                                    try {
                                                                                        if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                                                            zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
                                                                                        }
                                                                                    } catch (SQLiteException e21) {
                                                                                        e = e21;
                                                                                        zzicVar5.zzaW().zzb().zzc("Error storing filter results. appId", zzgu.d(str11), e);
                                                                                    }
                                                                                } catch (SQLiteException e22) {
                                                                                    e = e22;
                                                                                }
                                                                            }
                                                                            return arrayList3;
                                                                        }
                                                                    } catch (SQLiteException e23) {
                                                                        e = e23;
                                                                        cursorRawQuery = null;
                                                                    } catch (Throwable th10) {
                                                                        th = th10;
                                                                        r7 = 0;
                                                                        if (r7 != 0) {
                                                                            r7.close();
                                                                        }
                                                                        throw th;
                                                                    }
                                                                    cursorRawQuery.close();
                                                                    Preconditions.checkNotEmpty(str19);
                                                                    Preconditions.checkNotNull(arrayMap2);
                                                                    arrayMap6 = new ArrayMap();
                                                                    if (!arrayMap2.isEmpty()) {
                                                                        it2 = arrayMap2.keySet().iterator();
                                                                        while (it2.hasNext()) {
                                                                            num = (Integer) it2.next();
                                                                            num.getClass();
                                                                            zziiVar3 = (zzii) arrayMap2.get(num);
                                                                            list4 = (List) arrayMap5.get(num);
                                                                            if (list4 != null) {
                                                                            }
                                                                            map2 = arrayMap5;
                                                                            it3 = it2;
                                                                            zzicVar4 = zzicVar7;
                                                                            arrayMap6.put(num, zziiVar3);
                                                                            arrayMap5 = map2;
                                                                            it2 = it3;
                                                                            str17 = str17;
                                                                            zzicVar7 = zzicVar4;
                                                                        }
                                                                    }
                                                                    str4 = str17;
                                                                    zzicVar3 = zzicVar7;
                                                                    map = arrayMap6;
                                                                } catch (Throwable th11) {
                                                                    th = th11;
                                                                    r7 = hashSet;
                                                                }
                                                            } else {
                                                                str4 = "audience_id";
                                                                zzicVar3 = zzicVar7;
                                                                map = arrayMap2;
                                                            }
                                                            while (r17.hasNext()) {
                                                                num3.getClass();
                                                                zziiVar = (zzii) map.get(num3);
                                                                bitSet = new BitSet();
                                                                bitSet2 = new BitSet();
                                                                arrayMap3 = new ArrayMap();
                                                                if (zziiVar != null) {
                                                                    while (r3.hasNext()) {
                                                                        if (zzhqVar.zza()) {
                                                                            zzii zziiVar7 = zziiVar;
                                                                            Integer numValueOf10 = Integer.valueOf(zzhqVar.zzb());
                                                                            if (zzhqVar.zzc()) {
                                                                                lValueOf = Long.valueOf(zzhqVar.zzd());
                                                                            } else {
                                                                                lValueOf = null;
                                                                            }
                                                                            arrayMap3.put(numValueOf10, lValueOf);
                                                                            zziiVar = zziiVar7;
                                                                        }
                                                                    }
                                                                }
                                                                zziiVar2 = zziiVar;
                                                                arrayMap4 = new ArrayMap();
                                                                if (zziiVar2 != null) {
                                                                    it = zziiVar2.zzh().iterator();
                                                                    while (it.hasNext()) {
                                                                        zzikVar = (zzik) it.next();
                                                                        if (!zzikVar.zza()) {
                                                                        }
                                                                    }
                                                                }
                                                                Map map9 = map;
                                                                if (zziiVar2 != null) {
                                                                    i = 0;
                                                                    while (i < zziiVar2.zzb() * 64) {
                                                                        if (zzpk.B(i, zziiVar2.zza())) {
                                                                            z4 = zZzp;
                                                                            zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                                                                            bitSet2.set(i);
                                                                            if (zzpk.B(i, zziiVar2.zzc())) {
                                                                                bitSet.set(i);
                                                                            }
                                                                            i++;
                                                                            zZzp = z4;
                                                                        } else {
                                                                            z4 = zZzp;
                                                                        }
                                                                        arrayMap3.remove(Integer.valueOf(i));
                                                                        i++;
                                                                        zZzp = z4;
                                                                    }
                                                                }
                                                                boolean z8 = zZzp;
                                                                zzii zziiVar8 = (zzii) arrayMap2.get(num3);
                                                                if (zZzp2) {
                                                                    while (r2.hasNext()) {
                                                                        int iZzb3 = zzffVar2.zzb();
                                                                        Integer num7 = num3;
                                                                        jLongValue = this.h.longValue() / 1000;
                                                                        if (zzffVar2.zzk()) {
                                                                            jLongValue = this.g.longValue() / 1000;
                                                                        }
                                                                        numValueOf = Integer.valueOf(iZzb3);
                                                                        if (arrayMap3.containsKey(numValueOf)) {
                                                                            arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                                                                        }
                                                                        if (arrayMap4.containsKey(numValueOf)) {
                                                                            arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                                                                        }
                                                                        num3 = num7;
                                                                    }
                                                                }
                                                                String str23 = str3;
                                                                this.f.put(num3, new whc(this, this.d, zziiVar8, bitSet, bitSet2, arrayMap3, arrayMap4));
                                                                zZzp = z8;
                                                                zZzp2 = zZzp2;
                                                                obj = obj;
                                                                arrayMap2 = arrayMap2;
                                                                str2 = str2;
                                                                arrayMap = arrayMap;
                                                                str3 = str23;
                                                                map = map9;
                                                            }
                                                            str5 = str4;
                                                        }
                                                        str7 = str2;
                                                        String str24 = str3;
                                                        ?? r10 = obj;
                                                        str8 = "Skipping failed audience ID";
                                                        if (!list.isEmpty()) {
                                                            micVar = new mic(this);
                                                            arrayMap7 = new ArrayMap();
                                                            it4 = list.iterator();
                                                            while (it4.hasNext()) {
                                                                zzhsVar = (zzhs) it4.next();
                                                                zzhsVarA = micVar.a(zzhsVar, this.d);
                                                                if (zzhsVarA != null) {
                                                                    qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                                                                    zzpgVar3.zzj().y(str14, qwaVarH);
                                                                    if (!z) {
                                                                        String str25 = str14;
                                                                        zzpgVar = zzpgVar3;
                                                                        j = qwaVarH.c;
                                                                        strZzd = zzhsVarA.zzd();
                                                                        map3 = (Map) arrayMap7.get(strZzd);
                                                                        if (map3 == null) {
                                                                            kva kvaVarZzj8 = zzpgVar.zzj();
                                                                            str9 = this.d;
                                                                            kvaVarZzj8.a();
                                                                            zzic zzicVar11 = kvaVarZzj8.a;
                                                                            kvaVarZzj8.zzg();
                                                                            Preconditions.checkNotEmpty(str9);
                                                                            Preconditions.checkNotEmpty(strZzd);
                                                                            arrayMap9 = new ArrayMap();
                                                                            str10 = str9;
                                                                            cursorQuery2 = kvaVarZzj8.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                                                                            if (cursorQuery2.moveToFirst()) {
                                                                                qwaVar = qwaVarH;
                                                                                while (true) {
                                                                                    zzff zzffVar6 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                                                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                                    list5 = (List) arrayMap9.get(numValueOf3);
                                                                                    if (list5 == null) {
                                                                                        cursor2 = cursorQuery2;
                                                                                        arrayList2 = new ArrayList();
                                                                                        arrayMap9.put(numValueOf3, arrayList2);
                                                                                    } else {
                                                                                        cursor2 = cursorQuery2;
                                                                                        arrayList2 = list5;
                                                                                    }
                                                                                    arrayList2.add(zzffVar6);
                                                                                    if (!cursor2.moveToNext()) {
                                                                                        break;
                                                                                        break;
                                                                                    }
                                                                                    cursorQuery2 = cursor2;
                                                                                }
                                                                                cursor2.close();
                                                                                map3 = arrayMap9;
                                                                            } else {
                                                                                cursor2 = cursorQuery2;
                                                                                qwaVar = qwaVarH;
                                                                                map3 = Collections.EMPTY_MAP;
                                                                                cursor2.close();
                                                                            }
                                                                            arrayMap7.put(strZzd, map3);
                                                                        } else {
                                                                            qwaVar = qwaVarH;
                                                                        }
                                                                        it5 = map3.keySet().iterator();
                                                                        while (it5.hasNext()) {
                                                                            num2 = (Integer) it5.next();
                                                                            iIntValue = num2.intValue();
                                                                            if (this.e.contains(num2)) {
                                                                                zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                                                            } else {
                                                                                it6 = ((List) map3.get(num2)).iterator();
                                                                                z5 = true;
                                                                                while (true) {
                                                                                    if (!it6.hasNext()) {
                                                                                        map4 = map3;
                                                                                        it7 = it5;
                                                                                        arrayMap8 = arrayMap7;
                                                                                        j2 = j;
                                                                                        break;
                                                                                    }
                                                                                    map4 = map3;
                                                                                    zzff zzffVar7 = (zzff) it6.next();
                                                                                    it7 = it5;
                                                                                    arrayMap8 = arrayMap7;
                                                                                    toaVar = new toa(this, this.d, iIntValue, zzffVar7);
                                                                                    Long l7 = this.g;
                                                                                    Long l8 = this.h;
                                                                                    iZzb = zzffVar7.zzb();
                                                                                    whcVar = (whc) this.f.get(num2);
                                                                                    if (whcVar == null) {
                                                                                        z6 = false;
                                                                                    } else {
                                                                                        z6 = whcVar.d.get(iZzb);
                                                                                    }
                                                                                    j2 = j;
                                                                                    zG = toaVar.g(l7, l8, zzhsVarA, j2, qwaVar, z6);
                                                                                    if (!zG) {
                                                                                        this.e.add(num2);
                                                                                        z5 = zG;
                                                                                        break;
                                                                                    }
                                                                                    d(num2).a(toaVar);
                                                                                    z5 = zG;
                                                                                    j = j2;
                                                                                    map3 = map4;
                                                                                    it5 = it7;
                                                                                    arrayMap7 = arrayMap8;
                                                                                }
                                                                                if (!z5) {
                                                                                    this.e.add(num2);
                                                                                }
                                                                                j = j2;
                                                                                map3 = map4;
                                                                                it5 = it7;
                                                                                arrayMap7 = arrayMap8;
                                                                            }
                                                                        }
                                                                        it4 = it4;
                                                                        str14 = str25;
                                                                        zzpgVar3 = zzpgVar;
                                                                        micVar = micVar;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        zzpgVar2 = zzpgVar3;
                                                        if (!z) {
                                                            return new ArrayList();
                                                        }
                                                        if (!list2.isEmpty()) {
                                                            arrayMap10 = new ArrayMap();
                                                            it8 = list2.iterator();
                                                            while (it8.hasNext()) {
                                                                zziu zziuVar2 = (zziu) it8.next();
                                                                strZzc = zziuVar2.zzc();
                                                                map5 = (Map) arrayMap10.get(strZzc);
                                                                if (map5 == null) {
                                                                    kva kvaVarZzj9 = zzpgVar2.zzj();
                                                                    str12 = this.d;
                                                                    kvaVarZzj9.a();
                                                                    zzic zzicVar12 = kvaVarZzj9.a;
                                                                    kvaVarZzj9.zzg();
                                                                    Preconditions.checkNotEmpty(str12);
                                                                    Preconditions.checkNotEmpty(strZzc);
                                                                    arrayMap11 = new ArrayMap();
                                                                    cursorQuery3 = kvaVarZzj9.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                                                                    if (cursorQuery3.moveToFirst()) {
                                                                        while (true) {
                                                                            zzfn zzfnVar3 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                                                                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                            list6 = (List) arrayMap11.get(numValueOf6);
                                                                            if (list6 == null) {
                                                                                it9 = it8;
                                                                                arrayList4 = new ArrayList();
                                                                                arrayMap11.put(numValueOf6, arrayList4);
                                                                            } else {
                                                                                it9 = it8;
                                                                                arrayList4 = list6;
                                                                            }
                                                                            arrayList4.add(zzfnVar3);
                                                                            str13 = str12;
                                                                            if (!cursorQuery3.moveToNext()) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            it8 = it9;
                                                                            str12 = str13;
                                                                        }
                                                                        cursorQuery3.close();
                                                                        map5 = arrayMap11;
                                                                    } else {
                                                                        it9 = it8;
                                                                        map5 = Collections.EMPTY_MAP;
                                                                        cursorQuery3.close();
                                                                    }
                                                                    arrayMap10.put(strZzc, map5);
                                                                } else {
                                                                    it9 = it8;
                                                                }
                                                                while (r4.hasNext()) {
                                                                    int iIntValue5 = num5.intValue();
                                                                    if (this.e.contains(num5)) {
                                                                        zzicVar3.zzaW().zzk().zzb(str8, num5);
                                                                        break;
                                                                        break;
                                                                    }
                                                                    it10 = ((List) map5.get(num5)).iterator();
                                                                    zG2 = true;
                                                                    while (true) {
                                                                        if (it10.hasNext()) {
                                                                            zzfnVar = (zzfn) it10.next();
                                                                            if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                                                zzgs zzgsVarZzk3 = zzicVar3.zzaW().zzk();
                                                                                if (zzfnVar.zza()) {
                                                                                    numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                                                } else {
                                                                                    numValueOf5 = null;
                                                                                }
                                                                                zzgsVarZzk3.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                                                zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                                                            }
                                                                            if (zzfnVar.zza()) {
                                                                            }
                                                                            zzgs zzgsVarZze3 = zzicVar3.zzaW().zze();
                                                                            qkb qkbVarD3 = zzgu.d(this.d);
                                                                            if (zzfnVar.zza()) {
                                                                                numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                                            } else {
                                                                                numValueOf4 = null;
                                                                            }
                                                                            zzgsVarZze3.zzc("Invalid property filter ID. appId, id", qkbVarD3, String.valueOf(numValueOf4));
                                                                            this.e.add(num5);
                                                                            map5 = map5;
                                                                            str8 = str8;
                                                                        } else {
                                                                            map5 = map5;
                                                                            str8 = str8;
                                                                        }
                                                                        if (!zG2) {
                                                                            this.e.add(num5);
                                                                        }
                                                                        map5 = map5;
                                                                        str8 = str8;
                                                                        d(num5).a(bqaVar);
                                                                        map5 = map5;
                                                                        str8 = str8;
                                                                    }
                                                                }
                                                                it8 = it9;
                                                            }
                                                        }
                                                        arrayList3 = new ArrayList();
                                                        Set<Integer> setKeySet2 = this.f.keySet();
                                                        setKeySet2.removeAll(this.e);
                                                        while (r3.hasNext()) {
                                                            int iIntValue6 = num6.intValue();
                                                            whc whcVar3 = (whc) this.f.get(num6);
                                                            Preconditions.checkNotNull(whcVar3);
                                                            zzhg zzhgVarB2 = whcVar3.b(iIntValue6);
                                                            arrayList3.add(zzhgVarB2);
                                                            kvaVarZzj2 = zzpgVar2.zzj();
                                                            str11 = this.d;
                                                            zzii zziiVarZzc2 = zzhgVarB2.zzc();
                                                            kvaVarZzj2.a();
                                                            zzicVar5 = kvaVarZzj2.a;
                                                            kvaVarZzj2.zzg();
                                                            Preconditions.checkNotEmpty(str11);
                                                            Preconditions.checkNotNull(zziiVarZzc2);
                                                            byte[] bArrZzcd2 = zziiVarZzc2.zzcd();
                                                            contentValues = new ContentValues();
                                                            contentValues.put(CommonUrlParts.APP_ID, str11);
                                                            contentValues.put(str5, num6);
                                                            contentValues.put("current_results", bArrZzcd2);
                                                            if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                                zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
                                                            }
                                                        }
                                                        return arrayList3;
                                                    }
                                                }
                                                try {
                                                    if (!cursorQuery.moveToNext()) {
                                                        break;
                                                    }
                                                    str16 = str3;
                                                    objD = obj;
                                                    zzicVar2 = zzicVar2;
                                                } catch (SQLiteException e24) {
                                                    e = e24;
                                                    zzicVar2.zzaW().zzb().zzc("Database error querying filter results. appId", zzgu.d(r17), e);
                                                    Map map10 = Collections.EMPTY_MAP;
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    arrayMap2 = map10;
                                                }
                                            } catch (SQLiteException e25) {
                                                e = e25;
                                                zzicVar2 = zzicVar2;
                                                r17 = r17;
                                                str3 = str16;
                                                obj = objD;
                                                zzicVar2 = zzicVar2;
                                                zzicVar2.zzaW().zzb().zzc("Database error querying filter results. appId", zzgu.d(r17), e);
                                                Map map11 = Collections.EMPTY_MAP;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                arrayMap2 = map11;
                                                if (arrayMap2.isEmpty()) {
                                                    str5 = "audience_id";
                                                    zzicVar3 = zzicVar7;
                                                } else {
                                                    HashSet<Integer> hashSet2 = new HashSet(arrayMap2.keySet());
                                                    if (z3) {
                                                        String str110 = this.d;
                                                        kvaVarZzj = zzpgVar3.zzj();
                                                        str6 = this.d;
                                                        kvaVarZzj.a();
                                                        kvaVarZzj.zzg();
                                                        Preconditions.checkNotEmpty(str6);
                                                        arrayMap5 = new ArrayMap();
                                                        cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                                        if (cursorRawQuery.moveToFirst()) {
                                                            do {
                                                                numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                                arrayList = (List) arrayMap5.get(numValueOf2);
                                                                if (arrayList == null) {
                                                                    arrayList = new ArrayList();
                                                                    arrayMap5.put(numValueOf2, arrayList);
                                                                }
                                                                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                            } while (cursorRawQuery.moveToNext());
                                                        } else {
                                                            arrayMap5 = Collections.EMPTY_MAP;
                                                        }
                                                        cursorRawQuery.close();
                                                        Preconditions.checkNotEmpty(str110);
                                                        Preconditions.checkNotNull(arrayMap2);
                                                        arrayMap6 = new ArrayMap();
                                                        if (!arrayMap2.isEmpty()) {
                                                            it2 = arrayMap2.keySet().iterator();
                                                            while (it2.hasNext()) {
                                                                num = (Integer) it2.next();
                                                                num.getClass();
                                                                zziiVar3 = (zzii) arrayMap2.get(num);
                                                                list4 = (List) arrayMap5.get(num);
                                                                if (list4 != null) {
                                                                }
                                                                map2 = arrayMap5;
                                                                it3 = it2;
                                                                zzicVar4 = zzicVar7;
                                                                arrayMap6.put(num, zziiVar3);
                                                                arrayMap5 = map2;
                                                                it2 = it3;
                                                                str17 = str17;
                                                                zzicVar7 = zzicVar4;
                                                            }
                                                        }
                                                        str4 = str17;
                                                        zzicVar3 = zzicVar7;
                                                        map = arrayMap6;
                                                    } else {
                                                        str4 = "audience_id";
                                                        zzicVar3 = zzicVar7;
                                                        map = arrayMap2;
                                                    }
                                                    while (r17.hasNext()) {
                                                        num3.getClass();
                                                        zziiVar = (zzii) map.get(num3);
                                                        bitSet = new BitSet();
                                                        bitSet2 = new BitSet();
                                                        arrayMap3 = new ArrayMap();
                                                        if (zziiVar != null) {
                                                            while (r3.hasNext()) {
                                                                if (zzhqVar.zza()) {
                                                                    zzii zziiVar9 = zziiVar;
                                                                    Integer numValueOf11 = Integer.valueOf(zzhqVar.zzb());
                                                                    if (zzhqVar.zzc()) {
                                                                        lValueOf = Long.valueOf(zzhqVar.zzd());
                                                                    } else {
                                                                        lValueOf = null;
                                                                    }
                                                                    arrayMap3.put(numValueOf11, lValueOf);
                                                                    zziiVar = zziiVar9;
                                                                }
                                                            }
                                                        }
                                                        zziiVar2 = zziiVar;
                                                        arrayMap4 = new ArrayMap();
                                                        if (zziiVar2 != null) {
                                                            it = zziiVar2.zzh().iterator();
                                                            while (it.hasNext()) {
                                                                zzikVar = (zzik) it.next();
                                                                if (!zzikVar.zza()) {
                                                                }
                                                            }
                                                        }
                                                        Map map12 = map;
                                                        if (zziiVar2 != null) {
                                                            i = 0;
                                                            while (i < zziiVar2.zzb() * 64) {
                                                                if (zzpk.B(i, zziiVar2.zza())) {
                                                                    z4 = zZzp;
                                                                    zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                                                                    bitSet2.set(i);
                                                                    if (zzpk.B(i, zziiVar2.zzc())) {
                                                                        bitSet.set(i);
                                                                    }
                                                                    i++;
                                                                    zZzp = z4;
                                                                } else {
                                                                    z4 = zZzp;
                                                                }
                                                                arrayMap3.remove(Integer.valueOf(i));
                                                                i++;
                                                                zZzp = z4;
                                                            }
                                                        }
                                                        boolean z9 = zZzp;
                                                        zzii zziiVar10 = (zzii) arrayMap2.get(num3);
                                                        if (zZzp2) {
                                                            while (r2.hasNext()) {
                                                                int iZzb4 = zzffVar2.zzb();
                                                                Integer num8 = num3;
                                                                jLongValue = this.h.longValue() / 1000;
                                                                if (zzffVar2.zzk()) {
                                                                    jLongValue = this.g.longValue() / 1000;
                                                                }
                                                                numValueOf = Integer.valueOf(iZzb4);
                                                                if (arrayMap3.containsKey(numValueOf)) {
                                                                    arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                                                                }
                                                                if (arrayMap4.containsKey(numValueOf)) {
                                                                    arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                                                                }
                                                                num3 = num8;
                                                            }
                                                        }
                                                        String str26 = str3;
                                                        this.f.put(num3, new whc(this, this.d, zziiVar10, bitSet, bitSet2, arrayMap3, arrayMap4));
                                                        zZzp = z9;
                                                        zZzp2 = zZzp2;
                                                        obj = obj;
                                                        arrayMap2 = arrayMap2;
                                                        str2 = str2;
                                                        arrayMap = arrayMap;
                                                        str3 = str26;
                                                        map = map12;
                                                    }
                                                    str5 = str4;
                                                }
                                                str7 = str2;
                                                String str27 = str3;
                                                ?? r11 = obj;
                                                str8 = "Skipping failed audience ID";
                                                if (!list.isEmpty()) {
                                                    micVar = new mic(this);
                                                    arrayMap7 = new ArrayMap();
                                                    it4 = list.iterator();
                                                    while (it4.hasNext()) {
                                                        zzhsVar = (zzhs) it4.next();
                                                        zzhsVarA = micVar.a(zzhsVar, this.d);
                                                        if (zzhsVarA != null) {
                                                            qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                                                            zzpgVar3.zzj().y(str14, qwaVarH);
                                                            if (!z) {
                                                                String str28 = str14;
                                                                zzpgVar = zzpgVar3;
                                                                j = qwaVarH.c;
                                                                strZzd = zzhsVarA.zzd();
                                                                map3 = (Map) arrayMap7.get(strZzd);
                                                                if (map3 == null) {
                                                                    kva kvaVarZzj10 = zzpgVar.zzj();
                                                                    str9 = this.d;
                                                                    kvaVarZzj10.a();
                                                                    zzic zzicVar13 = kvaVarZzj10.a;
                                                                    kvaVarZzj10.zzg();
                                                                    Preconditions.checkNotEmpty(str9);
                                                                    Preconditions.checkNotEmpty(strZzd);
                                                                    arrayMap9 = new ArrayMap();
                                                                    str10 = str9;
                                                                    cursorQuery2 = kvaVarZzj10.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                                                                    if (cursorQuery2.moveToFirst()) {
                                                                        qwaVar = qwaVarH;
                                                                        while (true) {
                                                                            zzff zzffVar8 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                                                            numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                            list5 = (List) arrayMap9.get(numValueOf3);
                                                                            if (list5 == null) {
                                                                                cursor2 = cursorQuery2;
                                                                                arrayList2 = new ArrayList();
                                                                                arrayMap9.put(numValueOf3, arrayList2);
                                                                            } else {
                                                                                cursor2 = cursorQuery2;
                                                                                arrayList2 = list5;
                                                                            }
                                                                            arrayList2.add(zzffVar8);
                                                                            if (!cursor2.moveToNext()) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            cursorQuery2 = cursor2;
                                                                        }
                                                                        cursor2.close();
                                                                        map3 = arrayMap9;
                                                                    } else {
                                                                        cursor2 = cursorQuery2;
                                                                        qwaVar = qwaVarH;
                                                                        map3 = Collections.EMPTY_MAP;
                                                                        cursor2.close();
                                                                    }
                                                                    arrayMap7.put(strZzd, map3);
                                                                } else {
                                                                    qwaVar = qwaVarH;
                                                                }
                                                                it5 = map3.keySet().iterator();
                                                                while (it5.hasNext()) {
                                                                    num2 = (Integer) it5.next();
                                                                    iIntValue = num2.intValue();
                                                                    if (this.e.contains(num2)) {
                                                                        zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                                                    } else {
                                                                        it6 = ((List) map3.get(num2)).iterator();
                                                                        z5 = true;
                                                                        while (true) {
                                                                            if (!it6.hasNext()) {
                                                                                map4 = map3;
                                                                                it7 = it5;
                                                                                arrayMap8 = arrayMap7;
                                                                                j2 = j;
                                                                                break;
                                                                            }
                                                                            map4 = map3;
                                                                            zzff zzffVar9 = (zzff) it6.next();
                                                                            it7 = it5;
                                                                            arrayMap8 = arrayMap7;
                                                                            toaVar = new toa(this, this.d, iIntValue, zzffVar9);
                                                                            Long l9 = this.g;
                                                                            Long l10 = this.h;
                                                                            iZzb = zzffVar9.zzb();
                                                                            whcVar = (whc) this.f.get(num2);
                                                                            if (whcVar == null) {
                                                                                z6 = false;
                                                                            } else {
                                                                                z6 = whcVar.d.get(iZzb);
                                                                            }
                                                                            j2 = j;
                                                                            zG = toaVar.g(l9, l10, zzhsVarA, j2, qwaVar, z6);
                                                                            if (!zG) {
                                                                                this.e.add(num2);
                                                                                z5 = zG;
                                                                                break;
                                                                            }
                                                                            d(num2).a(toaVar);
                                                                            z5 = zG;
                                                                            j = j2;
                                                                            map3 = map4;
                                                                            it5 = it7;
                                                                            arrayMap7 = arrayMap8;
                                                                        }
                                                                        if (!z5) {
                                                                            this.e.add(num2);
                                                                        }
                                                                        j = j2;
                                                                        map3 = map4;
                                                                        it5 = it7;
                                                                        arrayMap7 = arrayMap8;
                                                                    }
                                                                }
                                                                it4 = it4;
                                                                str14 = str28;
                                                                zzpgVar3 = zzpgVar;
                                                                micVar = micVar;
                                                            }
                                                        }
                                                    }
                                                }
                                                zzpgVar2 = zzpgVar3;
                                                if (!z) {
                                                    return new ArrayList();
                                                }
                                                if (!list2.isEmpty()) {
                                                    arrayMap10 = new ArrayMap();
                                                    it8 = list2.iterator();
                                                    while (it8.hasNext()) {
                                                        zziu zziuVar3 = (zziu) it8.next();
                                                        strZzc = zziuVar3.zzc();
                                                        map5 = (Map) arrayMap10.get(strZzc);
                                                        if (map5 == null) {
                                                            kva kvaVarZzj11 = zzpgVar2.zzj();
                                                            str12 = this.d;
                                                            kvaVarZzj11.a();
                                                            zzic zzicVar14 = kvaVarZzj11.a;
                                                            kvaVarZzj11.zzg();
                                                            Preconditions.checkNotEmpty(str12);
                                                            Preconditions.checkNotEmpty(strZzc);
                                                            arrayMap11 = new ArrayMap();
                                                            cursorQuery3 = kvaVarZzj11.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                                                            if (cursorQuery3.moveToFirst()) {
                                                                while (true) {
                                                                    zzfn zzfnVar4 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                                                                    numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                    list6 = (List) arrayMap11.get(numValueOf6);
                                                                    if (list6 == null) {
                                                                        it9 = it8;
                                                                        arrayList4 = new ArrayList();
                                                                        arrayMap11.put(numValueOf6, arrayList4);
                                                                    } else {
                                                                        it9 = it8;
                                                                        arrayList4 = list6;
                                                                    }
                                                                    arrayList4.add(zzfnVar4);
                                                                    str13 = str12;
                                                                    if (!cursorQuery3.moveToNext()) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    it8 = it9;
                                                                    str12 = str13;
                                                                }
                                                                cursorQuery3.close();
                                                                map5 = arrayMap11;
                                                            } else {
                                                                it9 = it8;
                                                                map5 = Collections.EMPTY_MAP;
                                                                cursorQuery3.close();
                                                            }
                                                            arrayMap10.put(strZzc, map5);
                                                        } else {
                                                            it9 = it8;
                                                        }
                                                        while (r4.hasNext()) {
                                                            int iIntValue7 = num5.intValue();
                                                            if (this.e.contains(num5)) {
                                                                zzicVar3.zzaW().zzk().zzb(str8, num5);
                                                                break;
                                                                break;
                                                            }
                                                            it10 = ((List) map5.get(num5)).iterator();
                                                            zG2 = true;
                                                            while (true) {
                                                                if (it10.hasNext()) {
                                                                    zzfnVar = (zzfn) it10.next();
                                                                    if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                                        zzgs zzgsVarZzk4 = zzicVar3.zzaW().zzk();
                                                                        if (zzfnVar.zza()) {
                                                                            numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                                        } else {
                                                                            numValueOf5 = null;
                                                                        }
                                                                        zzgsVarZzk4.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                                        zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                                                    }
                                                                    if (zzfnVar.zza()) {
                                                                    }
                                                                    zzgs zzgsVarZze4 = zzicVar3.zzaW().zze();
                                                                    qkb qkbVarD4 = zzgu.d(this.d);
                                                                    if (zzfnVar.zza()) {
                                                                        numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                                    } else {
                                                                        numValueOf4 = null;
                                                                    }
                                                                    zzgsVarZze4.zzc("Invalid property filter ID. appId, id", qkbVarD4, String.valueOf(numValueOf4));
                                                                    this.e.add(num5);
                                                                    map5 = map5;
                                                                    str8 = str8;
                                                                } else {
                                                                    map5 = map5;
                                                                    str8 = str8;
                                                                }
                                                                if (!zG2) {
                                                                    this.e.add(num5);
                                                                }
                                                                map5 = map5;
                                                                str8 = str8;
                                                                d(num5).a(bqaVar);
                                                                map5 = map5;
                                                                str8 = str8;
                                                            }
                                                        }
                                                        it8 = it9;
                                                    }
                                                }
                                                arrayList3 = new ArrayList();
                                                Set<Integer> setKeySet3 = this.f.keySet();
                                                setKeySet3.removeAll(this.e);
                                                while (r3.hasNext()) {
                                                    int iIntValue8 = num6.intValue();
                                                    whc whcVar4 = (whc) this.f.get(num6);
                                                    Preconditions.checkNotNull(whcVar4);
                                                    zzhg zzhgVarB3 = whcVar4.b(iIntValue8);
                                                    arrayList3.add(zzhgVarB3);
                                                    kvaVarZzj2 = zzpgVar2.zzj();
                                                    str11 = this.d;
                                                    zzii zziiVarZzc3 = zzhgVarB3.zzc();
                                                    kvaVarZzj2.a();
                                                    zzicVar5 = kvaVarZzj2.a;
                                                    kvaVarZzj2.zzg();
                                                    Preconditions.checkNotEmpty(str11);
                                                    Preconditions.checkNotNull(zziiVarZzc3);
                                                    byte[] bArrZzcd3 = zziiVarZzc3.zzcd();
                                                    contentValues = new ContentValues();
                                                    contentValues.put(CommonUrlParts.APP_ID, str11);
                                                    contentValues.put(str5, num6);
                                                    contentValues.put("current_results", bArrZzcd3);
                                                    if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                        zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
                                                    }
                                                }
                                                return arrayList3;
                                            }
                                        }
                                        cursorQuery.close();
                                        r2 = obj2;
                                        zzicVar = zzicVar6;
                                    } else {
                                        Map map13 = Collections.EMPTY_MAP;
                                        cursorQuery.close();
                                        arrayMap2 = map13;
                                        str3 = "Failed to merge filter. appId";
                                        obj = "Database error querying filters. appId";
                                        r2 = r2;
                                        zzicVar = zzicVar;
                                    }
                                    if (arrayMap2.isEmpty()) {
                                        str5 = "audience_id";
                                        zzicVar3 = zzicVar7;
                                    } else {
                                        HashSet<Integer> hashSet3 = new HashSet(arrayMap2.keySet());
                                        if (z3) {
                                            String str111 = this.d;
                                            kvaVarZzj = zzpgVar3.zzj();
                                            str6 = this.d;
                                            kvaVarZzj.a();
                                            kvaVarZzj.zzg();
                                            Preconditions.checkNotEmpty(str6);
                                            arrayMap5 = new ArrayMap();
                                            cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                            if (cursorRawQuery.moveToFirst()) {
                                                do {
                                                    numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                    arrayList = (List) arrayMap5.get(numValueOf2);
                                                    if (arrayList == null) {
                                                        arrayList = new ArrayList();
                                                        arrayMap5.put(numValueOf2, arrayList);
                                                    }
                                                    arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                } while (cursorRawQuery.moveToNext());
                                            } else {
                                                arrayMap5 = Collections.EMPTY_MAP;
                                            }
                                            cursorRawQuery.close();
                                            Preconditions.checkNotEmpty(str111);
                                            Preconditions.checkNotNull(arrayMap2);
                                            arrayMap6 = new ArrayMap();
                                            if (!arrayMap2.isEmpty()) {
                                                it2 = arrayMap2.keySet().iterator();
                                                while (it2.hasNext()) {
                                                    num = (Integer) it2.next();
                                                    num.getClass();
                                                    zziiVar3 = (zzii) arrayMap2.get(num);
                                                    list4 = (List) arrayMap5.get(num);
                                                    if (list4 != null) {
                                                    }
                                                    map2 = arrayMap5;
                                                    it3 = it2;
                                                    zzicVar4 = zzicVar7;
                                                    arrayMap6.put(num, zziiVar3);
                                                    arrayMap5 = map2;
                                                    it2 = it3;
                                                    str17 = str17;
                                                    zzicVar7 = zzicVar4;
                                                }
                                            }
                                            str4 = str17;
                                            zzicVar3 = zzicVar7;
                                            map = arrayMap6;
                                        } else {
                                            str4 = "audience_id";
                                            zzicVar3 = zzicVar7;
                                            map = arrayMap2;
                                        }
                                        while (r17.hasNext()) {
                                            num3.getClass();
                                            zziiVar = (zzii) map.get(num3);
                                            bitSet = new BitSet();
                                            bitSet2 = new BitSet();
                                            arrayMap3 = new ArrayMap();
                                            if (zziiVar != null) {
                                                while (r3.hasNext()) {
                                                    if (zzhqVar.zza()) {
                                                        zzii zziiVar11 = zziiVar;
                                                        Integer numValueOf12 = Integer.valueOf(zzhqVar.zzb());
                                                        if (zzhqVar.zzc()) {
                                                            lValueOf = Long.valueOf(zzhqVar.zzd());
                                                        } else {
                                                            lValueOf = null;
                                                        }
                                                        arrayMap3.put(numValueOf12, lValueOf);
                                                        zziiVar = zziiVar11;
                                                    }
                                                }
                                            }
                                            zziiVar2 = zziiVar;
                                            arrayMap4 = new ArrayMap();
                                            if (zziiVar2 != null) {
                                                it = zziiVar2.zzh().iterator();
                                                while (it.hasNext()) {
                                                    zzikVar = (zzik) it.next();
                                                    if (!zzikVar.zza()) {
                                                    }
                                                }
                                            }
                                            Map map14 = map;
                                            if (zziiVar2 != null) {
                                                i = 0;
                                                while (i < zziiVar2.zzb() * 64) {
                                                    if (zzpk.B(i, zziiVar2.zza())) {
                                                        z4 = zZzp;
                                                        zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                                                        bitSet2.set(i);
                                                        if (zzpk.B(i, zziiVar2.zzc())) {
                                                            bitSet.set(i);
                                                        }
                                                        i++;
                                                        zZzp = z4;
                                                    } else {
                                                        z4 = zZzp;
                                                    }
                                                    arrayMap3.remove(Integer.valueOf(i));
                                                    i++;
                                                    zZzp = z4;
                                                }
                                            }
                                            boolean z10 = zZzp;
                                            zzii zziiVar12 = (zzii) arrayMap2.get(num3);
                                            if (zZzp2) {
                                                while (r2.hasNext()) {
                                                    int iZzb5 = zzffVar2.zzb();
                                                    Integer num9 = num3;
                                                    jLongValue = this.h.longValue() / 1000;
                                                    if (zzffVar2.zzk()) {
                                                        jLongValue = this.g.longValue() / 1000;
                                                    }
                                                    numValueOf = Integer.valueOf(iZzb5);
                                                    if (arrayMap3.containsKey(numValueOf)) {
                                                        arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                                                    }
                                                    if (arrayMap4.containsKey(numValueOf)) {
                                                        arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                                                    }
                                                    num3 = num9;
                                                }
                                            }
                                            String str29 = str3;
                                            this.f.put(num3, new whc(this, this.d, zziiVar12, bitSet, bitSet2, arrayMap3, arrayMap4));
                                            zZzp = z10;
                                            zZzp2 = zZzp2;
                                            obj = obj;
                                            arrayMap2 = arrayMap2;
                                            str2 = str2;
                                            arrayMap = arrayMap;
                                            str3 = str29;
                                            map = map14;
                                        }
                                        str5 = str4;
                                    }
                                    str7 = str2;
                                    String str210 = str3;
                                    ?? r12 = obj;
                                    str8 = "Skipping failed audience ID";
                                    if (!list.isEmpty()) {
                                        micVar = new mic(this);
                                        arrayMap7 = new ArrayMap();
                                        it4 = list.iterator();
                                        while (it4.hasNext()) {
                                            zzhsVar = (zzhs) it4.next();
                                            zzhsVarA = micVar.a(zzhsVar, this.d);
                                            if (zzhsVarA != null) {
                                                qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                                                zzpgVar3.zzj().y(str14, qwaVarH);
                                                if (!z) {
                                                    String str211 = str14;
                                                    zzpgVar = zzpgVar3;
                                                    j = qwaVarH.c;
                                                    strZzd = zzhsVarA.zzd();
                                                    map3 = (Map) arrayMap7.get(strZzd);
                                                    if (map3 == null) {
                                                        kva kvaVarZzj12 = zzpgVar.zzj();
                                                        str9 = this.d;
                                                        kvaVarZzj12.a();
                                                        zzic zzicVar15 = kvaVarZzj12.a;
                                                        kvaVarZzj12.zzg();
                                                        Preconditions.checkNotEmpty(str9);
                                                        Preconditions.checkNotEmpty(strZzd);
                                                        arrayMap9 = new ArrayMap();
                                                        str10 = str9;
                                                        cursorQuery2 = kvaVarZzj12.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                                                        if (cursorQuery2.moveToFirst()) {
                                                            qwaVar = qwaVarH;
                                                            while (true) {
                                                                zzff zzffVar10 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                                                numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                list5 = (List) arrayMap9.get(numValueOf3);
                                                                if (list5 == null) {
                                                                    cursor2 = cursorQuery2;
                                                                    arrayList2 = new ArrayList();
                                                                    arrayMap9.put(numValueOf3, arrayList2);
                                                                } else {
                                                                    cursor2 = cursorQuery2;
                                                                    arrayList2 = list5;
                                                                }
                                                                arrayList2.add(zzffVar10);
                                                                if (!cursor2.moveToNext()) {
                                                                    break;
                                                                    break;
                                                                }
                                                                cursorQuery2 = cursor2;
                                                            }
                                                            cursor2.close();
                                                            map3 = arrayMap9;
                                                        } else {
                                                            cursor2 = cursorQuery2;
                                                            qwaVar = qwaVarH;
                                                            map3 = Collections.EMPTY_MAP;
                                                            cursor2.close();
                                                        }
                                                        arrayMap7.put(strZzd, map3);
                                                    } else {
                                                        qwaVar = qwaVarH;
                                                    }
                                                    it5 = map3.keySet().iterator();
                                                    while (it5.hasNext()) {
                                                        num2 = (Integer) it5.next();
                                                        iIntValue = num2.intValue();
                                                        if (this.e.contains(num2)) {
                                                            zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                                        } else {
                                                            it6 = ((List) map3.get(num2)).iterator();
                                                            z5 = true;
                                                            while (true) {
                                                                if (!it6.hasNext()) {
                                                                    map4 = map3;
                                                                    it7 = it5;
                                                                    arrayMap8 = arrayMap7;
                                                                    j2 = j;
                                                                    break;
                                                                }
                                                                map4 = map3;
                                                                zzff zzffVar11 = (zzff) it6.next();
                                                                it7 = it5;
                                                                arrayMap8 = arrayMap7;
                                                                toaVar = new toa(this, this.d, iIntValue, zzffVar11);
                                                                Long l11 = this.g;
                                                                Long l12 = this.h;
                                                                iZzb = zzffVar11.zzb();
                                                                whcVar = (whc) this.f.get(num2);
                                                                if (whcVar == null) {
                                                                    z6 = false;
                                                                } else {
                                                                    z6 = whcVar.d.get(iZzb);
                                                                }
                                                                j2 = j;
                                                                zG = toaVar.g(l11, l12, zzhsVarA, j2, qwaVar, z6);
                                                                if (!zG) {
                                                                    this.e.add(num2);
                                                                    z5 = zG;
                                                                    break;
                                                                }
                                                                d(num2).a(toaVar);
                                                                z5 = zG;
                                                                j = j2;
                                                                map3 = map4;
                                                                it5 = it7;
                                                                arrayMap7 = arrayMap8;
                                                            }
                                                            if (!z5) {
                                                                this.e.add(num2);
                                                            }
                                                            j = j2;
                                                            map3 = map4;
                                                            it5 = it7;
                                                            arrayMap7 = arrayMap8;
                                                        }
                                                    }
                                                    it4 = it4;
                                                    str14 = str211;
                                                    zzpgVar3 = zzpgVar;
                                                    micVar = micVar;
                                                }
                                            }
                                        }
                                    }
                                    zzpgVar2 = zzpgVar3;
                                    if (!z) {
                                        return new ArrayList();
                                    }
                                    if (!list2.isEmpty()) {
                                        arrayMap10 = new ArrayMap();
                                        it8 = list2.iterator();
                                        while (it8.hasNext()) {
                                            zziu zziuVar4 = (zziu) it8.next();
                                            strZzc = zziuVar4.zzc();
                                            map5 = (Map) arrayMap10.get(strZzc);
                                            if (map5 == null) {
                                                kva kvaVarZzj13 = zzpgVar2.zzj();
                                                str12 = this.d;
                                                kvaVarZzj13.a();
                                                zzic zzicVar16 = kvaVarZzj13.a;
                                                kvaVarZzj13.zzg();
                                                Preconditions.checkNotEmpty(str12);
                                                Preconditions.checkNotEmpty(strZzc);
                                                arrayMap11 = new ArrayMap();
                                                cursorQuery3 = kvaVarZzj13.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                                                if (cursorQuery3.moveToFirst()) {
                                                    while (true) {
                                                        zzfn zzfnVar5 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                                                        numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                        list6 = (List) arrayMap11.get(numValueOf6);
                                                        if (list6 == null) {
                                                            it9 = it8;
                                                            arrayList4 = new ArrayList();
                                                            arrayMap11.put(numValueOf6, arrayList4);
                                                        } else {
                                                            it9 = it8;
                                                            arrayList4 = list6;
                                                        }
                                                        arrayList4.add(zzfnVar5);
                                                        str13 = str12;
                                                        if (!cursorQuery3.moveToNext()) {
                                                            break;
                                                            break;
                                                        }
                                                        it8 = it9;
                                                        str12 = str13;
                                                    }
                                                    cursorQuery3.close();
                                                    map5 = arrayMap11;
                                                } else {
                                                    it9 = it8;
                                                    map5 = Collections.EMPTY_MAP;
                                                    cursorQuery3.close();
                                                }
                                                arrayMap10.put(strZzc, map5);
                                            } else {
                                                it9 = it8;
                                            }
                                            while (r4.hasNext()) {
                                                int iIntValue9 = num5.intValue();
                                                if (this.e.contains(num5)) {
                                                    zzicVar3.zzaW().zzk().zzb(str8, num5);
                                                    break;
                                                    break;
                                                }
                                                it10 = ((List) map5.get(num5)).iterator();
                                                zG2 = true;
                                                while (true) {
                                                    if (it10.hasNext()) {
                                                        zzfnVar = (zzfn) it10.next();
                                                        if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                            zzgs zzgsVarZzk5 = zzicVar3.zzaW().zzk();
                                                            if (zzfnVar.zza()) {
                                                                numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                            } else {
                                                                numValueOf5 = null;
                                                            }
                                                            zzgsVarZzk5.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                            zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                                        }
                                                        if (zzfnVar.zza()) {
                                                        }
                                                        zzgs zzgsVarZze5 = zzicVar3.zzaW().zze();
                                                        qkb qkbVarD5 = zzgu.d(this.d);
                                                        if (zzfnVar.zza()) {
                                                            numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                        } else {
                                                            numValueOf4 = null;
                                                        }
                                                        zzgsVarZze5.zzc("Invalid property filter ID. appId, id", qkbVarD5, String.valueOf(numValueOf4));
                                                        this.e.add(num5);
                                                        map5 = map5;
                                                        str8 = str8;
                                                    } else {
                                                        map5 = map5;
                                                        str8 = str8;
                                                    }
                                                    if (!zG2) {
                                                        this.e.add(num5);
                                                    }
                                                    map5 = map5;
                                                    str8 = str8;
                                                    d(num5).a(bqaVar);
                                                    map5 = map5;
                                                    str8 = str8;
                                                }
                                            }
                                            it8 = it9;
                                        }
                                    }
                                    arrayList3 = new ArrayList();
                                    Set<Integer> setKeySet4 = this.f.keySet();
                                    setKeySet4.removeAll(this.e);
                                    while (r3.hasNext()) {
                                        int iIntValue10 = num6.intValue();
                                        whc whcVar5 = (whc) this.f.get(num6);
                                        Preconditions.checkNotNull(whcVar5);
                                        zzhg zzhgVarB4 = whcVar5.b(iIntValue10);
                                        arrayList3.add(zzhgVarB4);
                                        kvaVarZzj2 = zzpgVar2.zzj();
                                        str11 = this.d;
                                        zzii zziiVarZzc4 = zzhgVarB4.zzc();
                                        kvaVarZzj2.a();
                                        zzicVar5 = kvaVarZzj2.a;
                                        kvaVarZzj2.zzg();
                                        Preconditions.checkNotEmpty(str11);
                                        Preconditions.checkNotNull(zziiVarZzc4);
                                        byte[] bArrZzcd4 = zziiVarZzc4.zzcd();
                                        contentValues = new ContentValues();
                                        contentValues.put(CommonUrlParts.APP_ID, str11);
                                        contentValues.put(str5, num6);
                                        contentValues.put("current_results", bArrZzcd4);
                                        if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                            zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
                                        }
                                    }
                                    return arrayList3;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                r8 = 0;
                            }
                        } catch (SQLiteException e26) {
                            e = e26;
                            z3 = z2;
                        }
                        kva kvaVarZzj14 = zzpgVar3.zzj();
                        r2 = this.d;
                        kvaVarZzj14.a();
                        zzicVar = kvaVarZzj14.a;
                        kvaVarZzj14.zzg();
                        Preconditions.checkNotEmpty(r2);
                        cursorQuery = kvaVarZzj14.M().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r2}, null, null, null);
                        if (cursorQuery.moveToFirst()) {
                            Map map15 = Collections.EMPTY_MAP;
                            cursorQuery.close();
                            arrayMap2 = map15;
                            str3 = "Failed to merge filter. appId";
                            obj = "Database error querying filters. appId";
                            r2 = r2;
                            zzicVar = zzicVar;
                        } else {
                            arrayMap2 = new ArrayMap();
                            r17 = r2;
                            zzicVar2 = zzicVar;
                            while (true) {
                                i2 = cursorQuery.getInt(0);
                                zzii zziiVar13 = (zzii) ((zzih) zzpk.H(zzii.zzj(), cursorQuery.getBlob(1))).zzbd();
                                Integer numValueOf13 = Integer.valueOf(i2);
                                arrayMap2.put(numValueOf13, zziiVar13);
                                str3 = str16;
                                obj = objD;
                                obj2 = numValueOf13;
                                zzicVar6 = zzicVar2;
                                if (!cursorQuery.moveToNext()) {
                                    break;
                                    break;
                                }
                                str16 = str3;
                                objD = obj;
                                zzicVar2 = zzicVar2;
                            }
                            cursorQuery.close();
                            r2 = obj2;
                            zzicVar = zzicVar6;
                        }
                        if (arrayMap2.isEmpty()) {
                            str5 = "audience_id";
                            zzicVar3 = zzicVar7;
                        } else {
                            HashSet<Integer> hashSet4 = new HashSet(arrayMap2.keySet());
                            if (z3) {
                                String str112 = this.d;
                                kvaVarZzj = zzpgVar3.zzj();
                                str6 = this.d;
                                kvaVarZzj.a();
                                kvaVarZzj.zzg();
                                Preconditions.checkNotEmpty(str6);
                                arrayMap5 = new ArrayMap();
                                cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                if (cursorRawQuery.moveToFirst()) {
                                    do {
                                        numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                        arrayList = (List) arrayMap5.get(numValueOf2);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                            arrayMap5.put(numValueOf2, arrayList);
                                        }
                                        arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                    } while (cursorRawQuery.moveToNext());
                                } else {
                                    arrayMap5 = Collections.EMPTY_MAP;
                                }
                                cursorRawQuery.close();
                                Preconditions.checkNotEmpty(str112);
                                Preconditions.checkNotNull(arrayMap2);
                                arrayMap6 = new ArrayMap();
                                if (!arrayMap2.isEmpty()) {
                                    it2 = arrayMap2.keySet().iterator();
                                    while (it2.hasNext()) {
                                        num = (Integer) it2.next();
                                        num.getClass();
                                        zziiVar3 = (zzii) arrayMap2.get(num);
                                        list4 = (List) arrayMap5.get(num);
                                        if (list4 != null || list4.isEmpty()) {
                                            map2 = arrayMap5;
                                            it3 = it2;
                                            zzicVar4 = zzicVar7;
                                            arrayMap6.put(num, zziiVar3);
                                            arrayMap5 = map2;
                                            it2 = it3;
                                            str17 = str17;
                                            zzicVar7 = zzicVar4;
                                        } else {
                                            map2 = arrayMap5;
                                            it3 = it2;
                                            List listD = zzpgVar3.zzp().D(zziiVar3.zzc(), list4);
                                            if (listD.isEmpty()) {
                                                arrayMap5 = map2;
                                                it2 = it3;
                                            } else {
                                                zzih zzihVar = (zzih) zziiVar3.zzco();
                                                zzihVar.zzd();
                                                zzihVar.zzc(listD);
                                                List listD2 = zzpgVar3.zzp().D(zziiVar3.zza(), list4);
                                                zzihVar.zzb();
                                                zzihVar.zza(listD2);
                                                ArrayList arrayList6 = new ArrayList();
                                                Iterator it12 = zziiVar3.zze().iterator();
                                                while (it12.hasNext()) {
                                                    Iterator it13 = it12;
                                                    zzhq zzhqVar2 = (zzhq) it12.next();
                                                    zzic zzicVar17 = zzicVar7;
                                                    if (!list4.contains(Integer.valueOf(zzhqVar2.zzb()))) {
                                                        arrayList6.add(zzhqVar2);
                                                    }
                                                    it12 = it13;
                                                    zzicVar7 = zzicVar17;
                                                }
                                                zzicVar4 = zzicVar7;
                                                zzihVar.zzf();
                                                zzihVar.zze(arrayList6);
                                                ArrayList arrayList7 = new ArrayList();
                                                for (zzik zzikVar2 : zziiVar3.zzh()) {
                                                    if (!list4.contains(Integer.valueOf(zzikVar2.zzb()))) {
                                                        arrayList7.add(zzikVar2);
                                                    }
                                                }
                                                zzihVar.zzh();
                                                zzihVar.zzg(arrayList7);
                                                arrayMap6.put(num, (zzii) zzihVar.zzbd());
                                                arrayMap5 = map2;
                                                it2 = it3;
                                                str17 = str17;
                                                zzicVar7 = zzicVar4;
                                            }
                                        }
                                    }
                                }
                                str4 = str17;
                                zzicVar3 = zzicVar7;
                                map = arrayMap6;
                            } else {
                                str4 = "audience_id";
                                zzicVar3 = zzicVar7;
                                map = arrayMap2;
                            }
                            while (r17.hasNext()) {
                                num3.getClass();
                                zziiVar = (zzii) map.get(num3);
                                bitSet = new BitSet();
                                bitSet2 = new BitSet();
                                arrayMap3 = new ArrayMap();
                                if (zziiVar != null && zziiVar.zzf() != 0) {
                                    while (r3.hasNext()) {
                                        if (zzhqVar.zza()) {
                                            zzii zziiVar14 = zziiVar;
                                            Integer numValueOf14 = Integer.valueOf(zzhqVar.zzb());
                                            if (zzhqVar.zzc()) {
                                                lValueOf = Long.valueOf(zzhqVar.zzd());
                                            } else {
                                                lValueOf = null;
                                            }
                                            arrayMap3.put(numValueOf14, lValueOf);
                                            zziiVar = zziiVar14;
                                        }
                                    }
                                }
                                zziiVar2 = zziiVar;
                                arrayMap4 = new ArrayMap();
                                if (zziiVar2 != null && zziiVar2.zzi() != 0) {
                                    it = zziiVar2.zzh().iterator();
                                    while (it.hasNext()) {
                                        zzikVar = (zzik) it.next();
                                        if (!zzikVar.zza() && zzikVar.zzd() > 0) {
                                            arrayMap4.put(Integer.valueOf(zzikVar.zzb()), Long.valueOf(zzikVar.zze(zzikVar.zzd() - 1)));
                                            it = it;
                                            map = map;
                                        }
                                    }
                                }
                                Map map16 = map;
                                if (zziiVar2 != null) {
                                    i = 0;
                                    while (i < zziiVar2.zzb() * 64) {
                                        if (zzpk.B(i, zziiVar2.zza())) {
                                            z4 = zZzp;
                                            zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                                            bitSet2.set(i);
                                            if (zzpk.B(i, zziiVar2.zzc())) {
                                                bitSet.set(i);
                                            }
                                            i++;
                                            zZzp = z4;
                                        } else {
                                            z4 = zZzp;
                                        }
                                        arrayMap3.remove(Integer.valueOf(i));
                                        i++;
                                        zZzp = z4;
                                    }
                                }
                                boolean z11 = zZzp;
                                zzii zziiVar15 = (zzii) arrayMap2.get(num3);
                                if (zZzp2 && z11 && (list3 = (List) arrayMap.get(num3)) != null && this.h != null && this.g != null) {
                                    while (r2.hasNext()) {
                                        int iZzb6 = zzffVar2.zzb();
                                        Integer num10 = num3;
                                        jLongValue = this.h.longValue() / 1000;
                                        if (zzffVar2.zzk()) {
                                            jLongValue = this.g.longValue() / 1000;
                                        }
                                        numValueOf = Integer.valueOf(iZzb6);
                                        if (arrayMap3.containsKey(numValueOf)) {
                                            arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                                        }
                                        if (arrayMap4.containsKey(numValueOf)) {
                                            arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                                        }
                                        num3 = num10;
                                    }
                                }
                                String str212 = str3;
                                this.f.put(num3, new whc(this, this.d, zziiVar15, bitSet, bitSet2, arrayMap3, arrayMap4));
                                zZzp = z11;
                                zZzp2 = zZzp2;
                                obj = obj;
                                arrayMap2 = arrayMap2;
                                str2 = str2;
                                arrayMap = arrayMap;
                                str3 = str212;
                                map = map16;
                            }
                            str5 = str4;
                        }
                        str7 = str2;
                        String str213 = str3;
                        ?? r13 = obj;
                        str8 = "Skipping failed audience ID";
                        if (!list.isEmpty()) {
                            micVar = new mic(this);
                            arrayMap7 = new ArrayMap();
                            it4 = list.iterator();
                            while (it4.hasNext()) {
                                zzhsVar = (zzhs) it4.next();
                                zzhsVarA = micVar.a(zzhsVar, this.d);
                                if (zzhsVarA != null) {
                                    qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                                    zzpgVar3.zzj().y(str14, qwaVarH);
                                    if (!z) {
                                        String str214 = str14;
                                        zzpgVar = zzpgVar3;
                                        j = qwaVarH.c;
                                        strZzd = zzhsVarA.zzd();
                                        map3 = (Map) arrayMap7.get(strZzd);
                                        if (map3 == null) {
                                            kva kvaVarZzj15 = zzpgVar.zzj();
                                            str9 = this.d;
                                            kvaVarZzj15.a();
                                            zzic zzicVar18 = kvaVarZzj15.a;
                                            kvaVarZzj15.zzg();
                                            Preconditions.checkNotEmpty(str9);
                                            Preconditions.checkNotEmpty(strZzd);
                                            arrayMap9 = new ArrayMap();
                                            str10 = str9;
                                            cursorQuery2 = kvaVarZzj15.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                                            if (cursorQuery2.moveToFirst()) {
                                                qwaVar = qwaVarH;
                                                while (true) {
                                                    zzff zzffVar12 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                    list5 = (List) arrayMap9.get(numValueOf3);
                                                    if (list5 == null) {
                                                        cursor2 = cursorQuery2;
                                                        arrayList2 = new ArrayList();
                                                        arrayMap9.put(numValueOf3, arrayList2);
                                                    } else {
                                                        cursor2 = cursorQuery2;
                                                        arrayList2 = list5;
                                                    }
                                                    arrayList2.add(zzffVar12);
                                                    if (!cursor2.moveToNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    cursorQuery2 = cursor2;
                                                }
                                                cursor2.close();
                                                map3 = arrayMap9;
                                            } else {
                                                cursor2 = cursorQuery2;
                                                qwaVar = qwaVarH;
                                                map3 = Collections.EMPTY_MAP;
                                                cursor2.close();
                                            }
                                            arrayMap7.put(strZzd, map3);
                                        } else {
                                            qwaVar = qwaVarH;
                                        }
                                        it5 = map3.keySet().iterator();
                                        while (it5.hasNext()) {
                                            num2 = (Integer) it5.next();
                                            iIntValue = num2.intValue();
                                            if (this.e.contains(num2)) {
                                                zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                                            } else {
                                                it6 = ((List) map3.get(num2)).iterator();
                                                z5 = true;
                                                while (true) {
                                                    if (!it6.hasNext()) {
                                                        map4 = map3;
                                                        it7 = it5;
                                                        arrayMap8 = arrayMap7;
                                                        j2 = j;
                                                        break;
                                                    }
                                                    map4 = map3;
                                                    zzff zzffVar13 = (zzff) it6.next();
                                                    it7 = it5;
                                                    arrayMap8 = arrayMap7;
                                                    toaVar = new toa(this, this.d, iIntValue, zzffVar13);
                                                    Long l13 = this.g;
                                                    Long l14 = this.h;
                                                    iZzb = zzffVar13.zzb();
                                                    whcVar = (whc) this.f.get(num2);
                                                    if (whcVar == null) {
                                                        z6 = false;
                                                    } else {
                                                        z6 = whcVar.d.get(iZzb);
                                                    }
                                                    j2 = j;
                                                    zG = toaVar.g(l13, l14, zzhsVarA, j2, qwaVar, z6);
                                                    if (!zG) {
                                                        this.e.add(num2);
                                                        z5 = zG;
                                                        break;
                                                    }
                                                    d(num2).a(toaVar);
                                                    z5 = zG;
                                                    j = j2;
                                                    map3 = map4;
                                                    it5 = it7;
                                                    arrayMap7 = arrayMap8;
                                                }
                                                if (!z5) {
                                                    this.e.add(num2);
                                                }
                                                j = j2;
                                                map3 = map4;
                                                it5 = it7;
                                                arrayMap7 = arrayMap8;
                                            }
                                        }
                                        it4 = it4;
                                        str14 = str214;
                                        zzpgVar3 = zzpgVar;
                                        micVar = micVar;
                                    }
                                }
                            }
                        }
                        zzpgVar2 = zzpgVar3;
                        if (!z) {
                            return new ArrayList();
                        }
                        if (!list2.isEmpty()) {
                            arrayMap10 = new ArrayMap();
                            it8 = list2.iterator();
                            while (it8.hasNext()) {
                                zziu zziuVar5 = (zziu) it8.next();
                                strZzc = zziuVar5.zzc();
                                map5 = (Map) arrayMap10.get(strZzc);
                                if (map5 == null) {
                                    kva kvaVarZzj16 = zzpgVar2.zzj();
                                    str12 = this.d;
                                    kvaVarZzj16.a();
                                    zzic zzicVar19 = kvaVarZzj16.a;
                                    kvaVarZzj16.zzg();
                                    Preconditions.checkNotEmpty(str12);
                                    Preconditions.checkNotEmpty(strZzc);
                                    arrayMap11 = new ArrayMap();
                                    cursorQuery3 = kvaVarZzj16.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                                    if (cursorQuery3.moveToFirst()) {
                                        while (true) {
                                            zzfn zzfnVar6 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                            list6 = (List) arrayMap11.get(numValueOf6);
                                            if (list6 == null) {
                                                it9 = it8;
                                                arrayList4 = new ArrayList();
                                                arrayMap11.put(numValueOf6, arrayList4);
                                            } else {
                                                it9 = it8;
                                                arrayList4 = list6;
                                            }
                                            arrayList4.add(zzfnVar6);
                                            str13 = str12;
                                            if (!cursorQuery3.moveToNext()) {
                                                break;
                                                break;
                                            }
                                            it8 = it9;
                                            str12 = str13;
                                        }
                                        cursorQuery3.close();
                                        map5 = arrayMap11;
                                    } else {
                                        it9 = it8;
                                        map5 = Collections.EMPTY_MAP;
                                        cursorQuery3.close();
                                    }
                                    arrayMap10.put(strZzc, map5);
                                } else {
                                    it9 = it8;
                                }
                                while (r4.hasNext()) {
                                    int iIntValue11 = num5.intValue();
                                    if (this.e.contains(num5)) {
                                        zzicVar3.zzaW().zzk().zzb(str8, num5);
                                        break;
                                        break;
                                    }
                                    it10 = ((List) map5.get(num5)).iterator();
                                    zG2 = true;
                                    while (true) {
                                        if (it10.hasNext()) {
                                            zzfnVar = (zzfn) it10.next();
                                            if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                                zzgs zzgsVarZzk6 = zzicVar3.zzaW().zzk();
                                                if (zzfnVar.zza()) {
                                                    numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                                } else {
                                                    numValueOf5 = null;
                                                }
                                                zzgsVarZzk6.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                                zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                                            }
                                            if (zzfnVar.zza() || zzfnVar.zzb() > 256) {
                                                zzgs zzgsVarZze6 = zzicVar3.zzaW().zze();
                                                qkb qkbVarD6 = zzgu.d(this.d);
                                                if (zzfnVar.zza()) {
                                                    numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                                                } else {
                                                    numValueOf4 = null;
                                                }
                                                zzgsVarZze6.zzc("Invalid property filter ID. appId, id", qkbVarD6, String.valueOf(numValueOf4));
                                                this.e.add(num5);
                                                map5 = map5;
                                                str8 = str8;
                                            } else {
                                                bqaVar = new bqa(this, this.d, iIntValue11, zzfnVar);
                                                Long l15 = this.g;
                                                Long l16 = this.h;
                                                int iZzb7 = zzfnVar.zzb();
                                                whc whcVar6 = (whc) this.f.get(num5);
                                                zG2 = bqaVar.g(l15, l16, zziuVar5, whcVar6 == null ? false : whcVar6.d.get(iZzb7));
                                                if (zG2) {
                                                    d(num5).a(bqaVar);
                                                    map5 = map5;
                                                    str8 = str8;
                                                } else {
                                                    this.e.add(num5);
                                                }
                                            }
                                        } else {
                                            map5 = map5;
                                            str8 = str8;
                                        }
                                        if (!zG2) {
                                            this.e.add(num5);
                                        }
                                        map5 = map5;
                                        str8 = str8;
                                    }
                                }
                                it8 = it9;
                            }
                        }
                        arrayList3 = new ArrayList();
                        Set<Integer> setKeySet5 = this.f.keySet();
                        setKeySet5.removeAll(this.e);
                        while (r3.hasNext()) {
                            int iIntValue12 = num6.intValue();
                            whc whcVar7 = (whc) this.f.get(num6);
                            Preconditions.checkNotNull(whcVar7);
                            zzhg zzhgVarB5 = whcVar7.b(iIntValue12);
                            arrayList3.add(zzhgVarB5);
                            kvaVarZzj2 = zzpgVar2.zzj();
                            str11 = this.d;
                            zzii zziiVarZzc5 = zzhgVarB5.zzc();
                            kvaVarZzj2.a();
                            zzicVar5 = kvaVarZzj2.a;
                            kvaVarZzj2.zzg();
                            Preconditions.checkNotEmpty(str11);
                            Preconditions.checkNotNull(zziiVarZzc5);
                            byte[] bArrZzcd5 = zziiVarZzc5.zzcd();
                            contentValues = new ContentValues();
                            contentValues.put(CommonUrlParts.APP_ID, str11);
                            contentValues.put(str5, num6);
                            contentValues.put("current_results", bArrZzcd5);
                            if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
                            }
                        }
                        return arrayList3;
                    }
                    z3 = z2;
                    str2 = "data";
                    if (cursorQuery.moveToFirst()) {
                        Map map17 = Collections.EMPTY_MAP;
                        cursorQuery.close();
                        arrayMap2 = map17;
                        str3 = "Failed to merge filter. appId";
                        obj = "Database error querying filters. appId";
                        r2 = r2;
                        zzicVar = zzicVar;
                    } else {
                        arrayMap2 = new ArrayMap();
                        r17 = r2;
                        zzicVar2 = zzicVar;
                        while (true) {
                            i2 = cursorQuery.getInt(0);
                            zzii zziiVar16 = (zzii) ((zzih) zzpk.H(zzii.zzj(), cursorQuery.getBlob(1))).zzbd();
                            Integer numValueOf15 = Integer.valueOf(i2);
                            arrayMap2.put(numValueOf15, zziiVar16);
                            str3 = str16;
                            obj = objD;
                            obj2 = numValueOf15;
                            zzicVar6 = zzicVar2;
                            if (!cursorQuery.moveToNext()) {
                                break;
                                break;
                            }
                            str16 = str3;
                            objD = obj;
                            zzicVar2 = zzicVar2;
                        }
                        cursorQuery.close();
                        r2 = obj2;
                        zzicVar = zzicVar6;
                    }
                } catch (SQLiteException e27) {
                    e = e27;
                    r17 = r2;
                    zzicVar2 = zzicVar;
                }
            } catch (Throwable th13) {
                th = th13;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
            cursorQuery = kvaVarZzj14.M().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r2}, null, null, null);
        } catch (SQLiteException e28) {
            e = e28;
            r17 = r2;
            str3 = "Failed to merge filter. appId";
            obj = "Database error querying filters. appId";
            zzicVar2 = zzicVar;
            cursorQuery = null;
        } catch (Throwable th14) {
            th = th14;
            cursorQuery = null;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        arrayMap = map6;
        kva kvaVarZzj17 = zzpgVar3.zzj();
        r2 = this.d;
        kvaVarZzj17.a();
        zzicVar = kvaVarZzj17.a;
        kvaVarZzj17.zzg();
        Preconditions.checkNotEmpty(r2);
        if (arrayMap2.isEmpty()) {
            str5 = "audience_id";
            zzicVar3 = zzicVar7;
        } else {
            HashSet<Integer> hashSet5 = new HashSet(arrayMap2.keySet());
            if (z3) {
                String str113 = this.d;
                kvaVarZzj = zzpgVar3.zzj();
                str6 = this.d;
                kvaVarZzj.a();
                kvaVarZzj.zzg();
                Preconditions.checkNotEmpty(str6);
                arrayMap5 = new ArrayMap();
                cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                        arrayList = (List) arrayMap5.get(numValueOf2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayMap5.put(numValueOf2, arrayList);
                        }
                        arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                    } while (cursorRawQuery.moveToNext());
                } else {
                    arrayMap5 = Collections.EMPTY_MAP;
                }
                cursorRawQuery.close();
                Preconditions.checkNotEmpty(str113);
                Preconditions.checkNotNull(arrayMap2);
                arrayMap6 = new ArrayMap();
                if (!arrayMap2.isEmpty()) {
                    it2 = arrayMap2.keySet().iterator();
                    while (it2.hasNext()) {
                        num = (Integer) it2.next();
                        num.getClass();
                        zziiVar3 = (zzii) arrayMap2.get(num);
                        list4 = (List) arrayMap5.get(num);
                        if (list4 != null) {
                        }
                        map2 = arrayMap5;
                        it3 = it2;
                        zzicVar4 = zzicVar7;
                        arrayMap6.put(num, zziiVar3);
                        arrayMap5 = map2;
                        it2 = it3;
                        str17 = str17;
                        zzicVar7 = zzicVar4;
                    }
                }
                str4 = str17;
                zzicVar3 = zzicVar7;
                map = arrayMap6;
            } else {
                str4 = "audience_id";
                zzicVar3 = zzicVar7;
                map = arrayMap2;
            }
            while (r17.hasNext()) {
                num3.getClass();
                zziiVar = (zzii) map.get(num3);
                bitSet = new BitSet();
                bitSet2 = new BitSet();
                arrayMap3 = new ArrayMap();
                if (zziiVar != null) {
                    while (r3.hasNext()) {
                        if (zzhqVar.zza()) {
                            zzii zziiVar17 = zziiVar;
                            Integer numValueOf16 = Integer.valueOf(zzhqVar.zzb());
                            if (zzhqVar.zzc()) {
                                lValueOf = Long.valueOf(zzhqVar.zzd());
                            } else {
                                lValueOf = null;
                            }
                            arrayMap3.put(numValueOf16, lValueOf);
                            zziiVar = zziiVar17;
                        }
                    }
                }
                zziiVar2 = zziiVar;
                arrayMap4 = new ArrayMap();
                if (zziiVar2 != null) {
                    it = zziiVar2.zzh().iterator();
                    while (it.hasNext()) {
                        zzikVar = (zzik) it.next();
                        if (!zzikVar.zza()) {
                        }
                    }
                }
                Map map18 = map;
                if (zziiVar2 != null) {
                    i = 0;
                    while (i < zziiVar2.zzb() * 64) {
                        if (zzpk.B(i, zziiVar2.zza())) {
                            z4 = zZzp;
                            zzicVar3.zzaW().zzk().zzc("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i));
                            bitSet2.set(i);
                            if (zzpk.B(i, zziiVar2.zzc())) {
                                bitSet.set(i);
                            }
                            i++;
                            zZzp = z4;
                        } else {
                            z4 = zZzp;
                        }
                        arrayMap3.remove(Integer.valueOf(i));
                        i++;
                        zZzp = z4;
                    }
                }
                boolean z12 = zZzp;
                zzii zziiVar18 = (zzii) arrayMap2.get(num3);
                if (zZzp2) {
                    while (r2.hasNext()) {
                        int iZzb8 = zzffVar2.zzb();
                        Integer num11 = num3;
                        jLongValue = this.h.longValue() / 1000;
                        if (zzffVar2.zzk()) {
                            jLongValue = this.g.longValue() / 1000;
                        }
                        numValueOf = Integer.valueOf(iZzb8);
                        if (arrayMap3.containsKey(numValueOf)) {
                            arrayMap3.put(numValueOf, Long.valueOf(jLongValue));
                        }
                        if (arrayMap4.containsKey(numValueOf)) {
                            arrayMap4.put(numValueOf, Long.valueOf(jLongValue));
                        }
                        num3 = num11;
                    }
                }
                String str215 = str3;
                this.f.put(num3, new whc(this, this.d, zziiVar18, bitSet, bitSet2, arrayMap3, arrayMap4));
                zZzp = z12;
                zZzp2 = zZzp2;
                obj = obj;
                arrayMap2 = arrayMap2;
                str2 = str2;
                arrayMap = arrayMap;
                str3 = str215;
                map = map18;
            }
            str5 = str4;
        }
        str7 = str2;
        String str216 = str3;
        ?? r14 = obj;
        str8 = "Skipping failed audience ID";
        if (!list.isEmpty()) {
            micVar = new mic(this);
            arrayMap7 = new ArrayMap();
            it4 = list.iterator();
            while (it4.hasNext()) {
                zzhsVar = (zzhs) it4.next();
                zzhsVarA = micVar.a(zzhsVar, this.d);
                if (zzhsVarA != null) {
                    qwaVarH = zzpgVar3.zzj().H(this.d, zzhsVar, zzhsVarA.zzd());
                    zzpgVar3.zzj().y(str14, qwaVarH);
                    if (!z) {
                        String str217 = str14;
                        zzpgVar = zzpgVar3;
                        j = qwaVarH.c;
                        strZzd = zzhsVarA.zzd();
                        map3 = (Map) arrayMap7.get(strZzd);
                        if (map3 == null) {
                            kva kvaVarZzj18 = zzpgVar.zzj();
                            str9 = this.d;
                            kvaVarZzj18.a();
                            zzic zzicVar110 = kvaVarZzj18.a;
                            kvaVarZzj18.zzg();
                            Preconditions.checkNotEmpty(str9);
                            Preconditions.checkNotEmpty(strZzd);
                            arrayMap9 = new ArrayMap();
                            str10 = str9;
                            cursorQuery2 = kvaVarZzj18.M().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strZzd}, null, null, null);
                            if (cursorQuery2.moveToFirst()) {
                                qwaVar = qwaVarH;
                                while (true) {
                                    zzff zzffVar14 = (zzff) ((zzfe) zzpk.H(zzff.zzn(), cursorQuery2.getBlob(1))).zzbd();
                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                    list5 = (List) arrayMap9.get(numValueOf3);
                                    if (list5 == null) {
                                        cursor2 = cursorQuery2;
                                        arrayList2 = new ArrayList();
                                        arrayMap9.put(numValueOf3, arrayList2);
                                    } else {
                                        cursor2 = cursorQuery2;
                                        arrayList2 = list5;
                                    }
                                    arrayList2.add(zzffVar14);
                                    if (!cursor2.moveToNext()) {
                                        break;
                                        break;
                                    }
                                    cursorQuery2 = cursor2;
                                }
                                cursor2.close();
                                map3 = arrayMap9;
                            } else {
                                cursor2 = cursorQuery2;
                                qwaVar = qwaVarH;
                                map3 = Collections.EMPTY_MAP;
                                cursor2.close();
                            }
                            arrayMap7.put(strZzd, map3);
                        } else {
                            qwaVar = qwaVarH;
                        }
                        it5 = map3.keySet().iterator();
                        while (it5.hasNext()) {
                            num2 = (Integer) it5.next();
                            iIntValue = num2.intValue();
                            if (this.e.contains(num2)) {
                                zzicVar3.zzaW().zzk().zzb("Skipping failed audience ID", num2);
                            } else {
                                it6 = ((List) map3.get(num2)).iterator();
                                z5 = true;
                                while (true) {
                                    if (!it6.hasNext()) {
                                        map4 = map3;
                                        it7 = it5;
                                        arrayMap8 = arrayMap7;
                                        j2 = j;
                                        break;
                                    }
                                    map4 = map3;
                                    zzff zzffVar15 = (zzff) it6.next();
                                    it7 = it5;
                                    arrayMap8 = arrayMap7;
                                    toaVar = new toa(this, this.d, iIntValue, zzffVar15);
                                    Long l17 = this.g;
                                    Long l18 = this.h;
                                    iZzb = zzffVar15.zzb();
                                    whcVar = (whc) this.f.get(num2);
                                    if (whcVar == null) {
                                        z6 = false;
                                    } else {
                                        z6 = whcVar.d.get(iZzb);
                                    }
                                    j2 = j;
                                    zG = toaVar.g(l17, l18, zzhsVarA, j2, qwaVar, z6);
                                    if (!zG) {
                                        this.e.add(num2);
                                        z5 = zG;
                                        break;
                                    }
                                    d(num2).a(toaVar);
                                    z5 = zG;
                                    j = j2;
                                    map3 = map4;
                                    it5 = it7;
                                    arrayMap7 = arrayMap8;
                                }
                                if (!z5) {
                                    this.e.add(num2);
                                }
                                j = j2;
                                map3 = map4;
                                it5 = it7;
                                arrayMap7 = arrayMap8;
                            }
                        }
                        it4 = it4;
                        str14 = str217;
                        zzpgVar3 = zzpgVar;
                        micVar = micVar;
                    }
                }
            }
        }
        zzpgVar2 = zzpgVar3;
        if (!z) {
            return new ArrayList();
        }
        if (!list2.isEmpty()) {
            arrayMap10 = new ArrayMap();
            it8 = list2.iterator();
            while (it8.hasNext()) {
                zziu zziuVar6 = (zziu) it8.next();
                strZzc = zziuVar6.zzc();
                map5 = (Map) arrayMap10.get(strZzc);
                if (map5 == null) {
                    kva kvaVarZzj19 = zzpgVar2.zzj();
                    str12 = this.d;
                    kvaVarZzj19.a();
                    zzic zzicVar111 = kvaVarZzj19.a;
                    kvaVarZzj19.zzg();
                    Preconditions.checkNotEmpty(str12);
                    Preconditions.checkNotEmpty(strZzc);
                    arrayMap11 = new ArrayMap();
                    cursorQuery3 = kvaVarZzj19.M().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strZzc}, null, null, null);
                    if (cursorQuery3.moveToFirst()) {
                        while (true) {
                            zzfn zzfnVar7 = (zzfn) ((zzfm) zzpk.H(zzfn.zzj(), cursorQuery3.getBlob(1))).zzbd();
                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                            list6 = (List) arrayMap11.get(numValueOf6);
                            if (list6 == null) {
                                it9 = it8;
                                arrayList4 = new ArrayList();
                                arrayMap11.put(numValueOf6, arrayList4);
                            } else {
                                it9 = it8;
                                arrayList4 = list6;
                            }
                            arrayList4.add(zzfnVar7);
                            str13 = str12;
                            if (!cursorQuery3.moveToNext()) {
                                break;
                                break;
                            }
                            it8 = it9;
                            str12 = str13;
                        }
                        cursorQuery3.close();
                        map5 = arrayMap11;
                    } else {
                        it9 = it8;
                        map5 = Collections.EMPTY_MAP;
                        cursorQuery3.close();
                    }
                    arrayMap10.put(strZzc, map5);
                } else {
                    it9 = it8;
                }
                while (r4.hasNext()) {
                    int iIntValue13 = num5.intValue();
                    if (this.e.contains(num5)) {
                        zzicVar3.zzaW().zzk().zzb(str8, num5);
                        break;
                        break;
                    }
                    it10 = ((List) map5.get(num5)).iterator();
                    zG2 = true;
                    while (true) {
                        if (it10.hasNext()) {
                            zzfnVar = (zzfn) it10.next();
                            if (Log.isLoggable(zzicVar3.zzaW().f(), 2)) {
                                zzgs zzgsVarZzk7 = zzicVar3.zzaW().zzk();
                                if (zzfnVar.zza()) {
                                    numValueOf5 = Integer.valueOf(zzfnVar.zzb());
                                } else {
                                    numValueOf5 = null;
                                }
                                zzgsVarZzk7.zzd("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar3.zzl().c(zzfnVar.zzc()));
                                zzicVar3.zzaW().zzk().zzb("Filter definition", zzpgVar2.zzp().y(zzfnVar));
                            }
                            if (zzfnVar.zza()) {
                            }
                            zzgs zzgsVarZze7 = zzicVar3.zzaW().zze();
                            qkb qkbVarD7 = zzgu.d(this.d);
                            if (zzfnVar.zza()) {
                                numValueOf4 = Integer.valueOf(zzfnVar.zzb());
                            } else {
                                numValueOf4 = null;
                            }
                            zzgsVarZze7.zzc("Invalid property filter ID. appId, id", qkbVarD7, String.valueOf(numValueOf4));
                            this.e.add(num5);
                            map5 = map5;
                            str8 = str8;
                        } else {
                            map5 = map5;
                            str8 = str8;
                        }
                        if (!zG2) {
                            this.e.add(num5);
                        }
                        map5 = map5;
                        str8 = str8;
                        d(num5).a(bqaVar);
                        map5 = map5;
                        str8 = str8;
                    }
                }
                it8 = it9;
            }
        }
        arrayList3 = new ArrayList();
        Set<Integer> setKeySet6 = this.f.keySet();
        setKeySet6.removeAll(this.e);
        while (r3.hasNext()) {
            int iIntValue14 = num6.intValue();
            whc whcVar8 = (whc) this.f.get(num6);
            Preconditions.checkNotNull(whcVar8);
            zzhg zzhgVarB6 = whcVar8.b(iIntValue14);
            arrayList3.add(zzhgVarB6);
            kvaVarZzj2 = zzpgVar2.zzj();
            str11 = this.d;
            zzii zziiVarZzc6 = zzhgVarB6.zzc();
            kvaVarZzj2.a();
            zzicVar5 = kvaVarZzj2.a;
            kvaVarZzj2.zzg();
            Preconditions.checkNotEmpty(str11);
            Preconditions.checkNotNull(zziiVarZzc6);
            byte[] bArrZzcd6 = zziiVarZzc6.zzcd();
            contentValues = new ContentValues();
            contentValues.put(CommonUrlParts.APP_ID, str11);
            contentValues.put(str5, num6);
            contentValues.put("current_results", bArrZzcd6);
            if (kvaVarZzj2.M().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                zzicVar5.zzaW().zzb().zzb("Failed to insert filter results (got -1). appId", zzgu.d(str11));
            }
        }
        return arrayList3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final whc d(Integer num) {
        if (this.f.containsKey(num)) {
            return (whc) this.f.get(num);
        }
        whc whcVar = new whc(this, this.d);
        this.f.put(num, whcVar);
        return whcVar;
    }
}
