package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.content.ContextCompat;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes3.dex */
public final class zw1 implements qm5 {
    public final Context a;
    public final hd3<Boolean> b;

    @bd2(c = "com.warefly.checkscan.core.util.ConnectivityManagerNetworkMonitor$isOnline$1", f = "ConnectivityManagerNetworkMonitor.kt", l = {RectListKt.BitOffsetForFocusable}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<ug6<? super Boolean>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;

        /* JADX INFO: renamed from: zw1$a$a, reason: collision with other inner class name */
        public static final class C0376a extends gh4 implements ll3<j59> {
            public final /* synthetic */ ConnectivityManager f;
            public final /* synthetic */ b g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0376a(ConnectivityManager connectivityManager, b bVar) {
                super(0);
                this.f = connectivityManager;
                this.g = bVar;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.unregisterNetworkCallback(this.g);
                return j59.a;
            }
        }

        public static final class b extends ConnectivityManager.NetworkCallback {
            public final LinkedHashSet a = new LinkedHashSet();
            public final /* synthetic */ ug6<Boolean> b;

            /* JADX WARN: Multi-variable type inference failed */
            public b(ug6<? super Boolean> ug6Var) {
                this.b = ug6Var;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                network.getClass();
                this.a.add(network);
                ((a91) this.b.getChannel()).mo0trySendJP2dKIU(Boolean.TRUE);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                network.getClass();
                LinkedHashSet linkedHashSet = this.a;
                linkedHashSet.remove(network);
                ((a91) this.b.getChannel()).mo0trySendJP2dKIU(Boolean.valueOf(!linkedHashSet.isEmpty()));
            }
        }

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = zw1.this.new a(e02Var);
            aVar.m = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super Boolean> ug6Var, e02<? super j59> e02Var) {
            return ((a) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            NetworkCapabilities networkCapabilities;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                ug6 ug6Var = (ug6) this.m;
                ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(zw1.this.a, ConnectivityManager.class);
                if (connectivityManager == null) {
                    ((a91) ug6Var.getChannel()).mo0trySendJP2dKIU(Boolean.FALSE);
                    ((tg6) ug6Var).close(null);
                    return j59.a;
                }
                b bVar = new b(ug6Var);
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), bVar);
                no7 channel = ug6Var.getChannel();
                Network activeNetwork = connectivityManager.getActiveNetwork();
                ((a91) channel).mo0trySendJP2dKIU(Boolean.valueOf((activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) ? false : networkCapabilities.hasCapability(12)));
                C0376a c0376a = new C0376a(connectivityManager, bVar);
                this.l = 1;
                if (sg6.a(ug6Var, c0376a, this) == a32Var) {
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

    public zw1(Context context, r22 r22Var) {
        this.a = context;
        this.b = ud3.a(ud3.b(s0.a(new a(null)), r22Var), -1);
    }

    @Override // defpackage.qm5
    public final hd3<Boolean> a() {
        return this.b;
    }
}
