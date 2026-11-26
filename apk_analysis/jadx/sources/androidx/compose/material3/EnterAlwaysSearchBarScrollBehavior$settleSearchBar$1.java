package androidx.compose.material3;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior", f = "SearchBar.kt", l = {972, 986}, m = "settleSearchBar-OhffZ5M")
public final class EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1 extends f02 {
    float F$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ EnterAlwaysSearchBarScrollBehavior this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1(EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, e02<? super EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1> e02Var) {
        super(e02Var);
        this.this$0 = enterAlwaysSearchBarScrollBehavior;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m3426settleSearchBarOhffZ5M(0.0f, this);
    }
}
