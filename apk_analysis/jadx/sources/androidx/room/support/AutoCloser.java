package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.ln;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class AutoCloser {
    public static final String BUG_LINK = "https://issuetracker.google.com/issues/new?component=413107&template=1096568";
    public static final Companion Companion = new Companion(null);
    private mb4 autoCloseJob;
    private final long autoCloseTimeoutInMs;
    private y22 coroutineScope;
    private SupportSQLiteDatabase delegateDatabase;
    private SupportSQLiteOpenHelper delegateOpenHelper;
    private AtomicLong lastDecrementRefCountTimeStamp;
    private final Object lock;
    private boolean manuallyClosed;
    private ll3<j59> onAutoCloseCallback;
    private final AtomicInteger referenceCount;
    private final Watch watch;

    public interface Watch {
        long getMillis();
    }

    /* JADX INFO: renamed from: androidx.room.support.AutoCloser$decrementCountAndScheduleClose$2, reason: invalid class name */
    @bd2(c = "androidx.room.support.AutoCloser$decrementCountAndScheduleClose$2", f = "AutoCloser.android.kt", l = {167}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return AutoCloser.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = AutoCloser.this.autoCloseTimeoutInMs;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            AutoCloser.this.autoCloseDatabase();
            return j59.a;
        }
    }

    public AutoCloser(long j, TimeUnit timeUnit, Watch watch) {
        timeUnit.getClass();
        watch.getClass();
        this.watch = watch;
        this.lock = new Object();
        this.autoCloseTimeoutInMs = timeUnit.toMillis(j);
        this.referenceCount = new AtomicInteger(0);
        this.lastDecrementRefCountTimeStamp = new AtomicLong(watch.getMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void autoCloseDatabase() {
        synchronized (this.lock) {
            try {
                if (this.watch.getMillis() - this.lastDecrementRefCountTimeStamp.get() < this.autoCloseTimeoutInMs) {
                    return;
                }
                if (this.referenceCount.get() != 0) {
                    return;
                }
                ll3<j59> ll3Var = this.onAutoCloseCallback;
                if (ll3Var == null) {
                    throw new IllegalStateException("onAutoCloseCallback is null but it should  have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
                }
                ll3Var.invoke();
                SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                    supportSQLiteDatabase.close();
                }
                this.delegateDatabase = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void closeDatabaseIfOpen() {
        synchronized (this.lock) {
            try {
                this.manuallyClosed = true;
                mb4 mb4Var = this.autoCloseJob;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                this.autoCloseJob = null;
                SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                if (supportSQLiteDatabase != null) {
                    supportSQLiteDatabase.close();
                }
                this.delegateDatabase = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void decrementCountAndScheduleClose() {
        int iDecrementAndGet = this.referenceCount.decrementAndGet();
        if (iDecrementAndGet < 0) {
            ah.f("Unbalanced reference count.");
            return;
        }
        this.lastDecrementRefCountTimeStamp.set(this.watch.getMillis());
        if (iDecrementAndGet == 0) {
            y22 y22Var = this.coroutineScope;
            if (y22Var != null) {
                this.autoCloseJob = av0.c(y22Var, null, null, new AnonymousClass2(null), 3);
            } else {
                aa4.j("coroutineScope");
                throw null;
            }
        }
    }

    public final <V> V executeRefCountingFunction(nl3<? super SupportSQLiteDatabase, ? extends V> nl3Var) {
        nl3Var.getClass();
        try {
            return nl3Var.invoke(incrementCountAndEnsureDbIsOpen());
        } finally {
            decrementCountAndScheduleClose();
        }
    }

    public final ll3<j59> getAutoCloseCallbackForTest$room_runtime() {
        return this.onAutoCloseCallback;
    }

    public final SupportSQLiteDatabase getDelegateDatabase$room_runtime() {
        return this.delegateDatabase;
    }

    public final int getRefCountForTest$room_runtime() {
        return this.referenceCount.get();
    }

    public final SupportSQLiteDatabase incrementCountAndEnsureDbIsOpen() {
        mb4 mb4Var = this.autoCloseJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.autoCloseJob = null;
        this.referenceCount.incrementAndGet();
        if (this.manuallyClosed) {
            ah.f("Attempting to open already closed database.");
            return null;
        }
        synchronized (this.lock) {
            SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
            if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                return supportSQLiteDatabase;
            }
            SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.delegateOpenHelper;
            if (supportSQLiteOpenHelper == null) {
                aa4.j("delegateOpenHelper");
                throw null;
            }
            SupportSQLiteDatabase writableDatabase = supportSQLiteOpenHelper.getWritableDatabase();
            this.delegateDatabase = writableDatabase;
            return writableDatabase;
        }
    }

    public final void initCoroutineScope(y22 y22Var) {
        y22Var.getClass();
        this.coroutineScope = y22Var;
    }

    public final void initOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        supportSQLiteOpenHelper.getClass();
        if (supportSQLiteOpenHelper instanceof AutoClosingRoomOpenHelper) {
            fg.c("Failed requirement.");
        } else {
            this.delegateOpenHelper = supportSQLiteOpenHelper;
        }
    }

    public final boolean isActive() {
        return !this.manuallyClosed;
    }

    public final void setAutoCloseCallback(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.onAutoCloseCallback = ll3Var;
    }

    public final void setDelegateDatabase$room_runtime(SupportSQLiteDatabase supportSQLiteDatabase) {
        this.delegateDatabase = supportSQLiteDatabase;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ AutoCloser(long j, TimeUnit timeUnit, Watch watch, int i, jh2 jh2Var) {
        this(j, timeUnit, (i & 4) != 0 ? new ln() : watch);
    }
}
