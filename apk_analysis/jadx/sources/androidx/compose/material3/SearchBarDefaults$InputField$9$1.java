package androidx.compose.material3;

import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.p07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SearchBarDefaults$InputField$9$1", f = "SearchBar.kt", l = {1442}, m = "invokeSuspend")
public final class SearchBarDefaults$InputField$9$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ State<Boolean> $focused$delegate;
    final /* synthetic */ SearchBarState $searchBarState;
    final /* synthetic */ TextFieldState $textFieldState;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material3.SearchBarDefaults$InputField$9$1$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.SearchBarDefaults$InputField$9$1$2", f = "SearchBar.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<CharSequence, e02<? super j59>, Object> {
        final /* synthetic */ y22 $coroutineScope;
        final /* synthetic */ State<Boolean> $focused$delegate;
        final /* synthetic */ p07 $prevLength;
        final /* synthetic */ SearchBarState $searchBarState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.SearchBarDefaults$InputField$9$1$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.SearchBarDefaults$InputField$9$1$2$1", f = "SearchBar.kt", l = {1438}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ SearchBarState $searchBarState;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SearchBarState searchBarState, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$searchBarState = searchBarState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$searchBarState, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    SearchBarState searchBarState = this.$searchBarState;
                    this.label = 1;
                    if (searchBarState.animateToExpanded(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(p07 p07Var, SearchBarState searchBarState, y22 y22Var, State<Boolean> state, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$prevLength = p07Var;
            this.$searchBarState = searchBarState;
            this.$coroutineScope = y22Var;
            this.$focused$delegate = state;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$prevLength, this.$searchBarState, this.$coroutineScope, this.$focused$delegate, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(CharSequence charSequence, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(charSequence, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            int length = ((CharSequence) this.L$0).length();
            if (length > this.$prevLength.b && SearchBarDefaults.InputField$lambda$5(this.$focused$delegate) && !SearchBarKt.isExpanded(this.$searchBarState)) {
                av0.c(this.$coroutineScope, null, null, new AnonymousClass1(this.$searchBarState, null), 3);
            }
            this.$prevLength.b = length;
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarDefaults$InputField$9$1(SearchBarState searchBarState, TextFieldState textFieldState, y22 y22Var, State<Boolean> state, e02<? super SearchBarDefaults$InputField$9$1> e02Var) {
        super(2, e02Var);
        this.$searchBarState = searchBarState;
        this.$textFieldState = textFieldState;
        this.$coroutineScope = y22Var;
        this.$focused$delegate = state;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SearchBarDefaults$InputField$9$1(this.$searchBarState, this.$textFieldState, this.$coroutineScope, this.$focused$delegate, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SearchBarDefaults$InputField$9$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (!SearchBarKt.isExpanded(this.$searchBarState)) {
                p07 p07Var = new p07();
                p07Var.b = this.$textFieldState.getText().length();
                final TextFieldState textFieldState = this.$textFieldState;
                hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.material3.o3
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return textFieldState.getText();
                    }
                });
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(p07Var, this.$searchBarState, this.$coroutineScope, this.$focused$delegate, null);
                id3 id3Var = new id3() { // from class: androidx.compose.material3.SearchBarDefaults$InputField$9$1.3
                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((CharSequence) obj2, (e02<? super j59>) e02Var);
                    }

                    public final Object emit(CharSequence charSequence, e02<? super j59> e02Var) {
                        return j59.a;
                    }
                };
                this.label = 1;
                Object objCollect = hd3VarSnapshotFlow.collect(new df3.a(id3Var, anonymousClass2), this);
                if (objCollect != a32Var) {
                    objCollect = j59.a;
                }
                if (objCollect == a32Var) {
                    return a32Var;
                }
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
