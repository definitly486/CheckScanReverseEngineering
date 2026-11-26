package androidx.savedstate.serialization.serializers;

import defpackage.df4;
import defpackage.dg6;
import defpackage.mp7;
import defpackage.px;
import defpackage.rp7;
import defpackage.sp7;
import defpackage.ud2;
import defpackage.ux2;
import defpackage.xg5;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableStateFlowSerializer<T> implements df4<xg5<T>> {
    private final mp7 descriptor;
    private final df4<T> valueSerializer;

    public MutableStateFlowSerializer(df4<T> df4Var) {
        df4Var.getClass();
        this.valueSerializer = df4Var;
        sp7 kind = df4Var.getDescriptor().getKind();
        this.descriptor = kind instanceof dg6 ? rp7.a("kotlinx.coroutines.flow.MutableStateFlow", (dg6) kind) : rp7.b("kotlinx.coroutines.flow.MutableStateFlow", df4Var.getDescriptor());
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }

    @Override // defpackage.xl2
    public xg5<T> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return px.a(ud2Var.decodeSerializableValue(this.valueSerializer));
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, xg5<T> xg5Var) {
        ux2Var.getClass();
        xg5Var.getClass();
        ux2Var.encodeSerializableValue(this.valueSerializer, xg5Var.getValue());
    }
}
