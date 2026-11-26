package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class md4 implements df4<jd4> {
    public static final md4 a = new md4();
    public static final a b = a.b;

    public static final class a implements mp7 {
        public static final a b = new a();
        public static final String c = "kotlinx.serialization.json.JsonObject";
        public final /* synthetic */ tq4 a;

        public a() {
            ca8 ca8Var = ca8.a;
            uc4 uc4Var = uc4.a;
            mp7 descriptor = ca8Var.getDescriptor();
            mp7 descriptor2 = uc4Var.getDescriptor();
            descriptor.getClass();
            descriptor2.getClass();
            this.a = new tq4("kotlin.collections.LinkedHashMap", descriptor, descriptor2);
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
            return 2;
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
            return eb8.c.a;
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
        return new jd4(new uq4(ca8.a, uc4.a).deserialize(ud2Var));
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        jd4 jd4Var = (jd4) obj;
        jd4Var.getClass();
        tc0.f(ux2Var);
        new uq4(ca8.a, uc4.a).serialize(ux2Var, jd4Var);
    }
}
