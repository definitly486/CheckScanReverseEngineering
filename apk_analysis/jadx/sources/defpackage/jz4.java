package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class jz4 extends lj3 {
    public static final ReferenceQueue<jz4> b = new ReferenceQueue<>();
    public static final ConcurrentHashMap c = new ConcurrentHashMap();
    public static final Logger d = Logger.getLogger(jz4.class.getName());

    public static final class a extends WeakReference<jz4> {
        public static final boolean f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", TJAdUnitConstants.String.TRUE));
        public static final RuntimeException g;
        public final ReferenceQueue<jz4> a;
        public final ConcurrentMap<a, a> b;
        public final String c;
        public final SoftReference d;
        public final AtomicBoolean e;

        static {
            RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
            runtimeException.setStackTrace(new StackTraceElement[0]);
            g = runtimeException;
        }

        public a(jz4 jz4Var, ez4 ez4Var, ReferenceQueue referenceQueue, ConcurrentMap concurrentMap) {
            super(jz4Var, referenceQueue);
            this.e = new AtomicBoolean();
            this.d = new SoftReference(f ? new RuntimeException("ManagedChannel allocation site") : g);
            this.c = ez4Var.toString();
            this.a = referenceQueue;
            this.b = concurrentMap;
            concurrentMap.put(this, this);
            a(referenceQueue);
        }

        public static void a(ReferenceQueue referenceQueue) {
            while (true) {
                a aVar = (a) referenceQueue.poll();
                if (aVar == null) {
                    return;
                }
                SoftReference softReference = aVar.d;
                RuntimeException runtimeException = (RuntimeException) softReference.get();
                boolean z = aVar.e.get();
                super.clear();
                aVar.b.remove(aVar);
                softReference.clear();
                if (!z) {
                    Level level = Level.SEVERE;
                    Logger logger = jz4.d;
                    if (logger.isLoggable(level)) {
                        LogRecord logRecord = new LogRecord(level, "*~*~*~ Previous channel {0} was garbage collected without being shut down! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow()");
                        logRecord.setLoggerName(logger.getName());
                        logRecord.setParameters(new Object[]{aVar.c});
                        logRecord.setThrown(runtimeException);
                        logger.log(logRecord);
                    }
                }
            }
        }

        @Override // java.lang.ref.Reference
        public final void clear() {
            super.clear();
            this.b.remove(this);
            this.d.clear();
            a(this.a);
        }
    }

    public jz4() {
        throw null;
    }
}
