package androidx.window.core;

import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SpecificationComputer<T> {
    public static final Companion Companion = new Companion(null);

    public abstract T compute();

    public final String createMessage(Object obj, String str) {
        obj.getClass();
        str.getClass();
        return str + " value: " + obj;
    }

    public abstract SpecificationComputer<T> require(String str, nl3<? super T, Boolean> nl3Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ SpecificationComputer startSpecification$default(Companion companion, Object obj, String str, VerificationMode verificationMode, Logger logger, int i, Object obj2) {
            if ((i & 2) != 0) {
                verificationMode = BuildConfig.INSTANCE.getVerificationMode();
            }
            if ((i & 4) != 0) {
                logger = AndroidLogger.INSTANCE;
            }
            return companion.startSpecification(obj, str, verificationMode, logger);
        }

        public final <T> SpecificationComputer<T> startSpecification(T t, String str, VerificationMode verificationMode, Logger logger) {
            t.getClass();
            str.getClass();
            verificationMode.getClass();
            logger.getClass();
            return new ValidSpecification(t, str, verificationMode, logger);
        }

        private Companion() {
        }
    }
}
