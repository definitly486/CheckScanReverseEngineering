package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class oy1 implements rxa {
    public static final /* synthetic */ oy1 c = new oy1(1);
    public static final /* synthetic */ oy1 d = new oy1(2);
    public final /* synthetic */ int b;

    public /* synthetic */ oy1(int i) {
        this.b = i;
    }

    public static final /* synthetic */ Activity a(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
            context.getClass();
        }
        return null;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzU());
            default:
                List list2 = zzfy.a;
                return Long.valueOf(zzags.zzag());
        }
    }
}
