package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import androidx.datastore.preferences.core.PreferencesKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.by6;
import defpackage.d22;
import defpackage.ds6;
import defpackage.e02;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.j59;
import defpackage.mx2;
import defpackage.nk;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qy0;
import defpackage.r57;
import defpackage.u96;
import defpackage.ue3;
import defpackage.x07;
import defpackage.y22;
import defpackage.ze4;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaDataStorage {
    static final /* synthetic */ ze4<Object>[] $$delegatedProperties;
    private final Context context;
    private final DataStore<Preferences> dataStore;
    private final by6 dataStore$delegate;
    private final ThreadLocal<Boolean> editLock;
    private final String name;

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$contains$1, reason: invalid class name */
    @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$contains$1", f = "JavaDataStorage.kt", l = {124}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
        final /* synthetic */ Preferences.Key<T> $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Preferences.Key<T> key, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$key = key;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return JavaDataStorage.this.new AnonymousClass1(this.$key, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3 data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = ue3.c(data, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Preferences preferences = (Preferences) obj;
            return Boolean.valueOf(preferences != null ? preferences.contains(this.$key) : false);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1", f = "JavaDataStorage.kt", l = {220}, m = "invokeSuspend")
    public static final class C07521 extends pg8 implements bm3<y22, e02<? super Preferences>, Object> {
        final /* synthetic */ nl3<MutablePreferences, j59> $transform;
        int label;

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
        public static final class C01351 extends pg8 implements bm3<MutablePreferences, e02<? super j59>, Object> {
            final /* synthetic */ nl3<MutablePreferences, j59> $transform;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C01351(nl3<? super MutablePreferences, j59> nl3Var, e02<? super C01351> e02Var) {
                super(2, e02Var);
                this.$transform = nl3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01351 c01351 = new C01351(this.$transform, e02Var);
                c01351.L$0 = obj;
                return c01351;
            }

            @Override // defpackage.bm3
            public final Object invoke(MutablePreferences mutablePreferences, e02<? super j59> e02Var) {
                return ((C01351) create(mutablePreferences, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this.$transform.invoke((MutablePreferences) this.L$0);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07521(nl3<? super MutablePreferences, j59> nl3Var, e02<? super C07521> e02Var) {
            super(2, e02Var);
            this.$transform = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return JavaDataStorage.this.new C07521(this.$transform, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Preferences> e02Var) {
            return ((C07521) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    Object obj2 = JavaDataStorage.this.editLock.get();
                    Boolean bool = Boolean.TRUE;
                    if (aa4.e(obj2, bool)) {
                        ah.f("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                        return null;
                    }
                    JavaDataStorage.this.editLock.set(bool);
                    DataStore dataStore = JavaDataStorage.this.dataStore;
                    C01351 c01351 = new C01351(this.$transform, null);
                    this.label = 1;
                    obj = PreferencesKt.edit(dataStore, c01351, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                Preferences preferences = (Preferences) obj;
                JavaDataStorage.this.editLock.set(Boolean.FALSE);
                return preferences;
            } catch (Throwable th) {
                JavaDataStorage.this.editLock.set(Boolean.FALSE);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getAllSync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$getAllSync$1", f = "JavaDataStorage.kt", l = {170}, m = "invokeSuspend")
    public static final class C07531 extends pg8 implements bm3<y22, e02<? super Map<Preferences.Key<?>, ? extends Object>>, Object> {
        int label;

        public C07531(e02<? super C07531> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return JavaDataStorage.this.new C07531(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Map<Preferences.Key<?>, ? extends Object>> e02Var) {
            return ((C07531) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Map<Preferences.Key<?>, Object> mapAsMap;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3 data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = ue3.c(data, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (mapAsMap = preferences.asMap()) == null) ? mx2.b : mapAsMap;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getSync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", f = "JavaDataStorage.kt", l = {104}, m = "invokeSuspend")
    public static final class C07541<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ T $defaultValue;
        final /* synthetic */ Preferences.Key<T> $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07541(Preferences.Key<T> key, T t, e02<? super C07541> e02Var) {
            super(2, e02Var);
            this.$key = key;
            this.$defaultValue = t;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return JavaDataStorage.this.new C07541(this.$key, this.$defaultValue, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((C07541) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3<T> data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = ue3.c(data, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (obj2 = preferences.get(this.$key)) == null) ? this.$defaultValue : obj2;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1", f = "JavaDataStorage.kt", l = {145}, m = "invokeSuspend")
    public static final class C07551 extends pg8 implements bm3<y22, e02<? super Preferences>, Object> {
        final /* synthetic */ Preferences.Key<T> $key;
        final /* synthetic */ T $value;
        int label;

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
        public static final class C01361 extends pg8 implements bm3<MutablePreferences, e02<? super j59>, Object> {
            final /* synthetic */ Preferences.Key<T> $key;
            final /* synthetic */ T $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01361(Preferences.Key<T> key, T t, e02<? super C01361> e02Var) {
                super(2, e02Var);
                this.$key = key;
                this.$value = t;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01361 c01361 = new C01361(this.$key, this.$value, e02Var);
                c01361.L$0 = obj;
                return c01361;
            }

            @Override // defpackage.bm3
            public final Object invoke(MutablePreferences mutablePreferences, e02<? super j59> e02Var) {
                return ((C01361) create(mutablePreferences, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                ((MutablePreferences) this.L$0).set(this.$key, this.$value);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07551(Preferences.Key<T> key, T t, e02<? super C07551> e02Var) {
            super(2, e02Var);
            this.$key = key;
            this.$value = t;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return JavaDataStorage.this.new C07551(this.$key, this.$value, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Preferences> e02Var) {
            return ((C07551) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            DataStore dataStore = JavaDataStorage.this.dataStore;
            C01361 c01361 = new C01361(this.$key, this.$value, null);
            this.label = 1;
            Object objEdit = PreferencesKt.edit(dataStore, c01361, this);
            return objEdit == a32Var ? a32Var : objEdit;
        }
    }

    static {
        ds6 ds6Var = new ds6(qy0.NO_RECEIVER, JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
        x07.a.getClass();
        $$delegatedProperties = new ze4[]{ds6Var};
    }

    public JavaDataStorage(Context context, String str) {
        context.getClass();
        str.getClass();
        this.context = context;
        this.name = str;
        this.editLock = new ThreadLocal<>();
        this.dataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(str, new ReplaceFileCorruptionHandler(new nk(this, 3)), new d22(this, 1), null, 8, null);
        this.dataStore = getDataStore(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preferences dataStore_delegate$lambda$0(JavaDataStorage javaDataStorage, CorruptionException corruptionException) {
        corruptionException.getClass();
        Log.w(x07.a(JavaDataStorage.class).f(), "CorruptionException in " + javaDataStorage.name + " DataStore running in process " + Process.myPid(), corruptionException);
        return PreferencesFactory.createEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List dataStore_delegate$lambda$1(JavaDataStorage javaDataStorage, Context context) {
        context.getClass();
        return u96.h(SharedPreferencesMigrationKt.SharedPreferencesMigration$default(context, javaDataStorage.name, null, 4, null));
    }

    private final DataStore<Preferences> getDataStore(Context context) {
        return (DataStore) this.dataStore$delegate.getValue(context, $$delegatedProperties[0]);
    }

    public final <T> boolean contains(Preferences.Key<T> key) {
        key.getClass();
        return ((Boolean) bv0.a(gx2.b, new AnonymousClass1(key, null))).booleanValue();
    }

    public final Preferences editSync(nl3<? super MutablePreferences, j59> nl3Var) {
        nl3Var.getClass();
        return (Preferences) bv0.a(gx2.b, new C07521(nl3Var, null));
    }

    public final Map<Preferences.Key<?>, Object> getAllSync() {
        return (Map) bv0.a(gx2.b, new C07531(null));
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getName() {
        return this.name;
    }

    public final <T> T getSync(Preferences.Key<T> key, T t) {
        key.getClass();
        return (T) bv0.a(gx2.b, new C07541(key, t, null));
    }

    public final <T> Preferences putSync(Preferences.Key<T> key, T t) {
        key.getClass();
        return (Preferences) bv0.a(gx2.b, new C07551(key, t, null));
    }
}
