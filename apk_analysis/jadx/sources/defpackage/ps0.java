package defpackage;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ps0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ps0(int i, Object obj, Object obj2) {
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
                return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$1((Path) obj3, (Brush) obj2, (ContentDrawScope) obj);
            case 1:
                ((ch5) obj3).unlock(((ch5.a) obj2).c);
                return j59.a;
            case 2:
                return SnapshotKt.mergedReadObserver$lambda$0((nl3) obj3, (nl3) obj2, obj);
            case 3:
                return TextFieldPressGestureFilterKt.tapPressTextFieldModifier$lambda$0$1$0((MutableState) obj3, (MutableInteractionSource) obj2, (DisposableEffectScope) obj);
            default:
                return WorkSpecDao_Impl.getWorkStatusPojoFlowForName$lambda$17("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }
}
