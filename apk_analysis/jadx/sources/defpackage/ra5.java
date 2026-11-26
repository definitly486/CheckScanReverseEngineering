package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class ra5<ReqT, RespT> {
    public final a a;
    public final String b;
    public final String c;
    public final ns6.a d;
    public final ns6.a e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a BIDI_STREAMING;
        public static final a CLIENT_STREAMING;
        public static final a SERVER_STREAMING;
        public static final a UNARY;
        public static final a UNKNOWN;

        static {
            a aVar = new a("UNARY", 0);
            UNARY = aVar;
            a aVar2 = new a("CLIENT_STREAMING", 1);
            CLIENT_STREAMING = aVar2;
            a aVar3 = new a("SERVER_STREAMING", 2);
            SERVER_STREAMING = aVar3;
            a aVar4 = new a("BIDI_STREAMING", 3);
            BIDI_STREAMING = aVar4;
            a aVar5 = new a("UNKNOWN", 4);
            UNKNOWN = aVar5;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public ra5(a aVar, String str, ns6.a aVar2, ns6.a aVar3) {
        new AtomicReferenceArray(2);
        o8.l(aVar, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        this.a = aVar;
        this.b = str;
        int iLastIndexOf = str.lastIndexOf(47);
        this.c = iLastIndexOf == -1 ? null : str.substring(0, iLastIndexOf);
        this.d = aVar2;
        this.e = aVar3;
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.b, "fullMethodName");
        aVarB.d(this.a, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        aVarB.c("idempotent", false);
        aVarB.c("safe", false);
        aVarB.c("sampledToLocalTracing", true);
        aVarB.d(this.d, "requestMarshaller");
        aVarB.d(this.e, "responseMarshaller");
        aVarB.d(null, "schemaDescriptor");
        aVarB.d = true;
        return aVarB.toString();
    }
}
