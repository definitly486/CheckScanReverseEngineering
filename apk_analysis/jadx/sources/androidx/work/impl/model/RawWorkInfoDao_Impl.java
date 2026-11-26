package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomDatabase;
import androidx.room.RoomRawQuery;
import androidx.room.RoomSQLiteQuery;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import androidx.work.impl.model.RawWorkInfoDao_Impl;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.ad2;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jp4;
import defpackage.kx2;
import defpackage.n05;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.vx6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;

    public RawWorkInfoDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.__db = roomDatabase;
    }

    private final void __fetchRelationshipWorkProgressAsandroidxWorkData(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<Data>> arrayMap) {
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new nl3() { // from class: tx6
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(this.b, sQLiteConnection, (ArrayMap) obj);
                }
            });
            return;
        }
        StringBuilder sbC = ad2.c("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        StringUtil.appendPlaceholders(sbC, setKeySet.size());
        sbC.append(")");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sbC.toString());
        Iterator<String> it = setKeySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            sQLiteStatementPrepare.mo9365bindText(i, it.next());
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "work_spec_id");
            if (columnIndex == -1) {
                sQLiteStatementPrepare.close();
                return;
            }
            while (sQLiteStatementPrepare.step()) {
                List<Data> list = arrayMap.get(sQLiteStatementPrepare.getText(columnIndex));
                if (list != null) {
                    list.add(Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(0)));
                }
            }
            sQLiteStatementPrepare.close();
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        arrayMap.getClass();
        rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap);
        return j59.a;
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<String>> arrayMap) {
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new nl3() { // from class: wx6
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$3(this.b, sQLiteConnection, (ArrayMap) obj);
                }
            });
            return;
        }
        StringBuilder sbC = ad2.c("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        StringUtil.appendPlaceholders(sbC, setKeySet.size());
        sbC.append(")");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sbC.toString());
        Iterator<String> it = setKeySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            sQLiteStatementPrepare.mo9365bindText(i, it.next());
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "work_spec_id");
            if (columnIndex == -1) {
                sQLiteStatementPrepare.close();
                return;
            }
            while (sQLiteStatementPrepare.step()) {
                List<String> list = arrayMap.get(sQLiteStatementPrepare.getText(columnIndex));
                if (list != null) {
                    list.add(sQLiteStatementPrepare.getText(0));
                }
            }
            sQLiteStatementPrepare.close();
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 __fetchRelationshipWorkTagAsjavaLangString$lambda$3(RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        arrayMap.getClass();
        rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojos$lambda$0(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(sQLiteStatementPrepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i3 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (sQLiteStatementPrepare.step()) {
                int i4 = columnIndex11;
                String text = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i4;
                columnIndex10 = columnIndex10;
            }
            int i5 = columnIndex10;
            int i6 = columnIndex11;
            sQLiteStatementPrepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                if (columnIndex == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
                String text3 = sQLiteStatementPrepare.getText(columnIndex);
                if (columnIndex2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                }
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndex2));
                if (columnIndex3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                }
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndex3));
                long j = columnIndex4 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex4);
                long j2 = columnIndex5 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex5);
                long j3 = columnIndex6 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex6);
                boolean z4 = false;
                int i7 = columnIndex7 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(columnIndex7);
                if (columnIndex8 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                }
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndex8));
                long j4 = columnIndex9 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex9);
                int i8 = i5;
                long j5 = i8 == -1 ? 0L : sQLiteStatementPrepare.getLong(i8);
                int i9 = i6;
                int i10 = i9 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i9);
                int i11 = i3;
                int i12 = i11 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i11);
                int i13 = columnIndex13;
                long j6 = i13 == -1 ? 0L : sQLiteStatementPrepare.getLong(i13);
                int i14 = columnIndex14;
                int i15 = i14 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndex15;
                if (i16 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                }
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i16));
                int i17 = columnIndex16;
                if (i17 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                }
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i17));
                int i18 = columnIndex17;
                if (i18 == -1) {
                    z = false;
                } else {
                    z = ((int) sQLiteStatementPrepare.getLong(i18)) != 0;
                }
                int i19 = columnIndex18;
                if (i19 == -1) {
                    z2 = false;
                } else {
                    z2 = ((int) sQLiteStatementPrepare.getLong(i19)) != 0;
                }
                int i20 = columnIndex19;
                if (i20 == -1) {
                    z3 = false;
                } else {
                    z3 = ((int) sQLiteStatementPrepare.getLong(i20)) != 0;
                }
                int i21 = columnIndex20;
                if (i21 == -1) {
                    i = i19;
                    i2 = i20;
                } else {
                    i = i19;
                    i2 = i20;
                    if (((int) sQLiteStatementPrepare.getLong(i21)) != 0) {
                        z4 = true;
                    }
                }
                int i22 = columnIndex21;
                boolean z5 = z4;
                long j7 = i22 == -1 ? 0L : sQLiteStatementPrepare.getLong(i22);
                int i23 = columnIndex22;
                long j8 = i23 == -1 ? 0L : sQLiteStatementPrepare.getLong(i23);
                columnIndex21 = i22;
                int i24 = columnIndex23;
                if (i24 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                }
                Constraints constraints = new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z, z2, z3, z5, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i24)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap);
                objC.getClass();
                List list = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i7, backoffPolicyIntToBackoffPolicy, j4, j5, i10, i12, j6, i15, list, (List) objC2));
                i3 = i11;
                columnIndex13 = i13;
                columnIndex14 = i14;
                columnIndex15 = i16;
                columnIndex17 = i18;
                columnIndex18 = i;
                columnIndex5 = columnIndex5;
                columnIndex19 = i2;
                columnIndex20 = i21;
                columnIndex4 = columnIndex4;
                columnIndex23 = i24;
                columnIndex22 = i23;
                columnIndex2 = columnIndex2;
                columnIndex3 = columnIndex3;
                columnIndex16 = i17;
                i5 = i8;
                i6 = i9;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojosFlow$lambda$2(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(sQLiteStatementPrepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i3 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (sQLiteStatementPrepare.step()) {
                int i4 = columnIndex11;
                String text = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i4;
                columnIndex10 = columnIndex10;
            }
            int i5 = columnIndex10;
            int i6 = columnIndex11;
            sQLiteStatementPrepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                if (columnIndex == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
                String text3 = sQLiteStatementPrepare.getText(columnIndex);
                if (columnIndex2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                }
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndex2));
                if (columnIndex3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                }
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndex3));
                long j = columnIndex4 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex4);
                long j2 = columnIndex5 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex5);
                long j3 = columnIndex6 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex6);
                boolean z4 = false;
                int i7 = columnIndex7 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(columnIndex7);
                if (columnIndex8 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                }
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndex8));
                long j4 = columnIndex9 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex9);
                int i8 = i5;
                long j5 = i8 == -1 ? 0L : sQLiteStatementPrepare.getLong(i8);
                int i9 = i6;
                int i10 = i9 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i9);
                int i11 = i3;
                int i12 = i11 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i11);
                int i13 = columnIndex13;
                long j6 = i13 == -1 ? 0L : sQLiteStatementPrepare.getLong(i13);
                int i14 = columnIndex14;
                int i15 = i14 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndex15;
                if (i16 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                }
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i16));
                int i17 = columnIndex16;
                if (i17 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                }
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i17));
                int i18 = columnIndex17;
                if (i18 == -1) {
                    z = false;
                } else {
                    z = ((int) sQLiteStatementPrepare.getLong(i18)) != 0;
                }
                int i19 = columnIndex18;
                if (i19 == -1) {
                    z2 = false;
                } else {
                    z2 = ((int) sQLiteStatementPrepare.getLong(i19)) != 0;
                }
                int i20 = columnIndex19;
                if (i20 == -1) {
                    z3 = false;
                } else {
                    z3 = ((int) sQLiteStatementPrepare.getLong(i20)) != 0;
                }
                int i21 = columnIndex20;
                if (i21 == -1) {
                    i = i19;
                    i2 = i20;
                } else {
                    i = i19;
                    i2 = i20;
                    if (((int) sQLiteStatementPrepare.getLong(i21)) != 0) {
                        z4 = true;
                    }
                }
                int i22 = columnIndex21;
                boolean z5 = z4;
                long j7 = i22 == -1 ? 0L : sQLiteStatementPrepare.getLong(i22);
                int i23 = columnIndex22;
                long j8 = i23 == -1 ? 0L : sQLiteStatementPrepare.getLong(i23);
                columnIndex21 = i22;
                int i24 = columnIndex23;
                if (i24 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                }
                Constraints constraints = new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z, z2, z3, z5, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i24)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap);
                objC.getClass();
                List list = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i7, backoffPolicyIntToBackoffPolicy, j4, j5, i10, i12, j6, i15, list, (List) objC2));
                i3 = i11;
                columnIndex13 = i13;
                columnIndex14 = i14;
                columnIndex15 = i16;
                columnIndex17 = i18;
                columnIndex18 = i;
                columnIndex5 = columnIndex5;
                columnIndex19 = i2;
                columnIndex20 = i21;
                columnIndex4 = columnIndex4;
                columnIndex23 = i24;
                columnIndex22 = i23;
                columnIndex2 = columnIndex2;
                columnIndex3 = columnIndex3;
                columnIndex16 = i17;
                i5 = i8;
                i6 = i9;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojosLiveData$lambda$1(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(sQLiteStatementPrepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i3 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (sQLiteStatementPrepare.step()) {
                int i4 = columnIndex11;
                String text = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i4;
                columnIndex10 = columnIndex10;
            }
            int i5 = columnIndex10;
            int i6 = columnIndex11;
            sQLiteStatementPrepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                if (columnIndex == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
                String text3 = sQLiteStatementPrepare.getText(columnIndex);
                if (columnIndex2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                }
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndex2));
                if (columnIndex3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                }
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndex3));
                long j = columnIndex4 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex4);
                long j2 = columnIndex5 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex5);
                long j3 = columnIndex6 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex6);
                boolean z4 = false;
                int i7 = columnIndex7 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(columnIndex7);
                if (columnIndex8 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                }
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndex8));
                long j4 = columnIndex9 == -1 ? 0L : sQLiteStatementPrepare.getLong(columnIndex9);
                int i8 = i5;
                long j5 = i8 == -1 ? 0L : sQLiteStatementPrepare.getLong(i8);
                int i9 = i6;
                int i10 = i9 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i9);
                int i11 = i3;
                int i12 = i11 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i11);
                int i13 = columnIndex13;
                long j6 = i13 == -1 ? 0L : sQLiteStatementPrepare.getLong(i13);
                int i14 = columnIndex14;
                int i15 = i14 == -1 ? 0 : (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndex15;
                if (i16 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                }
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i16));
                int i17 = columnIndex16;
                if (i17 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                }
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i17));
                int i18 = columnIndex17;
                if (i18 == -1) {
                    z = false;
                } else {
                    z = ((int) sQLiteStatementPrepare.getLong(i18)) != 0;
                }
                int i19 = columnIndex18;
                if (i19 == -1) {
                    z2 = false;
                } else {
                    z2 = ((int) sQLiteStatementPrepare.getLong(i19)) != 0;
                }
                int i20 = columnIndex19;
                if (i20 == -1) {
                    z3 = false;
                } else {
                    z3 = ((int) sQLiteStatementPrepare.getLong(i20)) != 0;
                }
                int i21 = columnIndex20;
                if (i21 == -1) {
                    i = i19;
                    i2 = i20;
                } else {
                    i = i19;
                    i2 = i20;
                    if (((int) sQLiteStatementPrepare.getLong(i21)) != 0) {
                        z4 = true;
                    }
                }
                int i22 = columnIndex21;
                boolean z5 = z4;
                long j7 = i22 == -1 ? 0L : sQLiteStatementPrepare.getLong(i22);
                int i23 = columnIndex22;
                long j8 = i23 == -1 ? 0L : sQLiteStatementPrepare.getLong(i23);
                columnIndex21 = i22;
                int i24 = columnIndex23;
                if (i24 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                }
                Constraints constraints = new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z, z2, z3, z5, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i24)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap);
                objC.getClass();
                List list = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(columnIndex), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i7, backoffPolicyIntToBackoffPolicy, j4, j5, i10, i12, j6, i15, list, (List) objC2));
                i3 = i11;
                columnIndex13 = i13;
                columnIndex14 = i14;
                columnIndex15 = i16;
                columnIndex17 = i18;
                columnIndex18 = i;
                columnIndex5 = columnIndex5;
                columnIndex19 = i2;
                columnIndex20 = i21;
                columnIndex4 = columnIndex4;
                columnIndex23 = i24;
                columnIndex22 = i23;
                columnIndex2 = columnIndex2;
                columnIndex3 = columnIndex3;
                columnIndex16 = i17;
                i5 = i8;
                i6 = i9;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(SupportSQLiteQuery supportSQLiteQuery) {
        supportSQLiteQuery.getClass();
        RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        return (List) DBUtil.performBlocking(this.__db, true, false, new jp4(roomRawQuery.getSql(), roomRawQuery, this, 1));
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public hd3<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosFlow(SupportSQLiteQuery supportSQLiteQuery) {
        supportSQLiteQuery.getClass();
        final RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        final String sql = roomRawQuery.getSql();
        return FlowUtil.createFlow(this.__db, false, new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, new nl3() { // from class: ux6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RawWorkInfoDao_Impl.getWorkInfoPojosFlow$lambda$2(sql, roomRawQuery, this, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(SupportSQLiteQuery supportSQLiteQuery) {
        supportSQLiteQuery.getClass();
        RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, (nl3) new vx6(roomRawQuery.getSql(), roomRawQuery, this, 0));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<ne4<?>> getRequiredConverters() {
            return kx2.b;
        }

        private Companion() {
        }
    }
}
