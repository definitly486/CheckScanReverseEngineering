package defpackage;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.Dependency;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class xt7 {
    public static final Component<?> b = Component.builder(xt7.class).add(Dependency.required((Class<?>) jb5.class)).add(Dependency.required((Class<?>) Context.class)).factory(new sdc()).build();
    public final Context a;

    public xt7(Context context) {
        this.a = context;
    }

    public final synchronized String a() {
        String string = this.a.getSharedPreferences("com.google.mlkit.internal", 0).getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        this.a.getSharedPreferences("com.google.mlkit.internal", 0).edit().putString("ml_sdk_instance_id", string2).apply();
        return string2;
    }

    public final synchronized long b() {
        return this.a.getSharedPreferences("com.google.mlkit.internal", 0).getLong("downloading_begin_time_".concat(z17.a()), 0L);
    }
}
