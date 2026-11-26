package com.google.firebase.logger;

import android.util.Log;
import defpackage.bj;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Logger {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<String, Logger> loggers = new ConcurrentHashMap<>();
    private boolean enabled;
    private Level minLevel;
    private final String tag;

    public static final class AndroidLogger extends Logger {

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Level.values().length];
                try {
                    iArr[Level.VERBOSE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Level.DEBUG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Level.INFO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Level.WARN.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Level.ERROR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AndroidLogger(String str, boolean z, Level level) {
            super(str, z, level, null);
            str.getClass();
            level.getClass();
        }

        @Override // com.google.firebase.logger.Logger
        public int log(Level level, String str, Object[] objArr, Throwable th) {
            level.getClass();
            str.getClass();
            objArr.getClass();
            if (objArr.length != 0) {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                str = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            }
            int i = WhenMappings.$EnumSwitchMapping$0[level.ordinal()];
            if (i == 1) {
                String tag = getTag();
                return th != null ? Log.v(tag, str, th) : Log.v(tag, str);
            }
            if (i == 2) {
                String tag2 = getTag();
                return th != null ? Log.d(tag2, str, th) : Log.d(tag2, str);
            }
            if (i == 3) {
                String tag3 = getTag();
                return th != null ? Log.i(tag3, str, th) : Log.i(tag3, str);
            }
            if (i == 4) {
                String tag4 = getTag();
                return th != null ? Log.w(tag4, str, th) : Log.w(tag4, str);
            }
            if (i == 5) {
                String tag5 = getTag();
                return th != null ? Log.e(tag5, str, th) : Log.e(tag5, str);
            }
            me0.e();
            return 0;
        }
    }

    public static final class FakeLogger extends Logger {
        private final List<String> record;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FakeLogger(String str, boolean z, Level level) {
            super(str, z, level, null);
            str.getClass();
            level.getClass();
            this.record = new ArrayList();
        }

        private final String toLogMessage(Level level, String str, Object[] objArr, Throwable th) {
            StringBuilder sb;
            if (objArr.length != 0) {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                str = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            }
            if (th != null) {
                sb = new StringBuilder();
                sb.append(level);
                sb.append(' ');
                sb.append(str);
                sb.append(' ');
                sb.append(Log.getStackTraceString(th));
            } else {
                sb = new StringBuilder();
                sb.append(level);
                sb.append(' ');
                sb.append(str);
            }
            return sb.toString();
        }

        public final void clearLogMessages() {
            this.record.clear();
        }

        public final boolean hasLogMessage(String str) {
            str.getClass();
            List<String> list = this.record;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (ta8.D((String) it.next(), str, false)) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final boolean hasLogMessageThat(nl3<? super String, Boolean> nl3Var) {
            nl3Var.getClass();
            List<String> list = this.record;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (nl3Var.invoke(it.next()).booleanValue()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.firebase.logger.Logger
        public int log(Level level, String str, Object[] objArr, Throwable th) {
            level.getClass();
            str.getClass();
            objArr.getClass();
            String logMessage = toLogMessage(level, str, objArr, th);
            System.out.println((Object) bj.c("Log: ", logMessage));
            this.record.add(logMessage);
            return logMessage.length();
        }
    }

    public enum Level {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
        private final int priority;

        Level(int i) {
            this.priority = i;
        }

        public static g03<Level> getEntries() {
            return $ENTRIES;
        }

        public final int getPriority$com_google_firebase_firebase_common() {
            return this.priority;
        }
    }

    private Logger(String str, boolean z, Level level) {
        this.tag = str;
        this.enabled = z;
        this.minLevel = level;
    }

    public static /* synthetic */ int debug$default(Logger logger, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: debug");
            return 0;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        return logger.debug(str, objArr, th);
    }

    public static /* synthetic */ int error$default(Logger logger, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: error");
            return 0;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        return logger.error(str, objArr, th);
    }

    public static final Logger getLogger(String str, boolean z, Level level) {
        return Companion.getLogger(str, z, level);
    }

    public static /* synthetic */ int info$default(Logger logger, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: info");
            return 0;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        return logger.info(str, objArr, th);
    }

    private final int logIfAble(Level level, String str, Object[] objArr, Throwable th) {
        if (!this.enabled) {
            return 0;
        }
        if (this.minLevel.getPriority$com_google_firebase_firebase_common() <= level.getPriority$com_google_firebase_firebase_common() || Log.isLoggable(this.tag, level.getPriority$com_google_firebase_firebase_common())) {
            return log(level, str, objArr, th);
        }
        return 0;
    }

    public static /* synthetic */ int logIfAble$default(Logger logger, Level level, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: logIfAble");
            return 0;
        }
        if ((i & 4) != 0) {
            objArr = new Object[0];
        }
        return logger.logIfAble(level, str, objArr, th);
    }

    public static final FakeLogger setupFakeLogger(String str, boolean z, Level level) {
        return Companion.setupFakeLogger(str, z, level);
    }

    public static /* synthetic */ int verbose$default(Logger logger, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: verbose");
            return 0;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        return logger.verbose(str, objArr, th);
    }

    public static /* synthetic */ int warn$default(Logger logger, String str, Object[] objArr, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: warn");
            return 0;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        return logger.warn(str, objArr, th);
    }

    public final int debug(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return debug$default(this, str, objArr, null, 4, null);
    }

    public final int error(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return error$default(this, str, objArr, null, 4, null);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Level getMinLevel() {
        return this.minLevel;
    }

    public final String getTag() {
        return this.tag;
    }

    public final int info(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return info$default(this, str, objArr, null, 4, null);
    }

    public abstract int log(Level level, String str, Object[] objArr, Throwable th);

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setMinLevel(Level level) {
        level.getClass();
        this.minLevel = level;
    }

    public final int verbose(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return verbose$default(this, str, objArr, null, 4, null);
    }

    public final int warn(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return warn$default(this, str, objArr, null, 4, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ Logger getLogger$default(Companion companion, String str, boolean z, Level level, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            if ((i & 4) != 0) {
                level = Level.INFO;
            }
            return companion.getLogger(str, z, level);
        }

        public static /* synthetic */ FakeLogger setupFakeLogger$default(Companion companion, String str, boolean z, Level level, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            if ((i & 4) != 0) {
                level = Level.DEBUG;
            }
            return companion.setupFakeLogger(str, z, level);
        }

        public final Logger getLogger(String str, boolean z, Level level) {
            Object objPutIfAbsent;
            str.getClass();
            level.getClass();
            ConcurrentHashMap concurrentHashMap = Logger.loggers;
            Object androidLogger = concurrentHashMap.get(str);
            if (androidLogger == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(str, (androidLogger = new AndroidLogger(str, z, level)))) != null) {
                androidLogger = objPutIfAbsent;
            }
            return (Logger) androidLogger;
        }

        public final FakeLogger setupFakeLogger(String str, boolean z, Level level) {
            str.getClass();
            level.getClass();
            FakeLogger fakeLogger = new FakeLogger(str, z, level);
            Logger.loggers.put(str, fakeLogger);
            return fakeLogger;
        }

        private Companion() {
        }
    }

    public /* synthetic */ Logger(String str, boolean z, Level level, jh2 jh2Var) {
        this(str, z, level);
    }

    public final int debug(String str) {
        str.getClass();
        return debug$default(this, str, null, 2, null);
    }

    public final int error(String str) {
        str.getClass();
        return error$default(this, str, null, 2, null);
    }

    public final int info(String str) {
        str.getClass();
        return info$default(this, str, null, 2, null);
    }

    public final int verbose(String str) {
        str.getClass();
        return verbose$default(this, str, null, 2, null);
    }

    public final int warn(String str) {
        str.getClass();
        return warn$default(this, str, null, 2, null);
    }

    public final int debug(String str, Object[] objArr, Throwable th) {
        str.getClass();
        objArr.getClass();
        return logIfAble(Level.DEBUG, str, objArr, th);
    }

    public final int error(String str, Object[] objArr, Throwable th) {
        str.getClass();
        objArr.getClass();
        return logIfAble(Level.ERROR, str, objArr, th);
    }

    public final int info(String str, Object[] objArr, Throwable th) {
        str.getClass();
        objArr.getClass();
        return logIfAble(Level.INFO, str, objArr, th);
    }

    public final int verbose(String str, Object[] objArr, Throwable th) {
        str.getClass();
        objArr.getClass();
        return logIfAble(Level.VERBOSE, str, objArr, th);
    }

    public final int warn(String str, Object[] objArr, Throwable th) {
        str.getClass();
        objArr.getClass();
        return logIfAble(Level.WARN, str, objArr, th);
    }

    public static /* synthetic */ int debug$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: debug");
            return 0;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        return logger.debug(str, th);
    }

    public static /* synthetic */ int error$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: error");
            return 0;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        return logger.error(str, th);
    }

    public static /* synthetic */ int info$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: info");
            return 0;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        return logger.info(str, th);
    }

    public static /* synthetic */ int verbose$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: verbose");
            return 0;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        return logger.verbose(str, th);
    }

    public static /* synthetic */ int warn$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: warn");
            return 0;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        return logger.warn(str, th);
    }

    public final int debug(String str, Throwable th) {
        str.getClass();
        return logIfAble$default(this, Level.DEBUG, str, null, th, 4, null);
    }

    public final int error(String str, Throwable th) {
        str.getClass();
        return logIfAble$default(this, Level.ERROR, str, null, th, 4, null);
    }

    public final int info(String str, Throwable th) {
        str.getClass();
        return logIfAble$default(this, Level.INFO, str, null, th, 4, null);
    }

    public final int verbose(String str, Throwable th) {
        str.getClass();
        return logIfAble$default(this, Level.VERBOSE, str, null, th, 4, null);
    }

    public final int warn(String str, Throwable th) {
        str.getClass();
        return logIfAble$default(this, Level.WARN, str, null, th, 4, null);
    }
}
