package androidx.camera.camera2.impl;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.Display;
import androidx.camera.camera2.compat.workaround.DisplaySizeCorrector;
import androidx.camera.camera2.compat.workaround.MaxPreviewSize;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.cg;
import defpackage.j59;
import defpackage.jh2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayInfoManager {
    private static volatile DisplayInfoManager instance;
    private final DisplayManager.DisplayListener displayListener;
    private final DisplayManager displayManager;
    private final DisplaySizeCorrector displaySizeCorrector;
    private volatile Display[] displays;
    private final Object lock;
    private final MaxPreviewSize maxPreviewSize;
    private volatile Size previewSize;
    public static final Companion Companion = new Companion(null);
    private static final Size MAX_PREVIEW_SIZE = new Size(1920, 1080);
    private static final Size ABNORMAL_DISPLAY_SIZE_THRESHOLD = new Size(320, PsExtractor.VIDEO_STREAM_MASK);
    private static final Size FALLBACK_DISPLAY_SIZE = new Size(640, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);

    /* JADX WARN: Multi-variable type inference failed */
    private DisplayInfoManager(Context context) {
        this.maxPreviewSize = new MaxPreviewSize(null, 1, 0 == true ? 1 : 0);
        this.displaySizeCorrector = new DisplaySizeCorrector();
        this.lock = new Object();
        DisplayManager.DisplayListener displayListener = new DisplayManager.DisplayListener() { // from class: androidx.camera.camera2.impl.DisplayInfoManager$displayListener$1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int i) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    j59 j59Var = j59.a;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    j59 j59Var = j59.a;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    j59 j59Var = j59.a;
                }
            }
        };
        this.displayListener = displayListener;
        Object systemService = context.getSystemService("display");
        systemService.getClass();
        DisplayManager displayManager = (DisplayManager) systemService;
        displayManager.registerDisplayListener(displayListener, new Handler(Looper.getMainLooper()));
        this.displayManager = displayManager;
    }

    private final Size calculatePreviewSize() {
        Size correctedDisplaySize = getCorrectedDisplaySize();
        Size size = MAX_PREVIEW_SIZE;
        if (SizeUtil.isSmallerByArea(size, correctedDisplaySize)) {
            correctedDisplaySize = size;
        }
        return this.maxPreviewSize.getMaxPreviewResolution(correctedDisplaySize);
    }

    private final Size getCorrectedDisplaySize() {
        Point point = new Point();
        getMaxSizeDisplay(false).getRealSize(point);
        Size size = new Size(point.x, point.y);
        if (SizeUtil.isSmallerByArea(size, ABNORMAL_DISPLAY_SIZE_THRESHOLD)) {
            Size displaySize = this.displaySizeCorrector.getDisplaySize();
            if (displaySize == null) {
                displaySize = FALLBACK_DISPLAY_SIZE;
            }
            size = displaySize;
        }
        return size.getHeight() > size.getWidth() ? new Size(size.getHeight(), size.getWidth()) : size;
    }

    private final Display[] getDisplays() {
        synchronized (this.lock) {
            Display[] displayArr = this.displays;
            if (displayArr != null) {
                return displayArr;
            }
            Display[] displays = this.displayManager.getDisplays();
            this.displays = displays;
            displays.getClass();
            return displays;
        }
    }

    public static /* synthetic */ Display getMaxSizeDisplay$default(DisplayInfoManager displayInfoManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return displayInfoManager.getMaxSizeDisplay(z);
    }

    public final Display getMaxSizeDisplay(boolean z) {
        Display[] displays = getDisplays();
        if (displays.length == 1) {
            return displays[0];
        }
        int i = -1;
        int i2 = -1;
        Display display = null;
        Display display2 = null;
        for (Display display3 : displays) {
            Point point = new Point();
            display3.getRealSize(point);
            int i3 = point.x;
            int i4 = point.y;
            if (i3 * i4 > i) {
                display = display3;
                i = i3 * i4;
            }
            if (display3.getState() != 1) {
                int i5 = point.x;
                int i6 = point.y;
                if (i5 * i6 > i2) {
                    display2 = display3;
                    i2 = i5 * i6;
                }
            }
        }
        if (z && display2 != null) {
            display = display2;
        }
        if (display != null) {
            return display;
        }
        String string = Arrays.toString(displays);
        string.getClass();
        cg.f(string, "No displays found from ", 33);
        return null;
    }

    public final Size getPreviewSize() {
        synchronized (this.lock) {
            if (this.previewSize != null) {
                Size size = this.previewSize;
                size.getClass();
                return size;
            }
            this.previewSize = calculatePreviewSize();
            Size size2 = this.previewSize;
            size2.getClass();
            return size2;
        }
    }

    public final void refreshPreviewSize() {
        synchronized (this.lock) {
            this.previewSize = calculatePreviewSize();
            j59 j59Var = j59.a;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final DisplayInfoManager getInstance(Context context) {
            DisplayInfoManager displayInfoManager;
            context.getClass();
            DisplayInfoManager displayInfoManager2 = DisplayInfoManager.instance;
            if (displayInfoManager2 != null) {
                return displayInfoManager2;
            }
            synchronized (this) {
                displayInfoManager = DisplayInfoManager.instance;
                if (displayInfoManager == null) {
                    Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
                    persistentApplicationContext.getClass();
                    displayInfoManager = new DisplayInfoManager(persistentApplicationContext, null);
                    DisplayInfoManager.instance = displayInfoManager;
                }
            }
            return displayInfoManager;
        }

        public final void releaseInstance() {
            DisplayInfoManager displayInfoManager = DisplayInfoManager.instance;
            if (displayInfoManager != null) {
                synchronized (DisplayInfoManager.Companion) {
                    displayInfoManager.displayManager.unregisterDisplayListener(displayInfoManager.displayListener);
                    DisplayInfoManager.instance = null;
                    j59 j59Var = j59.a;
                }
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ DisplayInfoManager(Context context, jh2 jh2Var) {
        this(context);
    }
}
