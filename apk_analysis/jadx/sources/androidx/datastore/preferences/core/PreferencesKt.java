package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesKt {

    /* JADX INFO: renamed from: androidx.datastore.preferences.core.PreferencesKt$edit$2, reason: invalid class name */
    @bd2(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {358}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<Preferences, e02<? super Preferences>, Object> {
        final /* synthetic */ bm3<MutablePreferences, e02<? super j59>, Object> $transform;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super MutablePreferences, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$transform = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(Preferences preferences, e02<? super Preferences> e02Var) {
            return ((AnonymousClass2) create(preferences, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                r57.b(obj);
                return mutablePreferences;
            }
            r57.b(obj);
            MutablePreferences mutablePreferences2 = ((Preferences) this.L$0).toMutablePreferences();
            bm3<MutablePreferences, e02<? super j59>, Object> bm3Var = this.$transform;
            this.L$0 = mutablePreferences2;
            this.label = 1;
            return bm3Var.invoke(mutablePreferences2, this) == a32Var ? a32Var : mutablePreferences2;
        }
    }

    public static final Object edit(DataStore<Preferences> dataStore, bm3<? super MutablePreferences, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super Preferences> e02Var) {
        return dataStore.updateData(new AnonymousClass2(bm3Var, null), e02Var);
    }
}
