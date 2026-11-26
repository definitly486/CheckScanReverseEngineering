package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.datastore.core.DataMigration;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ki0;
import defpackage.ll3;
import defpackage.ni0;
import defpackage.nm4;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    private final Context context;
    private final Set<String> keySet;
    private final dm3<SharedPreferencesView, T, e02<? super T>, Object> migrate;
    private final String name;
    private final cl4 sharedPrefs$delegate;
    private final bm3<T, e02<? super Boolean>, Object> shouldRunMigration;

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.migrations.SharedPreferencesMigration$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<T, e02<? super Boolean>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(T t, e02<? super Boolean> e02Var) {
            return ((AnonymousClass1) create(t, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.TRUE;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$2, reason: invalid class name */
    @bd2(c = "androidx.datastore.migrations.SharedPreferencesMigration$2", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<T, e02<? super Boolean>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(T t, e02<? super Boolean> e02Var) {
            return ((AnonymousClass2) create(t, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.TRUE;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3, reason: invalid class name */
    @bd2(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends pg8 implements bm3<T, e02<? super Boolean>, Object> {
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(T t, e02<? super Boolean> e02Var) {
            return ((AnonymousClass3) create(t, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.TRUE;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements ll3<SharedPreferences> {
        final /* synthetic */ Context $context;
        final /* synthetic */ String $sharedPreferencesName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(Context context, String str) {
            super(0);
            this.$context = context;
            this.$sharedPreferencesName = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final SharedPreferences invoke() {
            SharedPreferences sharedPreferences = this.$context.getSharedPreferences(this.$sharedPreferencesName, 0);
            sharedPreferences.getClass();
            return sharedPreferences;
        }
    }

    public static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        public static final boolean deleteSharedPreferences(Context context, String str) {
            context.getClass();
            str.getClass();
            return context.deleteSharedPreferences(str);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.android.kt", l = {151}, m = "shouldMigrate")
    public static final class C06821 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SharedPreferencesMigration<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06821(SharedPreferencesMigration<T> sharedPreferencesMigration, e02<? super C06821> e02Var) {
            super(e02Var);
            this.this$0 = sharedPreferencesMigration;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.shouldMigrate(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SharedPreferencesMigration(ll3<? extends SharedPreferences> ll3Var, Set<String> set, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var, Context context, String str) {
        this.shouldRunMigration = bm3Var;
        this.migrate = dm3Var;
        this.context = context;
        this.name = str;
        this.sharedPrefs$delegate = nm4.b(ll3Var);
        this.keySet = set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() ? null : qn1.x0(set);
    }

    private final void deleteSharedPreferences(Context context, String str) {
        Api24Impl.deleteSharedPreferences(context, str);
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs$delegate.getValue();
    }

    private final File getSharedPrefsBackup(File file) {
        return new File(file.getPath() + ".bak");
    }

    private final File getSharedPrefsFile(Context context, String str) {
        return new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), ni0.c(str, ".xml"));
    }

    @Override // androidx.datastore.core.DataMigration
    public Object cleanUp(e02<? super j59> e02Var) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = getSharedPrefs().edit();
        Set<String> set = this.keySet;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            ki0.d("Unable to delete migrated keys from SharedPreferences.");
            return null;
        }
        if (getSharedPrefs().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
            deleteSharedPreferences(context, str);
        }
        Set<String> set2 = this.keySet;
        if (set2 != null) {
            set2.clear();
        }
        return j59.a;
    }

    @Override // androidx.datastore.core.DataMigration
    public Object migrate(T t, e02<? super T> e02Var) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), t, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.DataMigration
    public Object shouldMigrate(T t, e02<? super Boolean> e02Var) {
        C06821 c06821;
        if (e02Var instanceof C06821) {
            c06821 = (C06821) e02Var;
            int i = c06821.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06821.label = i - Integer.MIN_VALUE;
            } else {
                c06821 = new C06821(this, e02Var);
            }
        } else {
            c06821 = new C06821(this, e02Var);
        }
        Object objInvoke = c06821.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06821.label;
        boolean z = true;
        if (i2 == 0) {
            r57.b(objInvoke);
            bm3<T, e02<? super Boolean>, Object> bm3Var = this.shouldRunMigration;
            c06821.L$0 = this;
            c06821.label = 1;
            objInvoke = bm3Var.invoke(t, c06821);
            if (objInvoke == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (SharedPreferencesMigration) c06821.L$0;
            r57.b(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Boolean.FALSE;
        }
        Set<String> set = this.keySet;
        if (set == null) {
            Map<String, ?> all = this.getSharedPrefs().getAll();
            all.getClass();
            if (all.isEmpty()) {
                z = false;
            }
        } else {
            Set<String> set2 = set;
            SharedPreferences sharedPrefs = this.getSharedPrefs();
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = set2.iterator();
                while (it.hasNext()) {
                    if (sharedPrefs.contains((String) it.next())) {
                    }
                }
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(ll3<? extends SharedPreferences> ll3Var, Set<String> set, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(ll3Var, set, (bm3) null, dm3Var, 4, (jh2) null);
        ll3Var.getClass();
        set.getClass();
        dm3Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String str, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(context, str, null, null, dm3Var, 12, null);
        context.getClass();
        str.getClass();
        dm3Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String str, Set<String> set, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(context, str, set, null, dm3Var, 8, null);
        context.getClass();
        str.getClass();
        set.getClass();
        dm3Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(ll3<? extends SharedPreferences> ll3Var, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(ll3Var, (Set) null, (bm3) null, dm3Var, 6, (jh2) null);
        ll3Var.getClass();
        dm3Var.getClass();
    }

    public /* synthetic */ SharedPreferencesMigration(ll3 ll3Var, Set set, bm3 bm3Var, dm3 dm3Var, Context context, String str, int i, jh2 jh2Var) {
        this((ll3<? extends SharedPreferences>) ll3Var, (Set<String>) set, (i & 4) != 0 ? new AnonymousClass1(null) : bm3Var, dm3Var, context, str);
    }

    public /* synthetic */ SharedPreferencesMigration(ll3 ll3Var, Set set, bm3 bm3Var, dm3 dm3Var, int i, jh2 jh2Var) {
        this((ll3<? extends SharedPreferences>) ll3Var, (Set<String>) ((i & 2) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set), (i & 4) != 0 ? new AnonymousClass2(null) : bm3Var, dm3Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(ll3<? extends SharedPreferences> ll3Var, Set<String> set, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(ll3Var, set, bm3Var, dm3Var, (Context) null, (String) null);
        ll3Var.getClass();
        set.getClass();
        bm3Var.getClass();
        dm3Var.getClass();
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, bm3 bm3Var, dm3 dm3Var, int i, jh2 jh2Var) {
        this(context, str, (i & 4) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i & 8) != 0 ? new AnonymousClass3(null) : bm3Var, dm3Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String str, Set<String> set, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, dm3<? super SharedPreferencesView, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        this(new AnonymousClass4(context, str), set, bm3Var, dm3Var, context, str);
        context.getClass();
        str.getClass();
        set.getClass();
        bm3Var.getClass();
        dm3Var.getClass();
    }
}
