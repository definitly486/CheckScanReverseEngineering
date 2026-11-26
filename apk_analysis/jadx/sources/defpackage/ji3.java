package defpackage;

import androidx.compose.foundation.text.input.internal.HandwritingGestureApi34;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ji3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ji3(int i, Object obj, Object obj2) {
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
                return FontFamilyResolverImpl.resolve$lambda$0((FontFamilyResolverImpl) obj3, (TypefaceRequest) obj2, (nl3) obj);
            case 1:
                return HandwritingGestureApi34.performRemoveSpaceGesture$lambda$3((p07) obj3, (p07) obj2, (r15) obj);
            case 2:
                return Transformations.map$lambda$0((MediatorLiveData) obj3, (nl3) obj2, obj);
            default:
                return WorkSpecDao_Impl.getWorkStatusPojoForName$lambda$15("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }
}
