package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.material3.DatePickerStateImpl;
import androidx.compose.material3.SelectableDates;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fg0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fg0(int i, Object obj, Object obj2) {
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
                return BasicTextFieldKt.BasicTextField$lambda$27$0((TextFieldValue) obj3, (nl3) obj2, (TextFieldValue) obj);
            case 1:
                return DatePickerStateImpl.Companion.Saver$lambda$1((SelectableDates) obj3, (Locale) obj2, (List) obj);
            default:
                return WorkSpecDao_Impl.getWorkStatusPojoForTag$lambda$12("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }
}
