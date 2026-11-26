package defpackage;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ji9 extends jc3 {
    public static final cl4 e;
    public static final cl4 f;
    public static final WeakHashMap<Window, WeakReference<ji9>> g;
    public static final Object h;
    public final wl7 c;
    public final Window.Callback d;

    public static final class a extends gh4 implements ll3<Field> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Field invoke() {
            Class cls = (Class) ji9.e.getValue();
            if (cls == null) {
                return null;
            }
            try {
                Field declaredField = cls.getDeclaredField("mWrapped");
                declaredField.setAccessible(true);
                return declaredField;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static final class b extends gh4 implements ll3<Class<? extends Object>> {
        public static final b f = new b(0);

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:96)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:62)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:422)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:57)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
            */
        @Override // defpackage.ll3
        public final java.lang.Class<? extends java.lang.Object> invoke() {
            /*
                r0 = this;
                java.lang.Class<androidx.appcompat.view.WindowCallbackWrapper> r0 = androidx.appcompat.view.WindowCallbackWrapper.class
                return r0
            L3:
                java.lang.String r0 = "android.support.v7.view.WindowCallbackWrapper"
                java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> La
                goto Lb
            La:
                r0 = 0
            Lb:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ji9.b.invoke():java.lang.Object");
        }
    }

    public static final class c {
        public static wl7 a(Window window) {
            wl7 wl7Var;
            synchronized (ji9.h) {
                try {
                    WeakHashMap<Window, WeakReference<ji9>> weakHashMap = ji9.g;
                    WeakReference<ji9> weakReference = weakHashMap.get(window);
                    ji9 ji9Var = weakReference != null ? weakReference.get() : null;
                    if (ji9Var != null) {
                        return ji9Var.c;
                    }
                    Window.Callback callback = window.getCallback();
                    if (callback == null) {
                        wl7Var = new wl7();
                    } else {
                        ji9 ji9Var2 = new ji9(callback);
                        window.setCallback(ji9Var2);
                        weakHashMap.put(window, new WeakReference<>(ji9Var2));
                        wl7Var = ji9Var2.c;
                    }
                    return wl7Var;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class d implements nl3<MotionEvent, eo2> {
        public final /* synthetic */ Iterator c;

        public d(Iterator it) {
            this.c = it;
        }

        @Override // defpackage.nl3
        public final eo2 invoke(MotionEvent motionEvent) {
            MotionEvent motionEvent2 = motionEvent;
            motionEvent2.getClass();
            Iterator it = this.c;
            if (it.hasNext()) {
                return ((iy8) it.next()).a(motionEvent2, this);
            }
            eo2.b bVar = eo2.a;
            return ji9.this.d.dispatchTouchEvent(motionEvent2) ? eo2.a.b : eo2.a;
        }
    }

    static {
        po4 po4Var = po4.NONE;
        e = nm4.a(po4Var, b.f);
        f = nm4.a(po4Var, a.f);
        g = new WeakHashMap<>();
        h = new Object();
    }

    public ji9(Window.Callback callback) {
        super(callback);
        this.d = callback;
        this.c = new wl7();
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        eo2 eo2VarA;
        Window.Callback callback = this.d;
        if (keyEvent == null) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c.b).iterator();
        it.getClass();
        if (it.hasNext()) {
            eo2VarA = ((lf4) it.next()).a();
        } else {
            eo2.b bVar = eo2.a;
            eo2VarA = callback.dispatchKeyEvent(keyEvent) ? eo2.a.b : eo2.a;
        }
        return eo2VarA instanceof eo2.a;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        eo2 eo2VarA;
        Window.Callback callback = this.d;
        if (motionEvent == null) {
            return callback.dispatchTouchEvent(motionEvent);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c.a).iterator();
        it.getClass();
        d dVar = new d(it);
        if (it.hasNext()) {
            eo2VarA = ((iy8) it.next()).a(motionEvent, dVar);
        } else {
            eo2.b bVar = eo2.a;
            eo2VarA = callback.dispatchTouchEvent(motionEvent) ? eo2.a.b : eo2.a;
        }
        return eo2VarA instanceof eo2.a;
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        while (it.hasNext()) {
            ((yv5) it.next()).onContentChanged();
        }
        this.d.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        Iterator it = ((CopyOnWriteArrayList) this.c.d).iterator();
        while (it.hasNext()) {
            ((lw5) it.next()).a();
        }
        this.d.onWindowFocusChanged(z);
    }
}
