package defpackage;

import android.hardware.camera2.CameraExtensionSession;
import androidx.compose.runtime.CancellationHandle;
import com.google.android.gms.internal.mlkit_common.zzay;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.List;
import java.util.NoSuchElementException;
import yads.e92;
import yads.hs1;
import yads.l66;
import yads.st3;
import yads.th1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qz0 implements CancellationHandle, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qz0(int i) {
        this.b = i;
    }

    public static FieldDescriptor.Builder b(int i, FieldDescriptor.Builder builder, String str) {
        zzay zzayVar = new zzay();
        zzayVar.zza(i);
        builder.withProperty(zzayVar.zzb()).build();
        return FieldDescriptor.builder(str);
    }

    public static /* bridge */ /* synthetic */ Class c() {
        return CameraExtensionSession.class;
    }

    public static String d(String str, int i, char c) {
        return str + i + c;
    }

    public static /* synthetic */ void e() {
        throw new NoSuchElementException();
    }

    public static void f(int i, int i2, nl3 nl3Var) {
        nl3Var.invoke(Integer.valueOf(i + i2));
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Object obj3, Object obj4, Throwable th) {
        throw new RuntimeException(str + obj + obj2 + obj3 + obj4, th);
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Double d = (Double) obj;
        switch (this.b) {
            case 7:
                return e92.a(d.doubleValue());
            default:
                return th1.a(d.doubleValue());
        }
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
        CancellationHandle.Companion.Empty$lambda$0();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return hs1.a(list);
    }
}
