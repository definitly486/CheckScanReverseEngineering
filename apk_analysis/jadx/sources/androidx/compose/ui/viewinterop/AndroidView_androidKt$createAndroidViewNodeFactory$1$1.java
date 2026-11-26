package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$createAndroidViewNodeFactory$1$1 extends gh4 implements ll3<LayoutNode> {
    final /* synthetic */ int $compositeKeyHash;
    final /* synthetic */ Context $context;
    final /* synthetic */ nl3<Context, T> $factory;
    final /* synthetic */ View $ownerView;
    final /* synthetic */ CompositionContext $parentReference;
    final /* synthetic */ SaveableStateRegistry $stateRegistry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidView_androidKt$createAndroidViewNodeFactory$1$1(Context context, nl3<? super Context, ? extends T> nl3Var, CompositionContext compositionContext, SaveableStateRegistry saveableStateRegistry, int i, View view) {
        super(0);
        this.$context = context;
        this.$factory = nl3Var;
        this.$parentReference = compositionContext;
        this.$stateRegistry = saveableStateRegistry;
        this.$compositeKeyHash = i;
        this.$ownerView = view;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final LayoutNode invoke() {
        Context context = this.$context;
        nl3<Context, T> nl3Var = this.$factory;
        CompositionContext compositionContext = this.$parentReference;
        SaveableStateRegistry saveableStateRegistry = this.$stateRegistry;
        int i = this.$compositeKeyHash;
        KeyEvent.Callback callback = this.$ownerView;
        callback.getClass();
        return new ViewFactoryHolder(context, nl3Var, compositionContext, saveableStateRegistry, i, (Owner) callback).getLayoutNode();
    }
}
