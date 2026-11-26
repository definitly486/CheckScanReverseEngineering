package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.ii1;
import yads.vi1;
import yads.yi1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class zk9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zk9(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForName$lambda$16("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
            default:
                return ii1.a((ii1) obj3, (yi1) obj2, (vi1) obj);
        }
    }
}
