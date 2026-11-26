package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SearchBarKt$ExpandedDockedSearchBar$2$1$1", f = "SearchBar.kt", l = {455}, m = "invokeSuspend")
public final class SearchBarKt$ExpandedDockedSearchBar$2$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ SearchBarState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarKt$ExpandedDockedSearchBar$2$1$1(SearchBarState searchBarState, e02<? super SearchBarKt$ExpandedDockedSearchBar$2$1$1> e02Var) {
        super(2, e02Var);
        this.$state = searchBarState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SearchBarKt$ExpandedDockedSearchBar$2$1$1(this.$state, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SearchBarKt$ExpandedDockedSearchBar$2$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            SearchBarState searchBarState = this.$state;
            this.label = 1;
            if (searchBarState.animateToCollapsed(this) == a32Var) {
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
