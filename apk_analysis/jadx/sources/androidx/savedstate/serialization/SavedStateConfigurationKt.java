package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.savedstate.serialization.serializers.MutableStateFlowSerializer;
import androidx.savedstate.serialization.serializers.SavedStateSerializer;
import defpackage.af;
import defpackage.df4;
import defpackage.j59;
import defpackage.jq7;
import defpackage.kq7;
import defpackage.nl3;
import defpackage.nq7;
import defpackage.qn1;
import defpackage.tp7;
import defpackage.x07;
import defpackage.xg5;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateConfigurationKt {
    private static final jq7 DEFAULT_SERIALIZERS_MODULE;

    static {
        kq7 kq7Var = new kq7();
        kq7Var.d(x07.a(Bundle.class), SavedStateSerializer.INSTANCE);
        kq7Var.e(x07.a(xg5.class), new af(1));
        tp7 tp7VarF = kq7Var.f();
        jq7 defaultSerializersModuleOnPlatform = SavedStateConfiguration_androidKt.getDefaultSerializersModuleOnPlatform();
        tp7 tp7Var = nq7.a;
        defaultSerializersModuleOnPlatform.getClass();
        kq7 kq7Var2 = new kq7();
        tp7VarF.a(kq7Var2);
        defaultSerializersModuleOnPlatform.a(kq7Var2);
        DEFAULT_SERIALIZERS_MODULE = kq7Var2.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final df4 DEFAULT_SERIALIZERS_MODULE$lambda$1$lambda$0(List list) {
        list.getClass();
        return new MutableStateFlowSerializer((df4) qn1.T(list));
    }

    public static final SavedStateConfiguration SavedStateConfiguration(SavedStateConfiguration savedStateConfiguration, nl3<? super SavedStateConfiguration.Builder, j59> nl3Var) {
        savedStateConfiguration.getClass();
        nl3Var.getClass();
        SavedStateConfiguration.Builder builder = new SavedStateConfiguration.Builder(savedStateConfiguration);
        nl3Var.invoke(builder);
        return builder.build$savedstate();
    }

    public static /* synthetic */ SavedStateConfiguration SavedStateConfiguration$default(SavedStateConfiguration savedStateConfiguration, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return SavedStateConfiguration(savedStateConfiguration, nl3Var);
    }

    public static final SavedStateConfiguration SavedStateConfiguration(nl3<? super SavedStateConfiguration.Builder, j59> nl3Var) {
        nl3Var.getClass();
        return SavedStateConfiguration$default(null, nl3Var, 1, null);
    }
}
