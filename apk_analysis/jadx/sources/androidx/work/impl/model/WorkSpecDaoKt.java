package androidx.work.impl.model;

import androidx.work.WorkInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.kn1;
import defpackage.qn1;
import defpackage.r22;
import defpackage.r57;
import defpackage.u96;
import defpackage.ud3;
import defpackage.zd3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkSpecDaoKt {
    private static final String WORK_INFO_BY_IDS = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (:ids)";
    private static final String WORK_INFO_BY_NAME = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=:name)";
    private static final String WORK_INFO_BY_TAG = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=:tag)";
    private static final String WORK_INFO_COLUMNS = "id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason";

    public static final hd3<List<WorkInfo>> dedup(final hd3<? extends List<WorkSpec.WorkInfoPojo>> hd3Var, r22 r22Var) {
        hd3Var.getClass();
        r22Var.getClass();
        return ud3.b(zd3.c(new hd3<List<? extends WorkInfo>>() { // from class: androidx.work.impl.model.WorkSpecDaoKt$dedup$$inlined$map$1

            /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDaoKt$dedup$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDaoKt$dedup$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.work.impl.model.WorkSpecDaoKt$dedup$$inlined$map$1$2", f = "WorkSpecDao.kt", l = {50}, m = "emit")
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var) {
                    this.$this_unsafeFlow = id3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        List list = (List) obj;
                        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                        Iterator<T> it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((WorkSpec.WorkInfoPojo) it.next()).toWorkInfo());
                        }
                        anonymousClass1.label = 1;
                        if (id3Var.emit(arrayList, anonymousClass1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3<? super List<? extends WorkInfo>> id3Var, e02 e02Var) {
                Object objCollect = hd3Var.collect(new AnonymousClass2(id3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }), r22Var);
    }

    public static final hd3<WorkInfo> getWorkStatusPojoFlowDataForIds(WorkSpecDao workSpecDao, UUID uuid) {
        workSpecDao.getClass();
        uuid.getClass();
        final hd3<List<WorkSpec.WorkInfoPojo>> workStatusPojoFlowDataForIds = workSpecDao.getWorkStatusPojoFlowDataForIds(u96.h(String.valueOf(uuid)));
        return zd3.c(new hd3<WorkInfo>() { // from class: androidx.work.impl.model.WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1

            /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.work.impl.model.WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2", f = "WorkSpecDao.kt", l = {50}, m = "emit")
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var) {
                    this.$this_unsafeFlow = id3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        WorkSpec.WorkInfoPojo workInfoPojo = (WorkSpec.WorkInfoPojo) qn1.V((List) obj);
                        WorkInfo workInfo = workInfoPojo != null ? workInfoPojo.toWorkInfo() : null;
                        anonymousClass1.label = 1;
                        if (id3Var.emit(workInfo, anonymousClass1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3<? super WorkInfo> id3Var, e02 e02Var) {
                Object objCollect = workStatusPojoFlowDataForIds.collect(new AnonymousClass2(id3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        });
    }

    public static final hd3<List<WorkInfo>> getWorkStatusPojoFlowForName(WorkSpecDao workSpecDao, r22 r22Var, String str) {
        workSpecDao.getClass();
        r22Var.getClass();
        str.getClass();
        return dedup(workSpecDao.getWorkStatusPojoFlowForName(str), r22Var);
    }

    public static final hd3<List<WorkInfo>> getWorkStatusPojoFlowForTag(WorkSpecDao workSpecDao, r22 r22Var, String str) {
        workSpecDao.getClass();
        r22Var.getClass();
        str.getClass();
        return dedup(workSpecDao.getWorkStatusPojoFlowForTag(str), r22Var);
    }
}
