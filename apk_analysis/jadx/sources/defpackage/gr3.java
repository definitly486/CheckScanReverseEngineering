package defpackage;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzahe;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import org.koin.core.error.NoDefinitionFoundException;

/* JADX INFO: loaded from: classes5.dex */
public final class gr3 implements rxa {
    public static final /* synthetic */ gr3 c = new gr3(2);
    public static final /* synthetic */ gr3 d = new gr3(3);
    public static final /* synthetic */ gr3 e = new gr3(4);
    public final /* synthetic */ int b;

    public /* synthetic */ gr3(int i) {
        this.b = i;
    }

    public static final Application a(ze7 ze7Var) {
        try {
            return (Application) ze7Var.e(x07.a(Application.class), null, null);
        } catch (NoDefinitionFoundException unused) {
            throw new ib5("Can't resolve Application instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }

    public static final Context b(ze7 ze7Var) {
        ze7Var.getClass();
        try {
            return (Context) ze7Var.e(x07.a(Context.class), null, null);
        } catch (NoDefinitionFoundException unused) {
            throw new ib5("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 2:
                List list = zzfy.a;
                return zzahe.zzb();
            case 3:
                List list2 = zzfy.a;
                return zzags.zzh();
            default:
                List list3 = zzfy.a;
                return Integer.valueOf((int) zzags.zzat());
        }
    }
}
