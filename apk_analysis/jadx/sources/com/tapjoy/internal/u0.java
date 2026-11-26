package com.tapjoy.internal;

import android.os.SystemClock;
import com.tapjoy.TJError;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyLog;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 implements Observer, TJPlacementListener {
    public final t2 a;
    public volatile boolean b;
    public TJPlacement c;
    public final /* synthetic */ v0 d;

    public u0(v0 v0Var) {
        t2 t2Var = new t2(10000L);
        this.d = v0Var;
        this.a = t2Var;
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.b) {
                    return;
                }
                t2 t2Var = this.a;
                t2Var.getClass();
                try {
                    if (SystemClock.elapsedRealtime() - t2Var.b <= t2Var.a) {
                        if (!TapjoyConnectCore.getInstance().isConnected()) {
                            r rVar = s.a;
                            rVar.addObserver(this);
                            if (!TapjoyConnectCore.getInstance().isConnected()) {
                                return;
                            } else {
                                rVar.deleteObserver(this);
                            }
                        }
                        TJPlacement tJPlacement = this.c;
                        if (tJPlacement == null) {
                            if (!this.d.a()) {
                                a("Cannot request");
                                return;
                            }
                            TJPlacement tJPlacementA = this.d.a(TapjoyConnectCore.getInstance().getContext(), this);
                            this.c = tJPlacementA;
                            tJPlacementA.requestContent();
                            return;
                        }
                        if (tJPlacement.isContentReady()) {
                            this.d.getClass();
                            if (TapjoyConnectCore.getInstance().isViewOpen()) {
                                r rVar2 = s.d;
                                rVar2.addObserver(this);
                                if (TapjoyConnectCore.getInstance().isViewOpen()) {
                                    return;
                                } else {
                                    rVar2.deleteObserver(this);
                                }
                            }
                            this.c.showContent();
                            a(null);
                            return;
                        }
                        return;
                    }
                } catch (NullPointerException unused) {
                }
                a("Timed out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentDismiss(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentReady(TJPlacement tJPlacement) {
        a();
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentShow(TJPlacement tJPlacement) {
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestFailure(TJPlacement tJPlacement, TJError tJError) {
        a(tJError.message);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestSuccess(TJPlacement tJPlacement) {
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        a();
    }

    public final void a(String str) {
        synchronized (this) {
            try {
                String strB = this.d.b();
                if (str == null) {
                    TapjoyLog.d("Placement " + strB + " is presented now");
                } else {
                    TapjoyLog.d("Cannot show placement " + strB + " now (" + str + ")");
                }
                this.b = true;
                this.c = null;
                s.a.deleteObserver(this);
                s.d.deleteObserver(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.d.a(this);
    }
}
