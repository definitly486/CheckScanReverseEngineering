package defpackage;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import yads.az1;
import yads.bt2;
import yads.gr0;
import yads.l12;
import yads.l66;
import yads.mb2;
import yads.s11;
import yads.tz1;
import yads.ws2;
import yads.z25;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class d implements Continuation, l66, bt2 {
    public final /* synthetic */ int b;

    public /* synthetic */ d(int i) {
        this.b = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c(int i, String str) {
        throw new IllegalArgumentException(str + ((char) i));
    }

    public static /* synthetic */ void d(int i, StringBuilder sb) {
        sb.append(i);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 4:
                return az1.e(l.longValue());
            case 5:
                return gr0.a(l.longValue());
            case 6:
                return l12.a(l.longValue());
            case 7:
                return mb2.b(l.longValue());
            case 8:
                return s11.a(l.longValue());
            case 9:
                return tz1.a(l.longValue());
            default:
                return zg1.a(l.longValue());
        }
    }

    @Override // yads.bt2
    public ws2[] b() {
        return z25.a();
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return FcmBroadcastProcessor.lambda$bindToMessagingService$3(task);
    }
}
