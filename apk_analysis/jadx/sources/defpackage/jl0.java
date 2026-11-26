package defpackage;

import android.app.usage.UsageStatsManager;
import android.location.LocationManager;
import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.material.search.SearchView;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.JsonIOException;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.C1218r2;
import io.appmetrica.analytics.impl.J2;
import io.appmetrica.analytics.location.impl.r;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jl0 implements xl3, mq5, FirebaseInstanceIdInternal.NewTokenListener, FunctionWithThrowable, OnApplyWindowInsetsListener, ListenerSet.IterationFinishedEvent {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jl0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            case 1:
                return ((c61) obj2).invoke(obj);
            case 2:
            case 3:
            default:
                return r.a((r) obj2, (LocationManager) obj);
            case 4:
                return J2.a((C1218r2) obj2, (UsageStatsManager) obj);
            case 5:
                return (us5) ((ps5) obj2).invoke(obj);
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        Type type = (Type) this.c;
        if (!(type instanceof ParameterizedType)) {
            throw new JsonIOException("Invalid EnumSet type: " + type);
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new JsonIOException("Invalid EnumSet type: " + type);
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((SimpleBasePlayer) this.c).lambda$new$0((Player.Listener) obj, flagSet);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return ((SearchView) this.c).lambda$setUpStatusBarSpacerInsetListener$6(view, windowInsetsCompat);
    }

    @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal.NewTokenListener
    public void onNewToken(String str) {
        ((FirebaseMessaging) this.c).lambda$new$1(str);
    }
}
