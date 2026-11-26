package defpackage;

import android.graphics.ImageDecoder;
import com.google.protobuf.CodedOutputStream;
import yads.l66;
import yads.zg1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ej0 implements l66 {
    public static int b(int i, int i2, int i3) {
        return (Integer.hashCode(i) + i2) * i3;
    }

    public static int c(int i, int i2, int i3, int i4) {
        return CodedOutputStream.Z(i) + i2 + i3 + i4;
    }

    public static /* bridge */ /* synthetic */ ImageDecoder.Source d(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return zg1.e(((Long) obj).longValue());
    }
}
