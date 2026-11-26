package defpackage;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class cc4 implements df4<zb4> {
    public static final cc4 a = new cc4();
    public static final a b = a.b;

    public static final class a implements mp7 {
        public static final a b = new a();
        public static final String c = "kotlinx.serialization.json.JsonArray";
        public final /* synthetic */ kr a;

        public a() {
            mp7 descriptor = uc4.a.getDescriptor();
            descriptor.getClass();
            this.a = new kr(descriptor);
        }

        @Override // defpackage.mp7
        public final boolean b() {
            return false;
        }

        @Override // defpackage.mp7
        public final int c(String str) {
            str.getClass();
            return this.a.c(str);
        }

        @Override // defpackage.mp7
        public final mp7 d(int i) {
            return this.a.d(i);
        }

        @Override // defpackage.mp7
        public final int e() {
            return 1;
        }

        @Override // defpackage.mp7
        public final String f(int i) {
            return String.valueOf(i);
        }

        @Override // defpackage.mp7
        public final List<Annotation> g(int i) {
            this.a.g(i);
            return kx2.b;
        }

        @Override // defpackage.mp7
        public final List<Annotation> getAnnotations() {
            return kx2.b;
        }

        @Override // defpackage.mp7
        public final sp7 getKind() {
            return eb8.b.a;
        }

        @Override // defpackage.mp7
        public final String h() {
            return c;
        }

        @Override // defpackage.mp7
        public final boolean i(int i) {
            this.a.i(i);
            return false;
        }

        @Override // defpackage.mp7
        public final boolean isInline() {
            return false;
        }
    }

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        tc0.e(ud2Var);
        return new zb4((List) new mr(uc4.a).f(ud2Var));
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        zb4 zb4Var = (zb4) obj;
        zb4Var.getClass();
        tc0.f(ux2Var);
        uc4 uc4Var = uc4.a;
        mp7 descriptor = uc4Var.getDescriptor();
        descriptor.getClass();
        kr krVar = new kr(descriptor);
        int size = zb4Var.size();
        gu1 gu1VarBeginCollection = ux2Var.beginCollection(krVar, size);
        Iterator<oc4> it = zb4Var.iterator();
        for (int i = 0; i < size; i++) {
            gu1VarBeginCollection.encodeSerializableElement(krVar, i, uc4Var, it.next());
        }
        gu1VarBeginCollection.endStructure(krVar);
    }
}
