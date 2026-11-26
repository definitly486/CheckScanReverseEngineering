package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.hk;
import defpackage.j59;
import defpackage.l91;
import defpackage.lk;
import defpackage.ll3;
import defpackage.mk;
import defpackage.nk;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.pk;
import defpackage.r07;
import defpackage.r57;
import defpackage.x81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTextContextMenuToolbarProvider implements TextContextMenuProvider {
    public static final int $stable = 8;
    private ActionMode actionMode;
    private final nl3<TextActionModeCallback, TextActionModeCallback> callbackInjector;
    private final ll3<LayoutCoordinates> coordinatesProvider;
    private Runnable finishActionModeRunnable;
    private final nl3<Object, j59> onDataChange;
    private final nl3<Object, j59> onPositionChange;
    private Runnable startActionModeRunnable;
    private final View view;
    private final MutatorMutex mutatorMutex = new MutatorMutex();
    private final SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(new lk(this, 0));

    public static final class TextActionModeCallbackImpl implements TextActionModeCallback {
        private final ll3<TextContextMenuData> dataBuilder;
        private ll3<Rect> positioner;
        private TextContextMenuData previousData;
        private final TextContextMenuSession session;
        private final View view;

        public TextActionModeCallbackImpl(TextContextMenuSession textContextMenuSession, ll3<TextContextMenuData> ll3Var, ll3<Rect> ll3Var2, View view) {
            this.session = textContextMenuSession;
            this.dataBuilder = ll3Var;
            this.positioner = ll3Var2;
            this.view = view;
        }

        private final boolean updateMenuItems(Menu menu) {
            int i;
            TextContextMenuData textContextMenuDataInvoke = this.dataBuilder.invoke();
            if (aa4.e(textContextMenuDataInvoke, this.previousData)) {
                return false;
            }
            menu.clear();
            List<TextContextMenuComponent> components = textContextMenuDataInvoke.getComponents();
            int size = components.size();
            int i2 = 1;
            int i3 = 1;
            for (int i4 = 0; i4 < size; i4++) {
                TextContextMenuComponent textContextMenuComponent = components.get(i4);
                if (textContextMenuComponent instanceof TextContextMenuItem) {
                    int i5 = i2 + 1;
                    Object key = textContextMenuComponent.getKey();
                    TextContextMenuKeys textContextMenuKeys = TextContextMenuKeys.INSTANCE;
                    if (aa4.e(key, textContextMenuKeys.getCutKey())) {
                        i = R.id.cut;
                    } else if (aa4.e(key, textContextMenuKeys.getCopyKey())) {
                        i = R.id.copy;
                    } else if (aa4.e(key, textContextMenuKeys.getPasteKey())) {
                        i = R.id.paste;
                    } else if (aa4.e(key, textContextMenuKeys.getSelectAllKey())) {
                        i = R.id.selectAll;
                    } else {
                        i = aa4.e(key, textContextMenuKeys.getAutofillKey()) ? R.id.autofill : i2;
                    }
                    final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                    MenuItem menuItemAdd = menu.add(i3, i, i2, textContextMenuItem.getLabel());
                    menuItemAdd.setShowAsAction(2);
                    menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.a
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            return AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl.updateMenuItems$lambda$0$0(textContextMenuItem, this, menuItem);
                        }
                    });
                    i2 = i5;
                } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                        TextToolbarHelperApi28.INSTANCE.addMenuItem(menu, i2, this.view.getContext(), textContextMenuTextClassificationItem.getTextClassification(), textContextMenuTextClassificationItem.getIndex());
                        i2++;
                    }
                } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                    i3++;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean updateMenuItems$lambda$0$0(TextContextMenuComponent textContextMenuComponent, TextActionModeCallbackImpl textActionModeCallbackImpl, MenuItem menuItem) {
            ((TextContextMenuItem) textContextMenuComponent).getOnClick().invoke(textActionModeCallbackImpl.session);
            return true;
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            updateMenuItems(menu);
            return menu.size() > 0;
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.session.close();
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public Rect onGetContentRect(ActionMode actionMode, View view) {
            return this.positioner.invoke();
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return updateMenuItems(menu);
        }
    }

    public static final class TextContextMenuSessionImpl implements TextContextMenuSession {
        private final x81<j59> channel = l91.a(0, null, null, 7);

        public final Object awaitClose(e02<? super j59> e02Var) {
            Object objB = this.channel.b(e02Var);
            return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public void close() {
            this.channel.mo0trySendJP2dKIU(j59.a);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider$showTextContextMenu$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider$showTextContextMenu$2", f = "AndroidTextContextMenuToolbarProvider.android.kt", l = {182}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ TextContextMenuDataProvider $dataProvider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(TextContextMenuDataProvider textContextMenuDataProvider, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$dataProvider = textContextMenuDataProvider;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextActionModeCallback textActionModeCallback, TextContextMenuSessionImpl textContextMenuSessionImpl) {
            ActionMode actionModeStartActionMode = TextToolbarHelper.INSTANCE.startActionMode(androidTextContextMenuToolbarProvider.view, textActionModeCallback);
            aa4.e(androidTextContextMenuToolbarProvider.actionMode, actionModeStartActionMode);
            if (actionModeStartActionMode == null) {
                textContextMenuSessionImpl.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$2(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider) {
            ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
            if (actionMode != null) {
                actionMode.finish();
            }
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return AndroidTextContextMenuToolbarProvider.this.new AnonymousClass2(this.$dataProvider, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    final TextContextMenuSessionImpl textContextMenuSessionImpl = new TextContextMenuSessionImpl();
                    final TextActionModeCallback textActionModeCallbackCreateActionModeCallback = AndroidTextContextMenuToolbarProvider.this.createActionModeCallback(textContextMenuSessionImpl, this.$dataProvider);
                    Looper looperMyLooper = Looper.myLooper();
                    Handler handler = AndroidTextContextMenuToolbarProvider.this.view.getHandler();
                    Looper looper = handler != null ? handler.getLooper() : null;
                    AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = AndroidTextContextMenuToolbarProvider.this;
                    if (looperMyLooper != looper) {
                        Runnable runnable = androidTextContextMenuToolbarProvider.startActionModeRunnable;
                        if (runnable == null) {
                            final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider2 = AndroidTextContextMenuToolbarProvider.this;
                            Runnable runnable2 = new Runnable() { // from class: androidx.compose.foundation.text.contextmenu.internal.b
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AndroidTextContextMenuToolbarProvider.AnonymousClass2.invokeSuspend$lambda$0(androidTextContextMenuToolbarProvider2, textActionModeCallbackCreateActionModeCallback, textContextMenuSessionImpl);
                                }
                            };
                            androidTextContextMenuToolbarProvider2.startActionModeRunnable = runnable2;
                            runnable = runnable2;
                        }
                        AndroidTextContextMenuToolbarProvider.this.view.post(runnable);
                    } else {
                        ActionMode actionModeStartActionMode = TextToolbarHelper.INSTANCE.startActionMode(androidTextContextMenuToolbarProvider.view, textActionModeCallbackCreateActionModeCallback);
                        if (actionModeStartActionMode == null) {
                            return j59.a;
                        }
                        androidTextContextMenuToolbarProvider.actionMode = actionModeStartActionMode;
                    }
                    this.label = 1;
                    if (textContextMenuSessionImpl.awaitClose(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                AndroidTextContextMenuToolbarProvider.this.snapshotStateObserver.clear();
                Looper looperMyLooper2 = Looper.myLooper();
                Handler handler2 = AndroidTextContextMenuToolbarProvider.this.view.getHandler();
                Looper looper2 = handler2 != null ? handler2.getLooper() : null;
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider3 = AndroidTextContextMenuToolbarProvider.this;
                if (looperMyLooper2 != looper2) {
                    Runnable runnable3 = androidTextContextMenuToolbarProvider3.finishActionModeRunnable;
                    if (runnable3 == null) {
                        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider4 = AndroidTextContextMenuToolbarProvider.this;
                        Runnable runnable4 = new Runnable() { // from class: androidx.compose.foundation.text.contextmenu.internal.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                AndroidTextContextMenuToolbarProvider.AnonymousClass2.invokeSuspend$lambda$2(androidTextContextMenuToolbarProvider4);
                            }
                        };
                        androidTextContextMenuToolbarProvider4.finishActionModeRunnable = runnable4;
                        runnable3 = runnable4;
                    }
                    AndroidTextContextMenuToolbarProvider.this.view.post(runnable3);
                } else {
                    ActionMode actionMode = androidTextContextMenuToolbarProvider3.actionMode;
                    if (actionMode != null) {
                        actionMode.finish();
                    }
                }
                Runnable runnable5 = AndroidTextContextMenuToolbarProvider.this.startActionModeRunnable;
                if (runnable5 != null) {
                    AndroidTextContextMenuToolbarProvider.this.view.removeCallbacks(runnable5);
                }
                AndroidTextContextMenuToolbarProvider.this.actionMode = null;
                return j59.a;
            } catch (Throwable th) {
                AndroidTextContextMenuToolbarProvider.this.snapshotStateObserver.clear();
                Looper looperMyLooper3 = Looper.myLooper();
                Handler handler3 = AndroidTextContextMenuToolbarProvider.this.view.getHandler();
                Looper looper3 = handler3 != null ? handler3.getLooper() : null;
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider5 = AndroidTextContextMenuToolbarProvider.this;
                if (looperMyLooper3 != looper3) {
                    Runnable runnable6 = androidTextContextMenuToolbarProvider5.finishActionModeRunnable;
                    if (runnable6 == null) {
                        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider6 = AndroidTextContextMenuToolbarProvider.this;
                        Runnable runnable7 = new Runnable() { // from class: androidx.compose.foundation.text.contextmenu.internal.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                AndroidTextContextMenuToolbarProvider.AnonymousClass2.invokeSuspend$lambda$2(androidTextContextMenuToolbarProvider6);
                            }
                        };
                        androidTextContextMenuToolbarProvider6.finishActionModeRunnable = runnable7;
                        runnable6 = runnable7;
                    }
                    AndroidTextContextMenuToolbarProvider.this.view.post(runnable6);
                } else {
                    ActionMode actionMode2 = androidTextContextMenuToolbarProvider5.actionMode;
                    if (actionMode2 != null) {
                        actionMode2.finish();
                    }
                }
                Runnable runnable8 = AndroidTextContextMenuToolbarProvider.this.startActionModeRunnable;
                if (runnable8 != null) {
                    AndroidTextContextMenuToolbarProvider.this.view.removeCallbacks(runnable8);
                }
                AndroidTextContextMenuToolbarProvider.this.actionMode = null;
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidTextContextMenuToolbarProvider(View view, nl3<? super TextActionModeCallback, ? extends TextActionModeCallback> nl3Var, ll3<? extends LayoutCoordinates> ll3Var) {
        this.view = view;
        this.callbackInjector = nl3Var;
        this.coordinatesProvider = ll3Var;
        int i = 0;
        this.onDataChange = new mk(this, i);
        this.onPositionChange = new nk(this, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextActionModeCallback createActionModeCallback(TextContextMenuSessionImpl textContextMenuSessionImpl, final TextContextMenuDataProvider textContextMenuDataProvider) {
        TextActionModeCallback textActionModeCallbackInvoke;
        TextActionModeCallbackImpl textActionModeCallbackImpl = new TextActionModeCallbackImpl(textContextMenuSessionImpl, new ll3() { // from class: ik
            @Override // defpackage.ll3
            public final Object invoke() {
                return this.b.observeAndGetData(textContextMenuDataProvider);
            }
        }, new ll3() { // from class: jk
            @Override // defpackage.ll3
            public final Object invoke() {
                return this.b.observeAndGetBounds(textContextMenuDataProvider);
            }
        }, this.view);
        nl3<TextActionModeCallback, TextActionModeCallback> nl3Var = this.callbackInjector;
        return (nl3Var == null || (textActionModeCallbackInvoke = nl3Var.invoke(textActionModeCallbackImpl)) == null) ? textActionModeCallbackImpl : textActionModeCallbackInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Rect observeAndGetBounds(final TextContextMenuDataProvider textContextMenuDataProvider) {
        return (Rect) observeReadsAndGet("positioner", this.onPositionChange, new ll3() { // from class: ok
            @Override // defpackage.ll3
            public final Object invoke() {
                return AndroidTextContextMenuToolbarProvider.observeAndGetBounds$lambda$0(this.b, textContextMenuDataProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect observeAndGetBounds$lambda$0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextContextMenuDataProvider textContextMenuDataProvider) {
        LayoutCoordinates layoutCoordinatesInvoke = androidTextContextMenuToolbarProvider.coordinatesProvider.invoke();
        if (!layoutCoordinatesInvoke.isAttached()) {
            layoutCoordinatesInvoke = null;
        }
        LayoutCoordinates layoutCoordinates = layoutCoordinatesInvoke;
        return layoutCoordinates == null ? Rect.Companion.getZero() : textContextMenuDataProvider.contentBounds(layoutCoordinates).m6024translatek4lQ0M(LayoutCoordinatesKt.positionInRoot(layoutCoordinates));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextContextMenuData observeAndGetData(TextContextMenuDataProvider textContextMenuDataProvider) {
        return (TextContextMenuData) observeReadsAndGet("dataBuilder", this.onDataChange, new hk(textContextMenuDataProvider, 0));
    }

    private final <T, S> T observeReadsAndGet(S s, nl3<? super S, j59> nl3Var, final ll3<? extends T> ll3Var) {
        final r07 r07Var = new r07();
        this.snapshotStateObserver.observeReads(s, nl3Var, new ll3() { // from class: kk
            @Override // defpackage.ll3
            public final Object invoke() {
                return AndroidTextContextMenuToolbarProvider.observeReadsAndGet$lambda$0(r07Var, ll3Var);
            }
        });
        T t = r07Var.b;
        if (t != null) {
            return t;
        }
        aa4.j("result");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
    public static final j59 observeReadsAndGet$lambda$0(r07 r07Var, ll3 ll3Var) {
        r07Var.b = ll3Var.invoke();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onDataChange$lambda$0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, Object obj) {
        ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
        if (actionMode != null) {
            actionMode.invalidate();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onPositionChange$lambda$0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, Object obj) {
        ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
        if (actionMode != null) {
            TextToolbarHelper.INSTANCE.invalidateContentRect(actionMode);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 snapshotStateObserver$lambda$0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, ll3 ll3Var) {
        Handler handler = androidTextContextMenuToolbarProvider.view.getHandler();
        if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
            ll3Var.invoke();
        } else {
            Handler handler2 = androidTextContextMenuToolbarProvider.view.getHandler();
            if (handler2 != null) {
                handler2.post(new pk(ll3Var, 0));
            }
        }
        return j59.a;
    }

    public final void dispose() {
        this.snapshotStateObserver.stop();
        this.snapshotStateObserver.clear();
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.actionMode = null;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public Object showTextContextMenu(TextContextMenuDataProvider textContextMenuDataProvider, e02<? super j59> e02Var) {
        Object objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new AnonymousClass2(textContextMenuDataProvider, null), e02Var, 1, null);
        return objMutate$default == a32.COROUTINE_SUSPENDED ? objMutate$default : j59.a;
    }

    public final void start() {
        this.snapshotStateObserver.start();
    }
}
