package androidx.savedstate.serialization;

import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SizeFSerializer;
import androidx.savedstate.serialization.serializers.SizeSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import defpackage.bf;
import defpackage.df4;
import defpackage.jq7;
import defpackage.kq7;
import defpackage.qn1;
import defpackage.x07;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateConfiguration_androidKt {
    public static final jq7 getDefaultSerializersModuleOnPlatform() {
        kq7 kq7Var = new kq7();
        kq7Var.d(x07.a(Size.class), SizeSerializer.INSTANCE);
        kq7Var.d(x07.a(SizeF.class), SizeFSerializer.INSTANCE);
        kq7Var.e(x07.a(SparseArray.class), new bf(2));
        return kq7Var.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final df4 getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0(List list) {
        list.getClass();
        return new SparseArraySerializer((df4) qn1.T(list));
    }
}
