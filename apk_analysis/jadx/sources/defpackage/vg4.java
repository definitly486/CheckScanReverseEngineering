package defpackage;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class vg4 implements RemoteCall, rxa {
    public static final /* synthetic */ vg4 c = new vg4(2);
    public static final /* synthetic */ vg4 d = new vg4(3);
    public static final /* synthetic */ vg4 e = new vg4(4);
    public final /* synthetic */ int b;

    public /* synthetic */ vg4(int i) {
        this.b = i;
    }

    public static final void a(StringBuilder sb, Class cls) {
        while (cls.isArray()) {
            sb.append("[");
            cls = cls.getComponentType();
            cls.getClass();
        }
        if (cls.equals(Void.TYPE)) {
            sb.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            return;
        }
        if (cls.equals(Integer.TYPE)) {
            sb.append("I");
            return;
        }
        if (cls.equals(Long.TYPE)) {
            sb.append("J");
            return;
        }
        if (cls.equals(Short.TYPE)) {
            sb.append(ExifInterface.LATITUDE_SOUTH);
            return;
        }
        if (cls.equals(Byte.TYPE)) {
            sb.append("B");
            return;
        }
        if (cls.equals(Boolean.TYPE)) {
            sb.append("Z");
            return;
        }
        if (cls.equals(Character.TYPE)) {
            sb.append("C");
            return;
        }
        if (cls.equals(Float.TYPE)) {
            sb.append("F");
            return;
        }
        if (cls.equals(Double.TYPE)) {
            sb.append("D");
            return;
        }
        sb.append("L");
        String strReplace = cls.getName().replace('.', '/');
        strReplace.getClass();
        sb.append((CharSequence) strReplace);
        sb.append(";");
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api.ClientKey clientKey = zzcg.a;
        ((zzec) obj).zzq(new LastLocationRequest.Builder().build(), (TaskCompletionSource) obj2);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzav());
            default:
                List list2 = zzfy.a;
                return Long.valueOf(zzags.zzab());
        }
    }
}
