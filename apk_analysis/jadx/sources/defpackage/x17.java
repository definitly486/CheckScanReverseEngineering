package defpackage;

import com.google.firebase.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.RemoteConfigKt;

/* JADX INFO: loaded from: classes5.dex */
public final class x17 {
    public static final a.AbstractC0353a.C0354a a;

    public static abstract class a {

        /* JADX INFO: renamed from: x17$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0353a extends a {

            /* JADX INFO: renamed from: x17$a$a$a, reason: collision with other inner class name */
            public static final class C0354a extends AbstractC0353a {
                public static final C0354a a = new C0354a();
            }
        }
    }

    public static final class b extends gh4 implements ll3<FirebaseRemoteConfig> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final FirebaseRemoteConfig invoke() {
            Object aVar;
            a.AbstractC0353a.C0354a c0354a = x17.a;
            try {
                aVar = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            return (FirebaseRemoteConfig) aVar;
        }
    }

    static {
        nm4.b(b.f);
        a = a.AbstractC0353a.C0354a.a;
    }
}
