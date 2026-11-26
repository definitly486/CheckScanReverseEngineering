package defpackage;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.auth.zzfa;
import com.google.android.gms.internal.p000authapi.zbat;
import com.google.android.gms.internal.p000authapi.zbau;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbv;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class yfb implements RemoteCall {
    public static final rfb c = new rfb();
    public final Object b;

    public yfb() {
        sgb sgbVar;
        try {
            sgbVar = (sgb) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            sgbVar = c;
        }
        ufb ufbVar = new ufb(zbb.a, sgbVar);
        Charset charset = zzfa.a;
        this.b = ufbVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        zbat zbatVar = (zbat) this.b;
        zbau zbauVar = (zbau) obj;
        yma ymaVar = new yma(zbatVar, (TaskCompletionSource) obj2);
        ((zbv) zbauVar.getService()).zbd(ymaVar, zbatVar.a, zbba.zba(zbauVar.getContext()));
    }

    public /* synthetic */ yfb(zbat zbatVar) {
        this.b = zbatVar;
    }
}
