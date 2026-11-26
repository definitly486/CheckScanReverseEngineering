package defpackage;

import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.internal.common.zzg;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class cza {
    public final Map a = Collections.synchronizedMap(new ArrayMap());
    public int b = 0;
    public Bundle c;

    public final void a(String str, LifecycleCallback lifecycleCallback) {
        Map map = this.a;
        if (map.containsKey(str)) {
            fg.c(kh.c(new StringBuilder(String.valueOf(str).length() + 59), "LifecycleCallback with tag ", str, " already added to this fragment."));
            return;
        }
        map.put(str, lifecycleCallback);
        if (this.b > 0) {
            new zzg(Looper.getMainLooper()).post(new cwa(this, lifecycleCallback, str));
        }
    }

    public final void b(Bundle bundle) {
        this.b = 1;
        this.c = bundle;
        for (Map.Entry entry : this.a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public final void c(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }
}
