package defpackage;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentRuntime;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class jb5 {
    public static final Object b = new Object();
    public static jb5 c;
    public ComponentRuntime a;

    public static jb5 c() {
        jb5 jb5Var;
        synchronized (b) {
            Preconditions.checkState(c != null, "MlKitContext has not been initialized");
            jb5Var = (jb5) Preconditions.checkNotNull(c);
        }
        return jb5Var;
    }

    public static jb5 d(Context context, Executor executor) {
        jb5 jb5Var;
        synchronized (b) {
            Preconditions.checkState(c == null, "MlKitContext is already initialized");
            jb5 jb5Var2 = new jb5();
            c = jb5Var2;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            ComponentRuntime componentRuntimeBuild = ComponentRuntime.builder(executor).addLazyComponentRegistrars(ComponentDiscovery.forContext(context, MlKitComponentDiscoveryService.class).discoverLazy()).addComponent(Component.of(context, (Class<Context>) Context.class, (Class<? super Context>[]) new Class[0])).addComponent(Component.of(jb5Var2, (Class<jb5>) jb5.class, (Class<? super jb5>[]) new Class[0])).build();
            jb5Var2.a = componentRuntimeBuild;
            componentRuntimeBuild.initializeEagerComponents(true);
            jb5Var = c;
        }
        return jb5Var;
    }

    public final <T> T a(Class<T> cls) {
        Preconditions.checkState(c == this, "MlKitContext has been deleted");
        Preconditions.checkNotNull(this.a);
        return (T) this.a.get(cls);
    }

    public final Context b() {
        return (Context) a(Context.class);
    }
}
