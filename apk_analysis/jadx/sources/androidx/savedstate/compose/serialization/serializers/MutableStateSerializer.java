package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.df4;
import defpackage.dg6;
import defpackage.mp7;
import defpackage.rp7;
import defpackage.sp7;
import defpackage.ud2;
import defpackage.ux2;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableStateSerializer<T> implements df4<MutableState<T>> {
    private final mp7 descriptor;
    private final df4<T> valueSerializer;

    public MutableStateSerializer(df4<T> df4Var) {
        df4Var.getClass();
        this.valueSerializer = df4Var;
        sp7 kind = df4Var.getDescriptor().getKind();
        this.descriptor = kind instanceof dg6 ? rp7.a("androidx.compose.runtime.MutableState", (dg6) kind) : rp7.b("androidx.compose.runtime.MutableState", df4Var.getDescriptor());
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }

    @Override // defpackage.xl2
    public MutableState<T> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ud2Var.decodeSerializableValue(this.valueSerializer), null, 2, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, MutableState<T> mutableState) {
        ux2Var.getClass();
        mutableState.getClass();
        ux2Var.encodeSerializableValue(this.valueSerializer, mutableState.getValue());
    }
}
