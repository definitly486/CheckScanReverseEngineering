package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.ab6;
import defpackage.ad2;
import defpackage.ar8;
import defpackage.ec9;
import defpackage.eu6;
import defpackage.fg0;
import defpackage.ft3;
import defpackage.gj5;
import defpackage.hd3;
import defpackage.ih8;
import defpackage.ii1;
import defpackage.j22;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ji3;
import defpackage.k16;
import defpackage.ko;
import defpackage.kx2;
import defpackage.m14;
import defpackage.mf5;
import defpackage.n05;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.nz;
import defpackage.og5;
import defpackage.oo;
import defpackage.os;
import defpackage.p88;
import defpackage.pf;
import defpackage.ps0;
import defpackage.qc7;
import defpackage.qh8;
import defpackage.qn7;
import defpackage.qs0;
import defpackage.ry1;
import defpackage.s04;
import defpackage.sf;
import defpackage.us2;
import defpackage.ux8;
import defpackage.wf3;
import defpackage.ws2;
import defpackage.xi1;
import defpackage.xk9;
import defpackage.zk9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkSpec> __insertAdapterOfWorkSpec;
    private final EntityDeleteOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.__db = roomDatabase;
        this.__insertAdapterOfWorkSpec = new EntityInsertAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement sQLiteStatement, WorkSpec workSpec) {
                sQLiteStatement.getClass();
                workSpec.getClass();
                sQLiteStatement.mo9365bindText(1, workSpec.id);
                sQLiteStatement.mo9363bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                sQLiteStatement.mo9365bindText(3, workSpec.workerClassName);
                sQLiteStatement.mo9365bindText(4, workSpec.inputMergerClassName);
                Data.Companion companion = Data.Companion;
                sQLiteStatement.mo9361bindBlob(5, companion.toByteArrayInternalV1(workSpec.input));
                sQLiteStatement.mo9361bindBlob(6, companion.toByteArrayInternalV1(workSpec.output));
                sQLiteStatement.mo9363bindLong(7, workSpec.initialDelay);
                sQLiteStatement.mo9363bindLong(8, workSpec.intervalDuration);
                sQLiteStatement.mo9363bindLong(9, workSpec.flexDuration);
                sQLiteStatement.mo9363bindLong(10, workSpec.runAttemptCount);
                sQLiteStatement.mo9363bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                sQLiteStatement.mo9363bindLong(12, workSpec.backoffDelayDuration);
                sQLiteStatement.mo9363bindLong(13, workSpec.lastEnqueueTime);
                sQLiteStatement.mo9363bindLong(14, workSpec.minimumRetentionDuration);
                sQLiteStatement.mo9363bindLong(15, workSpec.scheduleRequestedAt);
                sQLiteStatement.mo9363bindLong(16, workSpec.expedited ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                sQLiteStatement.mo9363bindLong(18, workSpec.getPeriodCount());
                sQLiteStatement.mo9363bindLong(19, workSpec.getGeneration());
                sQLiteStatement.mo9363bindLong(20, workSpec.getNextScheduleTimeOverride());
                sQLiteStatement.mo9363bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                sQLiteStatement.mo9363bindLong(22, workSpec.getStopReason());
                String traceTag = workSpec.getTraceTag();
                if (traceTag == null) {
                    sQLiteStatement.mo9364bindNull(23);
                } else {
                    sQLiteStatement.mo9365bindText(23, traceTag);
                }
                Boolean backOffOnSystemInterruptions = workSpec.getBackOffOnSystemInterruptions();
                Integer numValueOf = backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null;
                if (numValueOf == null) {
                    sQLiteStatement.mo9364bindNull(24);
                } else {
                    sQLiteStatement.mo9363bindLong(24, numValueOf.intValue());
                }
                Constraints constraints = workSpec.constraints;
                sQLiteStatement.mo9363bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                sQLiteStatement.mo9361bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                sQLiteStatement.mo9363bindLong(27, constraints.requiresCharging() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                sQLiteStatement.mo9363bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                sQLiteStatement.mo9361bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            }

            @Override // androidx.room.EntityInsertAdapter
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeleteOrUpdateAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            public void bind(SQLiteStatement sQLiteStatement, WorkSpec workSpec) {
                sQLiteStatement.getClass();
                workSpec.getClass();
                sQLiteStatement.mo9365bindText(1, workSpec.id);
                sQLiteStatement.mo9363bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                sQLiteStatement.mo9365bindText(3, workSpec.workerClassName);
                sQLiteStatement.mo9365bindText(4, workSpec.inputMergerClassName);
                Data.Companion companion = Data.Companion;
                sQLiteStatement.mo9361bindBlob(5, companion.toByteArrayInternalV1(workSpec.input));
                sQLiteStatement.mo9361bindBlob(6, companion.toByteArrayInternalV1(workSpec.output));
                sQLiteStatement.mo9363bindLong(7, workSpec.initialDelay);
                sQLiteStatement.mo9363bindLong(8, workSpec.intervalDuration);
                sQLiteStatement.mo9363bindLong(9, workSpec.flexDuration);
                sQLiteStatement.mo9363bindLong(10, workSpec.runAttemptCount);
                sQLiteStatement.mo9363bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                sQLiteStatement.mo9363bindLong(12, workSpec.backoffDelayDuration);
                sQLiteStatement.mo9363bindLong(13, workSpec.lastEnqueueTime);
                sQLiteStatement.mo9363bindLong(14, workSpec.minimumRetentionDuration);
                sQLiteStatement.mo9363bindLong(15, workSpec.scheduleRequestedAt);
                sQLiteStatement.mo9363bindLong(16, workSpec.expedited ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                sQLiteStatement.mo9363bindLong(18, workSpec.getPeriodCount());
                sQLiteStatement.mo9363bindLong(19, workSpec.getGeneration());
                sQLiteStatement.mo9363bindLong(20, workSpec.getNextScheduleTimeOverride());
                sQLiteStatement.mo9363bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                sQLiteStatement.mo9363bindLong(22, workSpec.getStopReason());
                String traceTag = workSpec.getTraceTag();
                if (traceTag == null) {
                    sQLiteStatement.mo9364bindNull(23);
                } else {
                    sQLiteStatement.mo9365bindText(23, traceTag);
                }
                Boolean backOffOnSystemInterruptions = workSpec.getBackOffOnSystemInterruptions();
                Integer numValueOf = backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null;
                if (numValueOf == null) {
                    sQLiteStatement.mo9364bindNull(24);
                } else {
                    sQLiteStatement.mo9363bindLong(24, numValueOf.intValue());
                }
                Constraints constraints = workSpec.constraints;
                sQLiteStatement.mo9363bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                sQLiteStatement.mo9361bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                sQLiteStatement.mo9363bindLong(27, constraints.requiresCharging() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
                sQLiteStatement.mo9363bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                sQLiteStatement.mo9363bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                sQLiteStatement.mo9361bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
                sQLiteStatement.mo9365bindText(34, workSpec.id);
            }

            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            public String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }
        };
    }

    private final void __fetchRelationshipWorkProgressAsandroidxWorkData(SQLiteConnection sQLiteConnection, ArrayMap<String, List<Data>> arrayMap) {
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        int i = 1;
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new og5(i, this, sQLiteConnection));
            return;
        }
        StringBuilder sbC = ad2.c("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        StringUtil.appendPlaceholders(sbC, setKeySet.size());
        sbC.append(")");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sbC.toString());
        Iterator<String> it = setKeySet.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            sQLiteStatementPrepare.mo9365bindText(i2, it.next());
            i2++;
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
    public static final j59 __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        arrayMap.getClass();
        workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap);
        return j59.a;
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<String>> arrayMap) {
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new nl3() { // from class: al9
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return WorkSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$52(this.b, sQLiteConnection, (ArrayMap) obj);
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
    public static final j59 __fetchRelationshipWorkTagAsjavaLangString$lambda$52(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        arrayMap.getClass();
        workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int countNonFinishedContentUriTriggerWorkers$lambda$36(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            return sQLiteStatementPrepare.step() ? (int) sQLiteStatementPrepare.getLong(0) : 0;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 delete$lambda$37(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllEligibleWorkSpecsForScheduling$lambda$29(String str, int i, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow;
                int i6 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(i2);
                long j6 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i7);
                columnIndexOrThrow15 = i7;
                int i8 = columnIndexOrThrow16;
                int i9 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i8)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = (int) sQLiteStatementPrepare.getLong(i12);
                int i14 = columnIndexOrThrow19;
                int i15 = (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i16);
                int i17 = columnIndexOrThrow21;
                int i18 = (int) sQLiteStatementPrepare.getLong(i17);
                columnIndexOrThrow21 = i17;
                columnIndexOrThrow22 = columnIndexOrThrow22;
                int i19 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow22);
                int i20 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i20) ? null : sQLiteStatementPrepare.getText(i20);
                int i21 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i21));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i22 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i22));
                int i23 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i23));
                int i24 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                int i25 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow29 = i26;
                int i27 = columnIndexOrThrow30;
                int i28 = columnIndexOrThrow31;
                int i29 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i28;
                int i30 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i27)) != 0, sQLiteStatementPrepare.getLong(i28), sQLiteStatementPrepare.getLong(i29), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i30))), i4, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i13, i15, j8, i18, i19, text4, bool));
                columnIndexOrThrow28 = i25;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow18 = i12;
                columnIndexOrThrow19 = i14;
                columnIndexOrThrow20 = i16;
                columnIndexOrThrow23 = i20;
                columnIndexOrThrow24 = i21;
                columnIndexOrThrow25 = i22;
                columnIndexOrThrow26 = i23;
                columnIndexOrThrow27 = i24;
                columnIndexOrThrow33 = i30;
                columnIndexOrThrow32 = i29;
                columnIndexOrThrow30 = i27;
                columnIndexOrThrow = i5;
                columnIndexOrThrow13 = i2;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow2 = i6;
                columnIndexOrThrow3 = i9;
                columnIndexOrThrow16 = i8;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllUnfinishedWork$lambda$21(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllWorkSpecIds$lambda$5(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllWorkSpecIdsLiveData$lambda$6(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getEligibleWorkForScheduling$lambda$25(String str, int i, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow;
                int i6 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(i2);
                long j6 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i7);
                columnIndexOrThrow15 = i7;
                int i8 = columnIndexOrThrow16;
                int i9 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i8)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = (int) sQLiteStatementPrepare.getLong(i12);
                int i14 = columnIndexOrThrow19;
                int i15 = (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i16);
                int i17 = columnIndexOrThrow21;
                int i18 = (int) sQLiteStatementPrepare.getLong(i17);
                columnIndexOrThrow21 = i17;
                columnIndexOrThrow22 = columnIndexOrThrow22;
                int i19 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow22);
                int i20 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i20) ? null : sQLiteStatementPrepare.getText(i20);
                int i21 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i21));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i22 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i22));
                int i23 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i23));
                int i24 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                int i25 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow29 = i26;
                int i27 = columnIndexOrThrow30;
                int i28 = columnIndexOrThrow31;
                int i29 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i28;
                int i30 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i27)) != 0, sQLiteStatementPrepare.getLong(i28), sQLiteStatementPrepare.getLong(i29), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i30))), i4, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i13, i15, j8, i18, i19, text4, bool));
                columnIndexOrThrow28 = i25;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow18 = i12;
                columnIndexOrThrow19 = i14;
                columnIndexOrThrow20 = i16;
                columnIndexOrThrow23 = i20;
                columnIndexOrThrow24 = i21;
                columnIndexOrThrow25 = i22;
                columnIndexOrThrow26 = i23;
                columnIndexOrThrow27 = i24;
                columnIndexOrThrow33 = i30;
                columnIndexOrThrow32 = i29;
                columnIndexOrThrow30 = i27;
                columnIndexOrThrow = i5;
                columnIndexOrThrow13 = i2;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow2 = i6;
                columnIndexOrThrow3 = i9;
                columnIndexOrThrow16 = i8;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getEligibleWorkForSchedulingWithContentUris$lambda$27(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i2 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i3 = columnIndexOrThrow2;
                int i4 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i);
                int i5 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i5);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i7)) != 0;
                int i8 = columnIndexOrThrow17;
                int i9 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i8));
                int i10 = columnIndexOrThrow18;
                int i11 = columnIndexOrThrow5;
                int i12 = (int) sQLiteStatementPrepare.getLong(i10);
                int i13 = columnIndexOrThrow19;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i15);
                int i16 = columnIndexOrThrow21;
                int i17 = (int) sQLiteStatementPrepare.getLong(i16);
                int i18 = columnIndexOrThrow22;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i20) ? null : sQLiteStatementPrepare.getText(i20);
                int i21 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i21));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i22 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i22));
                int i23 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i23));
                columnIndexOrThrow25 = i22;
                columnIndexOrThrow26 = i23;
                int i24 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                columnIndexOrThrow27 = i24;
                int i25 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow29 = i26;
                int i27 = columnIndexOrThrow30;
                int i28 = columnIndexOrThrow31;
                int i29 = columnIndexOrThrow32;
                int i30 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i30;
                arrayList2.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i27)) != 0, sQLiteStatementPrepare.getLong(i28), sQLiteStatementPrepare.getLong(i29), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i30))), i2, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i12, i14, j8, i17, i19, text4, bool));
                columnIndexOrThrow30 = i27;
                columnIndexOrThrow4 = i9;
                columnIndexOrThrow17 = i8;
                columnIndexOrThrow19 = i13;
                columnIndexOrThrow22 = i18;
                columnIndexOrThrow24 = i21;
                columnIndexOrThrow31 = i28;
                columnIndexOrThrow32 = i29;
                columnIndexOrThrow2 = i3;
                columnIndexOrThrow14 = i;
                columnIndexOrThrow3 = i4;
                arrayList = arrayList2;
                columnIndexOrThrow = i6;
                columnIndexOrThrow15 = i5;
                columnIndexOrThrow16 = i7;
                columnIndexOrThrow20 = i15;
                columnIndexOrThrow21 = i16;
                columnIndexOrThrow23 = i20;
                columnIndexOrThrow28 = i25;
                columnIndexOrThrow5 = i11;
                columnIndexOrThrow18 = i10;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getInputsFromPrerequisites$lambda$18(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(0)));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRecentlyCompletedWork$lambda$35(String str, long j, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i = columnIndexOrThrow13;
                int i2 = columnIndexOrThrow14;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i3 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i4 = columnIndexOrThrow;
                int i5 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j6 = sQLiteStatementPrepare.getLong(i);
                long j7 = sQLiteStatementPrepare.getLong(i2);
                int i6 = columnIndexOrThrow15;
                long j8 = sQLiteStatementPrepare.getLong(i6);
                columnIndexOrThrow15 = i6;
                int i7 = columnIndexOrThrow16;
                int i8 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i7)) != 0;
                int i9 = columnIndexOrThrow17;
                int i10 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i9));
                int i11 = columnIndexOrThrow18;
                int i12 = (int) sQLiteStatementPrepare.getLong(i11);
                int i13 = columnIndexOrThrow19;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow20;
                long j9 = sQLiteStatementPrepare.getLong(i15);
                int i16 = columnIndexOrThrow21;
                int i17 = (int) sQLiteStatementPrepare.getLong(i16);
                columnIndexOrThrow21 = i16;
                columnIndexOrThrow22 = columnIndexOrThrow22;
                int i18 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow22);
                int i19 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i19) ? null : sQLiteStatementPrepare.getText(i19);
                int i20 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i20) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i20));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i21 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i21));
                int i22 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i22));
                int i23 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i23)) != 0;
                int i24 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                int i25 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                columnIndexOrThrow29 = i25;
                int i26 = columnIndexOrThrow30;
                int i27 = columnIndexOrThrow31;
                int i28 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i27;
                int i29 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i26)) != 0, sQLiteStatementPrepare.getLong(i27), sQLiteStatementPrepare.getLong(i28), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i29))), i3, backoffPolicyIntToBackoffPolicy, j5, j6, j7, j8, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i12, i14, j9, i17, i18, text4, bool));
                columnIndexOrThrow4 = i10;
                columnIndexOrThrow17 = i9;
                columnIndexOrThrow18 = i11;
                columnIndexOrThrow19 = i13;
                columnIndexOrThrow20 = i15;
                columnIndexOrThrow23 = i19;
                columnIndexOrThrow24 = i20;
                columnIndexOrThrow25 = i21;
                columnIndexOrThrow26 = i22;
                columnIndexOrThrow27 = i23;
                columnIndexOrThrow28 = i24;
                columnIndexOrThrow33 = i29;
                columnIndexOrThrow32 = i28;
                columnIndexOrThrow30 = i26;
                columnIndexOrThrow = i4;
                columnIndexOrThrow13 = i;
                columnIndexOrThrow14 = i2;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow3 = i8;
                columnIndexOrThrow16 = i7;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRunningWork$lambda$33(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i2 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i3 = columnIndexOrThrow2;
                int i4 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i);
                int i5 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i5);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i7)) != 0;
                int i8 = columnIndexOrThrow17;
                int i9 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i8));
                int i10 = columnIndexOrThrow18;
                int i11 = columnIndexOrThrow5;
                int i12 = (int) sQLiteStatementPrepare.getLong(i10);
                int i13 = columnIndexOrThrow19;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i15);
                int i16 = columnIndexOrThrow21;
                int i17 = (int) sQLiteStatementPrepare.getLong(i16);
                int i18 = columnIndexOrThrow22;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i20) ? null : sQLiteStatementPrepare.getText(i20);
                int i21 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i21));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i22 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i22));
                int i23 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i23));
                columnIndexOrThrow25 = i22;
                columnIndexOrThrow26 = i23;
                int i24 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                columnIndexOrThrow27 = i24;
                int i25 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow29 = i26;
                int i27 = columnIndexOrThrow30;
                int i28 = columnIndexOrThrow31;
                int i29 = columnIndexOrThrow32;
                int i30 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i30;
                arrayList2.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i27)) != 0, sQLiteStatementPrepare.getLong(i28), sQLiteStatementPrepare.getLong(i29), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i30))), i2, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i12, i14, j8, i17, i19, text4, bool));
                columnIndexOrThrow30 = i27;
                columnIndexOrThrow4 = i9;
                columnIndexOrThrow17 = i8;
                columnIndexOrThrow19 = i13;
                columnIndexOrThrow22 = i18;
                columnIndexOrThrow24 = i21;
                columnIndexOrThrow31 = i28;
                columnIndexOrThrow32 = i29;
                columnIndexOrThrow2 = i3;
                columnIndexOrThrow14 = i;
                columnIndexOrThrow3 = i4;
                arrayList = arrayList2;
                columnIndexOrThrow = i6;
                columnIndexOrThrow15 = i5;
                columnIndexOrThrow16 = i7;
                columnIndexOrThrow20 = i15;
                columnIndexOrThrow21 = i16;
                columnIndexOrThrow23 = i20;
                columnIndexOrThrow28 = i25;
                columnIndexOrThrow5 = i11;
                columnIndexOrThrow18 = i10;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getScheduleRequestedAtLiveData$lambda$23(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            Long lValueOf = null;
            if (sQLiteStatementPrepare.step() && !sQLiteStatementPrepare.isNull(0)) {
                lValueOf = Long.valueOf(sQLiteStatementPrepare.getLong(0));
            }
            return lValueOf;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getScheduledWork$lambda$31(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i2 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i3 = columnIndexOrThrow2;
                int i4 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i);
                int i5 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i5);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i7)) != 0;
                int i8 = columnIndexOrThrow17;
                int i9 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i8));
                int i10 = columnIndexOrThrow18;
                int i11 = columnIndexOrThrow5;
                int i12 = (int) sQLiteStatementPrepare.getLong(i10);
                int i13 = columnIndexOrThrow19;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i15);
                int i16 = columnIndexOrThrow21;
                int i17 = (int) sQLiteStatementPrepare.getLong(i16);
                int i18 = columnIndexOrThrow22;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i20) ? null : sQLiteStatementPrepare.getText(i20);
                int i21 = columnIndexOrThrow24;
                Integer numValueOf = sQLiteStatementPrepare.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(i21));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i22 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i22));
                int i23 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i23));
                columnIndexOrThrow25 = i22;
                columnIndexOrThrow26 = i23;
                int i24 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i24)) != 0;
                columnIndexOrThrow27 = i24;
                int i25 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow29 = i26;
                int i27 = columnIndexOrThrow30;
                int i28 = columnIndexOrThrow31;
                int i29 = columnIndexOrThrow32;
                int i30 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i30;
                arrayList2.add(new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i27)) != 0, sQLiteStatementPrepare.getLong(i28), sQLiteStatementPrepare.getLong(i29), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i30))), i2, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i12, i14, j8, i17, i19, text4, bool));
                columnIndexOrThrow30 = i27;
                columnIndexOrThrow4 = i9;
                columnIndexOrThrow17 = i8;
                columnIndexOrThrow19 = i13;
                columnIndexOrThrow22 = i18;
                columnIndexOrThrow24 = i21;
                columnIndexOrThrow31 = i28;
                columnIndexOrThrow32 = i29;
                columnIndexOrThrow2 = i3;
                columnIndexOrThrow14 = i;
                columnIndexOrThrow3 = i4;
                arrayList = arrayList2;
                columnIndexOrThrow = i6;
                columnIndexOrThrow15 = i5;
                columnIndexOrThrow16 = i7;
                columnIndexOrThrow20 = i15;
                columnIndexOrThrow21 = i16;
                columnIndexOrThrow23 = i20;
                columnIndexOrThrow28 = i25;
                columnIndexOrThrow5 = i11;
                columnIndexOrThrow18 = i10;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo.State getState$lambda$7(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            WorkInfo.State stateIntToState = null;
            if (sQLiteStatementPrepare.step()) {
                Integer numValueOf = sQLiteStatementPrepare.isNull(0) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(0));
                if (numValueOf != null) {
                    stateIntToState = WorkTypeConverters.intToState(numValueOf.intValue());
                }
            }
            return stateIntToState;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getUnfinishedWorkWithName$lambda$20(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getUnfinishedWorkWithTag$lambda$19(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkSpec getWorkSpec$lambda$3(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            WorkSpec workSpec = null;
            Boolean boolValueOf = null;
            if (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(columnIndexOrThrow14);
                long j7 = sQLiteStatementPrepare.getLong(columnIndexOrThrow15);
                boolean z = ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow16)) != 0;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow17));
                int i2 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow18);
                int i3 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow19);
                long j8 = sQLiteStatementPrepare.getLong(columnIndexOrThrow20);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow21);
                int i5 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow22);
                String text4 = sQLiteStatementPrepare.isNull(columnIndexOrThrow23) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow23);
                Integer numValueOf = sQLiteStatementPrepare.isNull(columnIndexOrThrow24) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                workSpec = new WorkSpec(text, stateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(columnIndexOrThrow26)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow25)), ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow27)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow28)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow29)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow30)) != 0, sQLiteStatementPrepare.getLong(columnIndexOrThrow31), sQLiteStatementPrepare.getLong(columnIndexOrThrow32), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(columnIndexOrThrow33))), i, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i2, i3, j8, i4, i5, text4, boolValueOf);
            }
            return workSpec;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIdAndStatesForName$lambda$4(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(new WorkSpec.IdAndState(sQLiteStatementPrepare.getText(0), WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(1))));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowDataForIds$lambda$11(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                sQLiteStatementPrepare.mo9365bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i4 = (int) sQLiteStatementPrepare.getLong(3);
                int i5 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i6 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i7 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap);
                objC.getClass();
                List list2 = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i4, backoffPolicyIntToBackoffPolicy, j4, j5, i6, i5, j6, i7, list2, (List) objC2));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowForName$lambda$17(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowForTag$lambda$13(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkSpec.WorkInfoPojo getWorkStatusPojoForId$lambda$8(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        WorkSpec.WorkInfoPojo workInfoPojo;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            if (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(0);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(1));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i = (int) sQLiteStatementPrepare.getLong(3);
                int i2 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i3 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i4 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                workInfoPojo = new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i, backoffPolicyIntToBackoffPolicy, j4, j5, i3, i2, j6, i4, (List) objC, (List) objC2);
            } else {
                workInfoPojo = null;
            }
            return workInfoPojo;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForIds$lambda$9(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                sQLiteStatementPrepare.mo9365bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i4 = (int) sQLiteStatementPrepare.getLong(3);
                int i5 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i6 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i7 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap);
                objC.getClass();
                List list2 = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i4, backoffPolicyIntToBackoffPolicy, j4, j5, i6, i5, j6, i7, list2, (List) objC2));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForName$lambda$15(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForTag$lambda$12(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForIds$lambda$10(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                sQLiteStatementPrepare.mo9365bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i4 = (int) sQLiteStatementPrepare.getLong(3);
                int i5 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i6 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i7 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap);
                objC.getClass();
                List list2 = (List) objC;
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i4, backoffPolicyIntToBackoffPolicy, j4, j5, i6, i5, j6, i7, list2, (List) objC2));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForName$lambda$16(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForTag$lambda$14(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!sQLiteStatementPrepare.step()) {
                    break;
                }
                String text = sQLiteStatementPrepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = sQLiteStatementPrepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            sQLiteStatementPrepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text3 = sQLiteStatementPrepare.getText(i);
                WorkInfo.State stateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(i2));
                Data dataFromByteArray = Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(2));
                int i3 = (int) sQLiteStatementPrepare.getLong(3);
                int i4 = (int) sQLiteStatementPrepare.getLong(4);
                long j = sQLiteStatementPrepare.getLong(14);
                long j2 = sQLiteStatementPrepare.getLong(15);
                long j3 = sQLiteStatementPrepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(17));
                long j4 = sQLiteStatementPrepare.getLong(18);
                long j5 = sQLiteStatementPrepare.getLong(19);
                int i5 = (int) sQLiteStatementPrepare.getLong(20);
                long j6 = sQLiteStatementPrepare.getLong(21);
                int i6 = (int) sQLiteStatementPrepare.getLong(22);
                Constraints constraints = new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(6)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(5)), ((int) sQLiteStatementPrepare.getLong(7)) != 0, ((int) sQLiteStatementPrepare.getLong(8)) != 0, ((int) sQLiteStatementPrepare.getLong(9)) != 0, ((int) sQLiteStatementPrepare.getLong(10)) != 0, sQLiteStatementPrepare.getLong(11), sQLiteStatementPrepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(13)));
                Object objC = n05.c(sQLiteStatementPrepare.getText(0), arrayMap3);
                objC.getClass();
                Object objC2 = n05.c(sQLiteStatementPrepare.getText(0), arrayMap2);
                objC2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, stateIntToState, dataFromByteArray, j, j2, j3, constraints, i3, backoffPolicyIntToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) objC, (List) objC2));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasUnfinishedWorkFlow$lambda$22(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step() && ((int) sQLiteStatementPrepare.getLong(0)) != 0) {
                z = true;
            }
            return z;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 incrementGeneration$lambda$50(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 incrementPeriodCount$lambda$40(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int incrementWorkSpecRunAttemptCount$lambda$43(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertWorkSpec$lambda$0(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        workSpecDao_Impl.__insertAdapterOfWorkSpec.insert(sQLiteConnection, workSpec);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int markWorkSpecScheduled$lambda$47(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, j);
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int resetScheduledState$lambda$48(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 resetWorkSpecNextScheduleTimeOverride$lambda$46(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.mo9363bindLong(2, i);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int resetWorkSpecRunAttemptCount$lambda$44(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setCancelledState$lambda$39(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setLastEnqueueTime$lambda$42(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, j);
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setNextScheduleTimeOverride$lambda$45(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, j);
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setOutput$lambda$41(String str, Data data, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9361bindBlob(1, Data.Companion.toByteArrayInternalV1(data));
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setState$lambda$38(String str, WorkInfo.State state, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, WorkTypeConverters.stateToInt(state));
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setStopReason$lambda$51(String str, int i, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9363bindLong(1, i);
            sQLiteStatementPrepare.mo9365bindText(2, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateWorkSpec$lambda$1(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        workSpecDao_Impl.__updateAdapterOfWorkSpec.handle(sQLiteConnection, workSpec);
        return j59.a;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        return ((Number) DBUtil.performBlocking(this.__db, true, false, new os(3))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ws2(str, 2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int i) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new nl3() { // from class: rk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllEligibleWorkSpecsForScheduling$lambda$29("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", i, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new us2(7));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new qc7(2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, (nl3) new eu6(2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(final int i) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new nl3() { // from class: uk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getEligibleWorkForScheduling$lambda$25("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))", i, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new xi1(5));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new s04(str, 1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(final long j) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new nl3() { // from class: tk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getRecentlyCompletedWork$lambda$35("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", j, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new ec9(2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(String str) {
        str.getClass();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, (nl3) new k16(str, 1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new mf5(5));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(String str) {
        str.getClass();
        return (WorkInfo.State) DBUtil.performBlocking(this.__db, true, false, new m14(str, 2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new p88(str, 2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(final String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new nl3() { // from class: yk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getUnfinishedWorkWithTag$lambda$19("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", str, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(String str) {
        str.getClass();
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new oo(str, 2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new ar8(str, 1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public hd3<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(final List<String> list) {
        list.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String string = sb.toString();
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new nl3() { // from class: sk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoFlowDataForIds$lambda$11(string, list, this, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public hd3<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(String str) {
        str.getClass();
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new ps0(4, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public hd3<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(String str) {
        str.getClass();
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, new qn7(2, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        str.getClass();
        return (WorkSpec.WorkInfoPojo) DBUtil.performBlocking(this.__db, true, true, new ry1(5, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(final List<String> list) {
        list.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String string = sb.toString();
        return (List) DBUtil.performBlocking(this.__db, true, true, new nl3() { // from class: bl9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoForIds$lambda$9(string, list, this, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, true, new ji3(3, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, true, new fg0(2, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        list.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, (nl3) new xk9(sb.toString(), list, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        str.getClass();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, (nl3) new zk9(0, str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        str.getClass();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, (nl3) new ab6(str, this));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public hd3<Boolean> hasUnfinishedWorkFlow() {
        return FlowUtil.createFlow(this.__db, false, new String[]{"workspec"}, new ft3(1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new gj5(str, 1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ko(str, 1));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(String str) {
        str.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new ii1(str, 1))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(WorkSpec workSpec) {
        workSpec.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ux8(1, this, workSpec));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(final String str, final long j) {
        str.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: wk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.markWorkSpecScheduled$lambda$47("UPDATE workspec SET schedule_requested_at=? WHERE id=?", j, str, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        DBUtil.performBlocking(this.__db, false, true, new pf(6));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new sf(2))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String str, final int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: qk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride$lambda$46("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)", str, i, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(String str) {
        str.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new wf3(str, 3))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(String str) {
        str.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new j22(str, 2))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(final String str, final long j) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: cl9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setLastEnqueueTime$lambda$42("UPDATE workspec SET last_enqueue_time=? WHERE id=?", j, str, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setNextScheduleTimeOverride(final String str, final long j) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: vk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setNextScheduleTimeOverride$lambda$45("UPDATE workspec SET next_schedule_time_override=? WHERE id=?", j, str, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(String str, Data data) {
        str.getClass();
        data.getClass();
        DBUtil.performBlocking(this.__db, false, true, new qh8(2, data, str));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(WorkInfo.State state, String str) {
        state.getClass();
        str.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new qs0(3, state, str))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(String str, int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ih8(i, str));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(WorkSpec workSpec) {
        workSpec.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nz(3, this, workSpec));
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
