package androidx.compose.ui.layout;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {
    public static final int $stable = 8;
    private final AndroidComposeView composeView;
    private final SnapshotStateList<RectRulers> displayCutoutRulers;
    private final MutableObjectList<MutableState<Rect>> displayCutouts;
    private final MutableIntState generation;
    private final ScatterMap<Object, WindowWindowInsetsAnimationValues> insetsValues;
    private boolean prepared;
    private int runningAnimationMask;
    private WindowInsetsCompat savedInsets;

    public InsetsListener(AndroidComposeView androidComposeView) {
        super(1);
        this.composeView = androidComposeView;
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        WindowInsetsRulers.Companion companion = WindowInsetsRulers.Companion;
        mutableScatterMap.set(companion.getCaptionBar(), new WindowWindowInsetsAnimationValues("caption bar"));
        mutableScatterMap.set(companion.getDisplayCutout(), new WindowWindowInsetsAnimationValues("display cutout"));
        mutableScatterMap.set(companion.getIme(), new WindowWindowInsetsAnimationValues("ime"));
        mutableScatterMap.set(companion.getMandatorySystemGestures(), new WindowWindowInsetsAnimationValues("mandatory system gestures"));
        mutableScatterMap.set(companion.getNavigationBars(), new WindowWindowInsetsAnimationValues("navigation bars"));
        mutableScatterMap.set(companion.getStatusBars(), new WindowWindowInsetsAnimationValues("status bars"));
        mutableScatterMap.set(companion.getSystemGestures(), new WindowWindowInsetsAnimationValues("system gestures"));
        mutableScatterMap.set(companion.getTappableElement(), new WindowWindowInsetsAnimationValues("tappable element"));
        mutableScatterMap.set(companion.getWaterfall(), new WindowWindowInsetsAnimationValues("waterfall"));
        this.insetsValues = mutableScatterMap;
        this.generation = SnapshotIntStateKt.mutableIntStateOf(0);
        this.displayCutouts = new MutableObjectList<>(4);
        this.displayCutoutRulers = SnapshotStateKt.mutableStateListOf();
    }

    private final void stopAnimationForRuler(WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues) {
        windowWindowInsetsAnimationValues.setAnimating(false);
        windowWindowInsetsAnimationValues.m7853setSourceValueInsetsYnlvx88(ValueInsets_androidKt.getUnsetValueInsets());
        windowWindowInsetsAnimationValues.m7854setTargetValueInsetsYnlvx88(ValueInsets_androidKt.getUnsetValueInsets());
    }

    private final void updateInsetAnimationInfo(WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        windowWindowInsetsAnimationValues.setFraction(windowInsetsAnimationCompat.getInterpolatedFraction());
        windowWindowInsetsAnimationValues.setAlpha(windowInsetsAnimationCompat.getAlpha());
        windowWindowInsetsAnimationValues.setDurationMillis(windowInsetsAnimationCompat.getDurationMillis());
    }

    private final void updateInsets(WindowInsetsCompat windowInsetsCompat) {
        char c;
        char c2;
        boolean z;
        char c3;
        boolean z2;
        boolean z3;
        long jM7836constructorimpl;
        long[] jArr;
        int[] iArr;
        Object[] objArr;
        char c4;
        Object[] objArr2;
        IntObjectMap intObjectMap = WindowInsetsRulers_androidKt.WindowInsetsTypeMap;
        int[] iArr2 = intObjectMap.keys;
        Object[] objArr3 = intObjectMap.values;
        long[] jArr2 = intObjectMap.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i = 0;
            z2 = false;
            z3 = false;
            char c5 = 16;
            c = ' ';
            while (true) {
                long j = jArr2[i];
                c2 = '0';
                z = true;
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8;
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((j & 255) < 128) {
                            int i5 = (i << 3) + i4;
                            c4 = c5;
                            int i6 = iArr2[i5];
                            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) objArr3[i5];
                            Insets insets = windowInsetsCompat.getInsets(i6);
                            long jM7836constructorimpl2 = ValueInsets.m7836constructorimpl((((long) insets.left) << 48) | (((long) insets.top) << 32) | (((long) insets.right) << c4) | ((long) insets.bottom));
                            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = this.insetsValues.get(windowInsetsRulers);
                            windowWindowInsetsAnimationValues.getClass();
                            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = windowWindowInsetsAnimationValues;
                            if (!ValueInsets.m7838equalsimpl0(jM7836constructorimpl2, windowWindowInsetsAnimationValues2.m7847getCurrenthdzbrEE())) {
                                windowWindowInsetsAnimationValues2.m7851setCurrentYnlvx88(jM7836constructorimpl2);
                                z2 = true;
                                if (!ValueInsets.m7838equalsimpl0(jM7836constructorimpl2, ValueInsets_androidKt.getZeroValueInsets())) {
                                    z3 = true;
                                }
                            }
                            if (i6 != WindowInsetsCompat.Type.ime()) {
                                Insets insetsIgnoringVisibility = windowInsetsCompat.getInsetsIgnoringVisibility(i6);
                                objArr2 = objArr3;
                                long jM7836constructorimpl3 = ValueInsets.m7836constructorimpl((((long) insetsIgnoringVisibility.top) << 32) | (((long) insetsIgnoringVisibility.left) << 48) | (((long) insetsIgnoringVisibility.right) << c4) | ((long) insetsIgnoringVisibility.bottom));
                                if (!ValueInsets.m7838equalsimpl0(windowWindowInsetsAnimationValues2.m7848getMaximumhdzbrEE(), jM7836constructorimpl3)) {
                                    windowWindowInsetsAnimationValues2.m7852setMaximumYnlvx88(jM7836constructorimpl3);
                                    z2 = true;
                                    if (!ValueInsets.m7838equalsimpl0(jM7836constructorimpl3, ValueInsets_androidKt.getZeroValueInsets())) {
                                        z3 = true;
                                    }
                                }
                            } else {
                                objArr2 = objArr3;
                            }
                            windowWindowInsetsAnimationValues2.setVisible(windowInsetsCompat.isVisible(i6));
                        } else {
                            c4 = c5;
                            objArr2 = objArr3;
                        }
                        j >>= i2;
                        i4++;
                        objArr3 = objArr2;
                        i2 = i2;
                        c5 = c4;
                        jArr2 = jArr2;
                        iArr2 = iArr2;
                    }
                    jArr = jArr2;
                    iArr = iArr2;
                    int i7 = i2;
                    c3 = c5;
                    objArr = objArr3;
                    if (i3 != i7) {
                        break;
                    }
                } else {
                    jArr = jArr2;
                    iArr = iArr2;
                    objArr = objArr3;
                    c3 = c5;
                }
                if (i == length) {
                    break;
                }
                i++;
                objArr3 = objArr;
                c5 = c3;
                jArr2 = jArr;
                iArr2 = iArr;
            }
        } else {
            c = ' ';
            c2 = '0';
            z = true;
            c3 = 16;
            z2 = false;
            z3 = false;
        }
        DisplayCutoutCompat displayCutout = windowInsetsCompat.getDisplayCutout();
        if (displayCutout == null) {
            jM7836constructorimpl = ValueInsets_androidKt.getZeroValueInsets();
        } else {
            Insets waterfallInsets = displayCutout.getWaterfallInsets();
            jM7836constructorimpl = ValueInsets.m7836constructorimpl((((long) waterfallInsets.left) << c2) | (((long) waterfallInsets.top) << c) | (((long) waterfallInsets.right) << c3) | ((long) waterfallInsets.bottom));
        }
        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues3 = this.insetsValues.get(WindowInsetsRulers.Companion.getWaterfall());
        windowWindowInsetsAnimationValues3.getClass();
        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues4 = windowWindowInsetsAnimationValues3;
        windowWindowInsetsAnimationValues4.setVisible(!ValueInsets.m7838equalsimpl0(jM7836constructorimpl, ValueInsets_androidKt.getZeroValueInsets()));
        if (!ValueInsets.m7838equalsimpl0(windowWindowInsetsAnimationValues4.m7847getCurrenthdzbrEE(), jM7836constructorimpl)) {
            windowWindowInsetsAnimationValues4.m7851setCurrentYnlvx88(jM7836constructorimpl);
            windowWindowInsetsAnimationValues4.m7852setMaximumYnlvx88(jM7836constructorimpl);
            z2 = z;
            if (!ValueInsets.m7838equalsimpl0(jM7836constructorimpl, ValueInsets_androidKt.getZeroValueInsets())) {
                z3 = z2;
            }
        }
        if (displayCutout != null) {
            List<Rect> boundingRects = displayCutout.getBoundingRects();
            if (boundingRects.size() < this.displayCutouts.getSize()) {
                this.displayCutouts.removeRange(boundingRects.size(), this.displayCutouts.getSize());
                this.displayCutoutRulers.removeRange(boundingRects.size(), this.displayCutoutRulers.size());
                z2 = z;
            } else {
                int size = boundingRects.size() - this.displayCutouts.getSize();
                int i8 = 0;
                while (i8 < size) {
                    MutableObjectList<MutableState<Rect>> mutableObjectList = this.displayCutouts;
                    mutableObjectList.add(SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(boundingRects.get(mutableObjectList.getSize()), null, 2, null));
                    this.displayCutoutRulers.add(RectRulersKt.RectRulers("display cutout rect " + this.displayCutouts.getSize()));
                    i8++;
                    z2 = z;
                }
            }
            List<Rect> list = boundingRects;
            int size2 = list.size();
            for (int i9 = 0; i9 < size2; i9++) {
                Rect rect = boundingRects.get(i9);
                MutableState<Rect> mutableState = this.displayCutouts.get(i9);
                if (!aa4.e(mutableState.getValue(), rect)) {
                    mutableState.setValue(rect);
                    z2 = z;
                }
            }
            if (!list.isEmpty()) {
                z3 = z;
            }
        } else if (this.displayCutouts.getSize() > 0) {
            this.displayCutouts.clear();
            this.displayCutoutRulers.clear();
            z2 = z;
        }
        if ((z3 || this.generation.getIntValue() != 0) && z2) {
            MutableIntState mutableIntState = this.generation;
            mutableIntState.setIntValue(mutableIntState.getIntValue() + 1);
            Snapshot.Companion.sendApplyNotifications();
        }
    }

    public final AndroidComposeView getComposeView() {
        return this.composeView;
    }

    public final SnapshotStateList<RectRulers> getDisplayCutoutRulers() {
        return this.displayCutoutRulers;
    }

    public final MutableObjectList<MutableState<Rect>> getDisplayCutouts() {
        return this.displayCutouts;
    }

    public final MutableIntState getGeneration() {
        return this.generation;
    }

    public final ScatterMap<Object, WindowWindowInsetsAnimationValues> getInsetsValues() {
        return this.insetsValues;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (this.prepared) {
            this.savedInsets = windowInsetsCompat;
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
                return windowInsetsCompat;
            }
        } else if (this.runningAnimationMask == 0) {
            updateInsets(windowInsetsCompat);
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.prepared = false;
        int typeMask = windowInsetsAnimationCompat.getTypeMask();
        this.runningAnimationMask &= ~typeMask;
        this.savedInsets = null;
        WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.WindowInsetsTypeMap.get(typeMask);
        if (windowInsetsRulers != null) {
            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = this.insetsValues.get(windowInsetsRulers);
            windowWindowInsetsAnimationValues.getClass();
            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = windowWindowInsetsAnimationValues;
            windowWindowInsetsAnimationValues2.setFraction(0.0f);
            windowWindowInsetsAnimationValues2.setAlpha(1.0f);
            windowWindowInsetsAnimationValues2.setDurationMillis(0L);
            windowWindowInsetsAnimationValues2.setFraction(0.0f);
            stopAnimationForRuler(windowWindowInsetsAnimationValues2);
            MutableIntState mutableIntState = this.generation;
            mutableIntState.setIntValue(mutableIntState.getIntValue() + 1);
            Snapshot.Companion.sendApplyNotifications();
        }
        super.onEnd(windowInsetsAnimationCompat);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.prepared = true;
        super.onPrepare(windowInsetsAnimationCompat);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = list.get(i);
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.WindowInsetsTypeMap.get(windowInsetsAnimationCompat.getTypeMask());
            if (windowInsetsRulers != null) {
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = this.insetsValues.get(windowInsetsRulers);
                windowWindowInsetsAnimationValues.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = windowWindowInsetsAnimationValues;
                if (windowWindowInsetsAnimationValues2.isAnimating()) {
                    updateInsetAnimationInfo(windowWindowInsetsAnimationValues2, windowInsetsAnimationCompat);
                }
            }
        }
        updateInsets(windowInsetsCompat);
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        WindowInsetsCompat windowInsetsCompat = this.savedInsets;
        this.prepared = false;
        this.savedInsets = null;
        if (windowInsetsAnimationCompat.getDurationMillis() > 0 && windowInsetsCompat != null) {
            int typeMask = windowInsetsAnimationCompat.getTypeMask();
            this.runningAnimationMask |= typeMask;
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.WindowInsetsTypeMap.get(typeMask);
            if (windowInsetsRulers != null) {
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = this.insetsValues.get(windowInsetsRulers);
                windowWindowInsetsAnimationValues.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = windowWindowInsetsAnimationValues;
                Insets insets = windowInsetsCompat.getInsets(typeMask);
                long jM7836constructorimpl = ValueInsets.m7836constructorimpl(((long) insets.bottom) | (((long) insets.left) << 48) | (((long) insets.top) << 32) | (((long) insets.right) << 16));
                long jM7847getCurrenthdzbrEE = windowWindowInsetsAnimationValues2.m7847getCurrenthdzbrEE();
                if (!ValueInsets.m7838equalsimpl0(jM7836constructorimpl, jM7847getCurrenthdzbrEE)) {
                    windowWindowInsetsAnimationValues2.m7853setSourceValueInsetsYnlvx88(jM7847getCurrenthdzbrEE);
                    windowWindowInsetsAnimationValues2.m7854setTargetValueInsetsYnlvx88(jM7836constructorimpl);
                    windowWindowInsetsAnimationValues2.setAnimating(true);
                    updateInsetAnimationInfo(windowWindowInsetsAnimationValues2, windowInsetsAnimationCompat);
                    MutableIntState mutableIntState = this.generation;
                    mutableIntState.setIntValue(mutableIntState.getIntValue() + 1);
                    Snapshot.Companion.sendApplyNotifications();
                }
            }
        }
        return super.onStart(windowInsetsAnimationCompat, boundsCompat);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.setOnApplyWindowInsetsListener(view, this);
        ViewCompat.setWindowInsetsAnimationCallback(view, this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.setOnApplyWindowInsetsListener(view, null);
        ViewCompat.setWindowInsetsAnimationCallback(view, null);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prepared) {
            this.runningAnimationMask = 0;
            this.prepared = false;
            WindowInsetsCompat windowInsetsCompat = this.savedInsets;
            if (windowInsetsCompat != null) {
                updateInsets(windowInsetsCompat);
                this.savedInsets = null;
            }
        }
    }
}
