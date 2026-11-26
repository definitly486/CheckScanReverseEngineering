package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@up7
public interface v89 extends Serializable {
    public static final a Companion = a.a;

    public static final class a {
        public static final /* synthetic */ a a = new a();

        public final df4<v89> serializer() {
            aj7 aj7Var = new aj7("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult", x07.a(v89.class), new ne4[]{x07.a(b.class), x07.a(c.class), x07.a(d.class), x07.a(f.class), x07.a(g.class)}, new df4[]{b.a.a, c.a.a, d.a.a, f.a.a, new rq5("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.Unknown", g.INSTANCE, new Annotation[0])});
            List<? extends Annotation> listAsList = Arrays.asList(new Annotation[0]);
            listAsList.getClass();
            aj7Var.b = listAsList;
            return aj7Var;
        }
    }

    public static final class e implements v89 {
        public final String b;

        public e(String str) {
            str.getClass();
            this.b = str;
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onClosePlasticWait(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.b.equals(((e) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("SuccessPlasticWait(link=", this.b, ")");
        }
    }

    @up7
    public static final class g implements v89 {
        public static final g INSTANCE = new g();
        public static final /* synthetic */ cl4<df4<Object>> b = nm4.a(po4.PUBLICATION, a.f);

        public static final class a extends gh4 implements ll3<df4<Object>> {
            public static final a f = new a(0);

            @Override // defpackage.ll3
            public final df4<Object> invoke() {
                return new rq5("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.Unknown", g.INSTANCE, new Annotation[0]);
            }
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onCloseUpridWeb();
        }

        public final df4<g> serializer() {
            return (df4) b.getValue();
        }
    }

    void c(CreateCardPresenter createCardPresenter);

    @up7
    public static final class b implements v89 {
        public static final C0344b Companion = new C0344b();
        public final String b;

        @ul2
        public static final class a implements dp3<b> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.ErrorReject", aVar, 1);
                s96Var.j(DynamicLink.Builder.KEY_LINK, false);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                return new df4[]{ca8.a};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                int i = 1;
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                } else {
                    String strDecodeStringElement2 = null;
                    boolean z = true;
                    int i2 = 0;
                    while (z) {
                        int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                        if (iDecodeElementIndex == -1) {
                            z = false;
                        } else {
                            if (iDecodeElementIndex != 0) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                            i2 = 1;
                        }
                    }
                    strDecodeStringElement = strDecodeStringElement2;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new b(i, strDecodeStringElement);
            }

            @Override // defpackage.xp7, defpackage.xl2
            public final mp7 getDescriptor() {
                return descriptor;
            }

            @Override // defpackage.xp7
            public final void serialize(ux2 ux2Var, Object obj) {
                b bVar = (b) obj;
                bVar.getClass();
                s96 s96Var = descriptor;
                gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
                gu1VarBeginStructure.encodeStringElement(s96Var, 0, bVar.b);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        /* JADX INFO: renamed from: v89$b$b, reason: collision with other inner class name */
        public static final class C0344b {
            public final df4<b> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ b(int i, String str) {
            if (1 == (i & 1)) {
                this.b = str;
            } else {
                r96.f(a.a.getDescriptor(), i, 1);
                throw null;
            }
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onCloseReject(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && aa4.e(this.b, ((b) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("ErrorReject(link=", this.b, ")");
        }

        public b() {
            this.b = "reject_inappropriate.checkscan.org/";
        }
    }

    @up7
    public static final class c implements v89 {
        public static final b Companion = new b();
        public final String b;

        @ul2
        public static final class a implements dp3<c> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.ErrorUserExist", aVar, 1);
                s96Var.j(DynamicLink.Builder.KEY_LINK, false);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                return new df4[]{ca8.a};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                int i = 1;
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                } else {
                    String strDecodeStringElement2 = null;
                    boolean z = true;
                    int i2 = 0;
                    while (z) {
                        int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                        if (iDecodeElementIndex == -1) {
                            z = false;
                        } else {
                            if (iDecodeElementIndex != 0) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                            i2 = 1;
                        }
                    }
                    strDecodeStringElement = strDecodeStringElement2;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new c(i, strDecodeStringElement);
            }

            @Override // defpackage.xp7, defpackage.xl2
            public final mp7 getDescriptor() {
                return descriptor;
            }

            @Override // defpackage.xp7
            public final void serialize(ux2 ux2Var, Object obj) {
                c cVar = (c) obj;
                cVar.getClass();
                s96 s96Var = descriptor;
                gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
                gu1VarBeginStructure.encodeStringElement(s96Var, 0, cVar.b);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        public static final class b {
            public final df4<c> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ c(int i, String str) {
            if (1 == (i & 1)) {
                this.b = str;
            } else {
                r96.f(a.a.getDescriptor(), i, 1);
                throw null;
            }
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onCloseUserExist(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.b, ((c) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("ErrorUserExist(link=", this.b, ")");
        }

        public c() {
            this.b = "reject_userexists.checkscan.org/";
        }
    }

    @up7
    public static final class d implements v89 {
        public static final b Companion = new b();
        public final String b;

        @ul2
        public static final class a implements dp3<d> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.OrderedCardUserExists", aVar, 1);
                s96Var.j(DynamicLink.Builder.KEY_LINK, false);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                return new df4[]{ca8.a};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                int i = 1;
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                } else {
                    String strDecodeStringElement2 = null;
                    boolean z = true;
                    int i2 = 0;
                    while (z) {
                        int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                        if (iDecodeElementIndex == -1) {
                            z = false;
                        } else {
                            if (iDecodeElementIndex != 0) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                            i2 = 1;
                        }
                    }
                    strDecodeStringElement = strDecodeStringElement2;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new d(i, strDecodeStringElement);
            }

            @Override // defpackage.xp7, defpackage.xl2
            public final mp7 getDescriptor() {
                return descriptor;
            }

            @Override // defpackage.xp7
            public final void serialize(ux2 ux2Var, Object obj) {
                d dVar = (d) obj;
                dVar.getClass();
                s96 s96Var = descriptor;
                gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
                gu1VarBeginStructure.encodeStringElement(s96Var, 0, dVar.b);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        public static final class b {
            public final df4<d> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ d(int i, String str) {
            if (1 == (i & 1)) {
                this.b = str;
            } else {
                r96.f(a.a.getDescriptor(), i, 1);
                throw null;
            }
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onCloseStartDownloadingAlfa(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && aa4.e(this.b, ((d) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("OrderedCardUserExists(link=", this.b, ")");
        }

        public d() {
            this.b = "https://ordered_card_userexists.checkscan.org";
        }
    }

    @up7
    public static final class f implements v89 {
        public static final b Companion = new b();
        public final String b;

        @ul2
        public static final class a implements dp3<f> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.Succsess", aVar, 1);
                s96Var.j(DynamicLink.Builder.KEY_LINK, false);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                return new df4[]{ca8.a};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                int i = 1;
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                } else {
                    String strDecodeStringElement2 = null;
                    boolean z = true;
                    int i2 = 0;
                    while (z) {
                        int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                        if (iDecodeElementIndex == -1) {
                            z = false;
                        } else {
                            if (iDecodeElementIndex != 0) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                            i2 = 1;
                        }
                    }
                    strDecodeStringElement = strDecodeStringElement2;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new f(i, strDecodeStringElement);
            }

            @Override // defpackage.xp7, defpackage.xl2
            public final mp7 getDescriptor() {
                return descriptor;
            }

            @Override // defpackage.xp7
            public final void serialize(ux2 ux2Var, Object obj) {
                f fVar = (f) obj;
                fVar.getClass();
                s96 s96Var = descriptor;
                gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
                gu1VarBeginStructure.encodeStringElement(s96Var, 0, fVar.b);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        public static final class b {
            public final df4<f> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ f(int i, String str) {
            if (1 == (i & 1)) {
                this.b = str;
            } else {
                r96.f(a.a.getDescriptor(), i, 1);
                throw null;
            }
        }

        @Override // defpackage.v89
        public final void c(CreateCardPresenter createCardPresenter) {
            createCardPresenter.onCloseSuccess(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof f) && aa4.e(this.b, ((f) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("Succsess(link=", this.b, ")");
        }

        public f() {
            this.b = "cardissued.checkscan.org/";
        }
    }
}
