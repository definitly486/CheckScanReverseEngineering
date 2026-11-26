package defpackage;

import android.app.Activity;
import android.os.ProfilingManager;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import com.my.target.m1;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.C1265sn;
import java.util.List;
import java.util.concurrent.Executor;
import yads.c06;
import yads.qj1;
import yads.st3;
import yads.v13;
import yads.wa4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m2 implements EncoderFactory, m1.b, st3, FunctionWithThrowable, v13 {
    public final /* synthetic */ int b;

    public static /* bridge */ /* synthetic */ Class b() {
        return ProfilingManager.class;
    }

    public static Object c(Class cls, ze7 ze7Var, kv6 kv6Var, i36 i36Var) {
        zk1 zk1VarA = x07.a(cls);
        ze7Var.getClass();
        return ze7Var.e(zk1VarA, i36Var, kv6Var);
    }

    public static String d(StringBuilder sb, String str) {
        return str + ((Object) sb);
    }

    public static void e(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return qj1.a(list);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        switch (this.b) {
            case 9:
                return C1265sn.b((Activity) obj);
            default:
                return wa4.a((c06) obj);
        }
    }

    @Override // androidx.camera.video.internal.encoder.EncoderFactory
    public Encoder createEncoder(Executor executor, EncoderConfig encoderConfig, int i) {
        return new EncoderImpl(executor, encoderConfig, i);
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    public /* synthetic */ m2(int i) {
        this.b = i;
    }
}
