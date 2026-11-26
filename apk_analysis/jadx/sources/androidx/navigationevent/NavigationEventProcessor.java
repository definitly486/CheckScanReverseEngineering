package androidx.navigationevent;

import defpackage.aa4;
import defpackage.bf3;
import defpackage.fg;
import defpackage.fr;
import defpackage.h8;
import defpackage.jh;
import defpackage.nl3;
import defpackage.px;
import defpackage.xg5;
import defpackage.y68;
import defpackage.z68;
import defpackage.zc5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEventProcessor {
    private final xg5<NavigationEventHistory> _history;
    private final xg5<NavigationEventTransitionState> _transitionState;
    private final fr<NavigationEventHandler<?>> defaultHandlers;
    private final Set<NavigationEventInput> defaultInputs;
    private boolean hasEnabledAnyHandlers;
    private boolean hasEnabledDefaultHandlers;
    private boolean hasEnabledOverlayHandlers;
    private final y68<NavigationEventHistory> history;
    private int inProgressDirection;
    private NavigationEventHandler<?> inProgressHandler;
    private NavigationEventInput inProgressInput;
    private final fr<NavigationEventHandler<?>> overlayHandlers;
    private final Set<NavigationEventInput> overlayInputs;
    private final y68<NavigationEventTransitionState> transitionState;
    private final Set<NavigationEventInput> unspecifiedInputs;

    public NavigationEventProcessor() {
        z68 z68VarA = px.a(NavigationEventTransitionState.Idle.INSTANCE);
        this._transitionState = z68VarA;
        this.transitionState = bf3.b(z68VarA);
        z68 z68VarA2 = px.a(new NavigationEventHistory());
        this._history = z68VarA2;
        this.history = bf3.b(z68VarA2);
        this.overlayHandlers = new fr<>();
        this.defaultHandlers = new fr<>();
        this.unspecifiedInputs = new LinkedHashSet();
        this.defaultInputs = new LinkedHashSet();
        this.overlayInputs = new LinkedHashSet();
    }

    public static /* synthetic */ void addHandler$default(NavigationEventProcessor navigationEventProcessor, NavigationEventDispatcher navigationEventDispatcher, NavigationEventHandler navigationEventHandler, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 1;
        }
        navigationEventProcessor.addHandler(navigationEventDispatcher, navigationEventHandler, i);
    }

    public static /* synthetic */ void dispatchOnStarted$default(NavigationEventProcessor navigationEventProcessor, NavigationEventInput navigationEventInput, int i, NavigationEvent navigationEvent, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            navigationEvent = null;
        }
        navigationEventProcessor.dispatchOnStarted(navigationEventInput, i, navigationEvent);
    }

    private final NavigationEventHandler<?> findHandler(nl3<? super NavigationEventHandler<?>, Boolean> nl3Var) {
        NavigationEventHandler<?> navigationEventHandler;
        NavigationEventHandler<?> next;
        Iterator<NavigationEventHandler<?>> it = this.overlayHandlers.iterator();
        do {
            navigationEventHandler = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!nl3Var.invoke(next).booleanValue());
        NavigationEventHandler<?> navigationEventHandler2 = next;
        if (navigationEventHandler2 != null) {
            return navigationEventHandler2;
        }
        for (NavigationEventHandler<?> navigationEventHandler3 : this.defaultHandlers) {
            if (nl3Var.invoke(navigationEventHandler3).booleanValue()) {
                navigationEventHandler = navigationEventHandler3;
                break;
            }
        }
        return navigationEventHandler;
    }

    private static /* synthetic */ void getInProgressDirection$annotations() {
    }

    private final List<NavigationEventInfo> resolveCombinedBackInfo() {
        ArrayList arrayList = new ArrayList();
        for (NavigationEventHandler<?> navigationEventHandler : this.overlayHandlers) {
            if (navigationEventHandler.isBackEnabled() && !navigationEventHandler.getBackInfo().isEmpty()) {
                arrayList.addAll(navigationEventHandler.getBackInfo());
            }
        }
        for (NavigationEventHandler<?> navigationEventHandler2 : this.defaultHandlers) {
            if (navigationEventHandler2.isBackEnabled() && !navigationEventHandler2.getBackInfo().isEmpty()) {
                arrayList.addAll(navigationEventHandler2.getBackInfo());
            }
        }
        return arrayList;
    }

    private final NavigationEventHandler<?> resolveEnabledHandler(int i) {
        NavigationEventHandler<?> next;
        NavigationEventHandler<?> next2;
        NavigationEventHandler<?> navigationEventHandler;
        NavigationEventHandler<?> next3;
        NavigationEventHandler<?> navigationEventHandler2 = null;
        if (i == -1) {
            Iterator<NavigationEventHandler<?>> it = this.overlayHandlers.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!next.isBackEnabled());
            NavigationEventHandler<?> navigationEventHandler3 = next;
            if (navigationEventHandler3 != null) {
                return navigationEventHandler3;
            }
            for (NavigationEventHandler<?> navigationEventHandler4 : this.defaultHandlers) {
                if (navigationEventHandler4.isBackEnabled()) {
                    navigationEventHandler2 = navigationEventHandler4;
                    break;
                }
            }
            return navigationEventHandler2;
        }
        if (i != 0) {
            if (i != 1) {
                zc5.d("'.", "Unsupported direction: '", i);
                return null;
            }
            Iterator<NavigationEventHandler<?>> it2 = this.overlayHandlers.iterator();
            do {
                if (!it2.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it2.next();
            } while (!next3.isForwardEnabled());
            NavigationEventHandler<?> navigationEventHandler5 = next3;
            if (navigationEventHandler5 != null) {
                return navigationEventHandler5;
            }
            for (NavigationEventHandler<?> navigationEventHandler6 : this.defaultHandlers) {
                if (navigationEventHandler6.isForwardEnabled()) {
                    navigationEventHandler2 = navigationEventHandler6;
                    break;
                }
            }
            return navigationEventHandler2;
        }
        Iterator<NavigationEventHandler<?>> it3 = this.overlayHandlers.iterator();
        do {
            if (!it3.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it3.next();
            navigationEventHandler = next2;
            if (navigationEventHandler.isBackEnabled()) {
                break;
            }
        } while (!navigationEventHandler.isForwardEnabled());
        NavigationEventHandler<?> navigationEventHandler7 = next2;
        if (navigationEventHandler7 != null) {
            return navigationEventHandler7;
        }
        for (NavigationEventHandler<?> navigationEventHandler8 : this.defaultHandlers) {
            NavigationEventHandler<?> navigationEventHandler9 = navigationEventHandler8;
            if (navigationEventHandler9.isBackEnabled() || navigationEventHandler9.isForwardEnabled()) {
                navigationEventHandler2 = navigationEventHandler8;
                break;
            }
        }
        return navigationEventHandler2;
    }

    public static /* synthetic */ NavigationEventHandler resolveEnabledHandler$default(NavigationEventProcessor navigationEventProcessor, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return navigationEventProcessor.resolveEnabledHandler(i);
    }

    public final void addHandler(NavigationEventDispatcher navigationEventDispatcher, NavigationEventHandler<?> navigationEventHandler, int i) {
        navigationEventDispatcher.getClass();
        navigationEventHandler.getClass();
        if (navigationEventHandler.getDispatcher$navigationevent() != null) {
            h8.f(navigationEventHandler, "Handler '", "' is already registered with a dispatcher");
            return;
        }
        if (i == 0) {
            this.overlayHandlers.addFirst(navigationEventHandler);
        } else {
            if (i != 1) {
                fg.c(jh.b(i, "Unsupported priority value: "));
                return;
            }
            this.defaultHandlers.addFirst(navigationEventHandler);
        }
        navigationEventHandler.setDispatcher$navigationevent(navigationEventDispatcher);
        refreshEnabledHandlers();
    }

    public final void addInput(NavigationEventDispatcher navigationEventDispatcher, NavigationEventInput navigationEventInput, int i) {
        Set<NavigationEventInput> set;
        boolean z;
        navigationEventDispatcher.getClass();
        navigationEventInput.getClass();
        if (navigationEventInput.getDispatcher$navigationevent() != null) {
            StringBuilder sb = new StringBuilder("Input '");
            sb.append(navigationEventInput);
            NavigationEventDispatcher dispatcher$navigationevent = navigationEventInput.getDispatcher$navigationevent();
            sb.append("' is already added to dispatcher ");
            sb.append(dispatcher$navigationevent);
            sb.append('.');
            throw new IllegalArgumentException(sb.toString().toString());
        }
        if (i != 0) {
            set = i != 1 ? this.unspecifiedInputs : this.defaultInputs;
        } else {
            set = this.overlayInputs;
        }
        set.add(navigationEventInput);
        navigationEventInput.setDispatcher$navigationevent(navigationEventDispatcher);
        navigationEventInput.doOnAdded$navigationevent(navigationEventDispatcher);
        navigationEventInput.doOnHistoryChanged$navigationevent(this.history.getValue());
        if (i != 0) {
            z = i != 1 ? this.hasEnabledAnyHandlers : this.hasEnabledDefaultHandlers;
        } else {
            z = this.hasEnabledOverlayHandlers;
        }
        navigationEventInput.doOnHasEnabledHandlersChanged$navigationevent(z);
    }

    public final void dispatchOnCancelled(NavigationEventInput navigationEventInput, int i) {
        navigationEventInput.getClass();
        if (navigationEventInput.equals(this.inProgressInput) && i == this.inProgressDirection) {
            NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler = this.inProgressHandler;
            if (navigationEventHandlerResolveEnabledHandler == null) {
                navigationEventHandlerResolveEnabledHandler = resolveEnabledHandler(i);
            }
            this.inProgressHandler = null;
            this.inProgressDirection = 0;
            this.inProgressInput = null;
            if (i != -1) {
                if (i == 1 && navigationEventHandlerResolveEnabledHandler != null) {
                    navigationEventHandlerResolveEnabledHandler.doOnForwardCancelled$navigationevent();
                }
            } else if (navigationEventHandlerResolveEnabledHandler != null) {
                navigationEventHandlerResolveEnabledHandler.doOnBackCancelled$navigationevent();
            }
            this._transitionState.setValue(NavigationEventTransitionState.Idle.INSTANCE);
        }
    }

    public final void dispatchOnCompleted(NavigationEventInput navigationEventInput, int i, OnBackCompletedFallback onBackCompletedFallback) {
        navigationEventInput.getClass();
        if (navigationEventInput.equals(this.inProgressInput) && i == this.inProgressDirection) {
            NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler = this.inProgressHandler;
            if (navigationEventHandlerResolveEnabledHandler == null) {
                navigationEventHandlerResolveEnabledHandler = resolveEnabledHandler(i);
            }
            this.inProgressHandler = null;
            this.inProgressDirection = 0;
            this.inProgressInput = null;
            if (i != -1) {
                if (i == 1 && navigationEventHandlerResolveEnabledHandler != null) {
                    navigationEventHandlerResolveEnabledHandler.doOnForwardCompleted$navigationevent();
                }
            } else if (navigationEventHandlerResolveEnabledHandler != null) {
                navigationEventHandlerResolveEnabledHandler.doOnBackCompleted$navigationevent();
            } else if (onBackCompletedFallback != null) {
                onBackCompletedFallback.onBackCompletedFallback();
            }
            this._transitionState.setValue(NavigationEventTransitionState.Idle.INSTANCE);
        }
    }

    public final void dispatchOnProgressed(NavigationEventInput navigationEventInput, int i, NavigationEvent navigationEvent) {
        navigationEventInput.getClass();
        navigationEvent.getClass();
        if (navigationEventInput.equals(this.inProgressInput) && i == this.inProgressDirection) {
            NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler = this.inProgressHandler;
            if (navigationEventHandlerResolveEnabledHandler == null) {
                navigationEventHandlerResolveEnabledHandler = resolveEnabledHandler(i);
            }
            if (i != -1) {
                if (i == 1 && navigationEventHandlerResolveEnabledHandler != null) {
                    navigationEventHandlerResolveEnabledHandler.doOnForwardProgressed$navigationevent(navigationEvent);
                }
            } else if (navigationEventHandlerResolveEnabledHandler != null) {
                navigationEventHandlerResolveEnabledHandler.doOnBackProgressed$navigationevent(navigationEvent);
            }
            this._transitionState.setValue(new NavigationEventTransitionState.InProgress(navigationEvent, i));
        }
    }

    public final void dispatchOnStarted(NavigationEventInput navigationEventInput, int i, NavigationEvent navigationEvent) {
        navigationEventInput.getClass();
        if (this.inProgressDirection != 0) {
            return;
        }
        NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler = resolveEnabledHandler(i);
        this.inProgressHandler = navigationEventHandlerResolveEnabledHandler;
        this.inProgressDirection = i;
        this.inProgressInput = navigationEventInput;
        if (navigationEvent != null) {
            if (i != -1) {
                if (i == 1 && navigationEventHandlerResolveEnabledHandler != null) {
                    navigationEventHandlerResolveEnabledHandler.doOnForwardStarted$navigationevent(navigationEvent);
                }
            } else if (navigationEventHandlerResolveEnabledHandler != null) {
                navigationEventHandlerResolveEnabledHandler.doOnBackStarted$navigationevent(navigationEvent);
            }
            this._transitionState.setValue(new NavigationEventTransitionState.InProgress(navigationEvent, i));
        }
    }

    public final y68<NavigationEventHistory> getHistory() {
        return this.history;
    }

    public final y68<NavigationEventTransitionState> getTransitionState() {
        return this.transitionState;
    }

    public final void refreshEnabledHandlers() {
        boolean z;
        boolean z2;
        fr<NavigationEventHandler<?>> frVar = this.overlayHandlers;
        if (frVar == null || !frVar.isEmpty()) {
            Iterator<NavigationEventHandler<?>> it = frVar.iterator();
            while (true) {
                if (it.hasNext()) {
                    NavigationEventHandler<?> next = it.next();
                    if (next.isBackEnabled() || next.isForwardEnabled()) {
                        z = true;
                    }
                } else {
                    z = false;
                }
            }
        } else {
            z = false;
        }
        fr<NavigationEventHandler<?>> frVar2 = this.defaultHandlers;
        if (frVar2 == null || !frVar2.isEmpty()) {
            Iterator<NavigationEventHandler<?>> it2 = frVar2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    NavigationEventHandler<?> next2 = it2.next();
                    if (next2.isBackEnabled() || next2.isForwardEnabled()) {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
            }
        } else {
            z2 = false;
        }
        boolean z3 = z || z2;
        boolean z4 = this.hasEnabledOverlayHandlers != z;
        boolean z5 = this.hasEnabledDefaultHandlers != z2;
        boolean z6 = this.hasEnabledAnyHandlers != z3;
        if (z4) {
            Iterator<NavigationEventInput> it3 = this.overlayInputs.iterator();
            while (it3.hasNext()) {
                it3.next().doOnHasEnabledHandlersChanged$navigationevent(z);
            }
        }
        if (z5) {
            Iterator<NavigationEventInput> it4 = this.defaultInputs.iterator();
            while (it4.hasNext()) {
                it4.next().doOnHasEnabledHandlersChanged$navigationevent(z2);
            }
        }
        if (z6) {
            Iterator<NavigationEventInput> it5 = this.unspecifiedInputs.iterator();
            while (it5.hasNext()) {
                it5.next().doOnHasEnabledHandlersChanged$navigationevent(z3);
            }
        }
        this.hasEnabledOverlayHandlers = z;
        this.hasEnabledDefaultHandlers = z2;
        this.hasEnabledAnyHandlers = z3;
        NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler$default = this.inProgressHandler;
        if (navigationEventHandlerResolveEnabledHandler$default == null) {
            navigationEventHandlerResolveEnabledHandler$default = resolveEnabledHandler$default(this, 0, 1, null);
        }
        updateEnabledHandlerInfo$navigationevent(navigationEventHandlerResolveEnabledHandler$default);
    }

    public final void removeHandler(NavigationEventHandler<?> navigationEventHandler) {
        navigationEventHandler.getClass();
        if (navigationEventHandler.equals(this.inProgressHandler)) {
            int i = this.inProgressDirection;
            if (i == -1) {
                navigationEventHandler.doOnBackCancelled$navigationevent();
            } else if (i == 1) {
                navigationEventHandler.doOnForwardCancelled$navigationevent();
            }
            this.inProgressHandler = null;
            this.inProgressDirection = 0;
            this.inProgressInput = null;
        }
        this.overlayHandlers.remove(navigationEventHandler);
        this.defaultHandlers.remove(navigationEventHandler);
        navigationEventHandler.setDispatcher$navigationevent(null);
        refreshEnabledHandlers();
    }

    public final void removeInput(NavigationEventInput navigationEventInput) {
        navigationEventInput.getClass();
        this.overlayInputs.remove(navigationEventInput);
        this.defaultInputs.remove(navigationEventInput);
        this.unspecifiedInputs.remove(navigationEventInput);
        navigationEventInput.setDispatcher$navigationevent(null);
        navigationEventInput.doOnRemoved$navigationevent();
    }

    public final void updateEnabledHandlerInfo$navigationevent(NavigationEventHandler<?> navigationEventHandler) {
        NavigationEventHistory navigationEventHistory;
        NavigationEventHandler<?> navigationEventHandlerResolveEnabledHandler$default = this.inProgressHandler;
        if (navigationEventHandlerResolveEnabledHandler$default == null) {
            navigationEventHandlerResolveEnabledHandler$default = resolveEnabledHandler$default(this, 0, 1, null);
        }
        if (aa4.e(navigationEventHandlerResolveEnabledHandler$default, navigationEventHandler)) {
            if (navigationEventHandlerResolveEnabledHandler$default == null) {
                navigationEventHistory = new NavigationEventHistory();
            } else {
                navigationEventHistory = new NavigationEventHistory(navigationEventHandlerResolveEnabledHandler$default.getCurrentInfo(), resolveCombinedBackInfo(), navigationEventHandlerResolveEnabledHandler$default.getForwardInfo());
            }
            if (aa4.e(this._history.getValue(), navigationEventHistory)) {
                return;
            }
            this._history.setValue(navigationEventHistory);
            Iterator<NavigationEventInput> it = this.overlayInputs.iterator();
            while (it.hasNext()) {
                it.next().doOnHistoryChanged$navigationevent(navigationEventHistory);
            }
            Iterator<NavigationEventInput> it2 = this.defaultInputs.iterator();
            while (it2.hasNext()) {
                it2.next().doOnHistoryChanged$navigationevent(navigationEventHistory);
            }
            Iterator<NavigationEventInput> it3 = this.unspecifiedInputs.iterator();
            while (it3.hasNext()) {
                it3.next().doOnHistoryChanged$navigationevent(navigationEventHistory);
            }
        }
    }
}
