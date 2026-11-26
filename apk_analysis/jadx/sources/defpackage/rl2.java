package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rl2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rl2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return DependencyDao_Impl.insertDependency$lambda$0((DependencyDao_Impl) obj3, (Dependency) obj2, (SQLiteConnection) obj);
            case 1:
                return RadioButtonKt.RadioButton$lambda$1$lambda$0((State) obj3, (State) obj2, (DrawScope) obj);
            default:
                return TransitionKt.createChildTransitionInternal$lambda$1$0((Transition) obj3, (Transition) obj2, (DisposableEffectScope) obj);
        }
    }
}
