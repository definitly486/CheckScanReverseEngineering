package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.posthog.internal.PostHogBatchEvent;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ab6 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ab6(PostHogBatchEvent postHogBatchEvent, db6 db6Var, String str) {
        this.c = postHogBatchEvent;
        this.d = db6Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) throws IOException {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                PostHogBatchEvent postHogBatchEvent = (PostHogBatchEvent) obj3;
                db6 db6Var = (db6) obj2;
                OutputStream outputStream = (OutputStream) obj;
                outputStream.getClass();
                postHogBatchEvent.setSentAt(db6Var.a.I.b());
                wd6 wd6VarB = db6Var.a.b();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                wd6VarB.a.m(postHogBatchEvent, new db6.a().b, bufferedWriter);
                bufferedWriter.flush();
                return j59.a;
            default:
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForTag$lambda$14("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }

    public /* synthetic */ ab6(String str, WorkSpecDao_Impl workSpecDao_Impl) {
        this.c = str;
        this.d = workSpecDao_Impl;
    }
}
