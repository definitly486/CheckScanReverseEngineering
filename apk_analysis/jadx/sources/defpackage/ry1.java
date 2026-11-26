package defpackage;

import androidx.arch.core.util.Function;
import androidx.compose.foundation.contextmenu.ContextMenuAreaKt;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.material3.OverflowMeasurePolicy;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Placeable;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ry1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ry1(db6 db6Var, Map map, String str) {
        this.b = 2;
        this.c = db6Var;
        this.d = map;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) throws IOException {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return ContextMenuAreaKt.ContextMenuArea$lambda$1$0((ll3) obj3, (ContextMenuState) obj2, (Offset) obj);
            case 1:
                return OverflowMeasurePolicy.measure_3p2s80s$lambda$14((ArrayList) obj3, (List) obj2, (Placeable.PlacementScope) obj);
            case 2:
                OutputStream outputStream = (OutputStream) obj;
                outputStream.getClass();
                wd6 wd6VarB = ((db6) obj3).a.b();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                wd6VarB.a.m((Map) obj2, new gb6().b, bufferedWriter);
                bufferedWriter.flush();
                return j59.a;
            case 3:
                return SnapshotKt.mergedWriteObserver$lambda$0((nl3) obj3, (nl3) obj2, obj);
            case 4:
                return Transformations.map$lambda$1((MediatorLiveData) obj3, (Function) obj2, obj);
            default:
                return WorkSpecDao_Impl.getWorkStatusPojoForId$lambda$8("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?", (String) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }

    public /* synthetic */ ry1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }
}
