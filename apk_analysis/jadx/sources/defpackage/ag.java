package defpackage;

import android.os.Bundle;
import androidx.compose.ui.internal.InlineClassHelperKt;
import com.google.android.gms.internal.mlkit_vision_barcode.zzfa;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.KotlinNothingValueException;
import yads.h32;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.st3;
import yads.sw5;
import yads.x92;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ag implements st3, jv, l66 {
    public static FieldDescriptor.Builder c(int i, FieldDescriptor.Builder builder, String str) {
        zzfa zzfaVar = new zzfa();
        zzfaVar.zza(i);
        builder.withProperty(zzfaVar.zzb()).build();
        return FieldDescriptor.builder(str);
    }

    public static String d(StringBuilder sb, String str, int i) {
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static KotlinNothingValueException e(String str) {
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck(str);
        return new KotlinNothingValueException();
    }

    public static /* synthetic */ void f(Object obj, int i, int i2, String str) {
        throw new IndexOutOfBoundsException(str + i + obj + i2);
    }

    public static /* synthetic */ void g(String str) {
        throw new NoSuchElementException(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return x92.d(((Long) obj).longValue());
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return sw5.b(bundle);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return h32.a(list);
    }
}
