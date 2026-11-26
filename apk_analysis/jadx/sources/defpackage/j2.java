package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.inappmessaging.FirebaseInAppMessaging;
import io.appmetrica.analytics.impl.InterfaceC0894ee;
import io.appmetrica.analytics.impl.InterfaceC1289tl;
import io.appmetrica.analytics.impl.J0;
import io.appmetrica.analytics.impl.Ud;
import yads.l66;
import yads.qj1;
import yads.sd1;
import yads.u62;
import yads.x92;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j2 implements OnSuccessListener, InterfaceC0894ee, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ j2(int i) {
        this.b = i;
    }

    public static FieldDescriptor b(int i, FieldDescriptor.Builder builder) {
        return builder.withProperty(AtProtobuf.builder().tag(i).build()).build();
    }

    public static /* synthetic */ void c(int i, String str) {
        throw new IllegalStateException(str + i);
    }

    public static /* synthetic */ void d(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 6:
                return qj1.a(((Long) obj).longValue());
            case 7:
                return sd1.a(((Double) obj).doubleValue());
            case 8:
                return u62.e(((Long) obj).longValue());
            default:
                return x92.f(((Long) obj).longValue());
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        FirebaseInAppMessaging.lambda$new$0((String) obj);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0894ee
    public InterfaceC1289tl a(J0 j0) {
        return Ud.b(j0);
    }
}
