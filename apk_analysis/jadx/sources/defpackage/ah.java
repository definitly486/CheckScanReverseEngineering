package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdn;
import com.google.android.gms.internal.play_billing.zzhb;
import com.my.target.m1;
import com.my.target.w1;
import java.lang.reflect.Constructor;
import java.util.concurrent.ExecutorService;
import yads.l66;
import yads.ni1;
import yads.vu5;
import yads.wl2;
import yads.xu5;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ah implements DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, Consumer, l66, m1.b, wl2, vu5 {
    public /* synthetic */ ah(w1 w1Var) {
    }

    public static int b(int i, int i2, int i3) {
        return zzdn.zzA(i) + i2 + i3;
    }

    public static StringBuilder d(long j, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder e(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence5);
        return sb;
    }

    public static /* synthetic */ void f(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void g(String str) throws zzhb {
        throw new zzhb(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return ni1.a(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }

    @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor getConstructor() {
        return DefaultExtractorsFactory.getMidiExtractorConstructor();
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public void mo1a() {
    }

    @Override // yads.vu5
    public int a() {
        return xu5.h();
    }
}
