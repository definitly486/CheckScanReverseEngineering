package androidx.compose.ui.graphics.colorspace;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectorKt {
    private static final MutableIntObjectMap<Connector> Connectors;

    static {
        ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
        int id$ui_graphics = colorSpaces.getSrgb().getId$ui_graphics();
        int id$ui_graphics2 = colorSpaces.getSrgb().getId$ui_graphics();
        RenderIntent.Companion companion = RenderIntent.Companion;
        jh2 jh2Var = null;
        Connectors = IntObjectMapKt.mutableIntObjectMapOf(id$ui_graphics | (id$ui_graphics2 << 6) | (companion.m6690getPerceptualuksYyKA() << 12), Connector.Companion.identity$ui_graphics(colorSpaces.getSrgb()), colorSpaces.getSrgb().getId$ui_graphics() | (colorSpaces.getOklab().getId$ui_graphics() << 6) | (companion.m6690getPerceptualuksYyKA() << 12), new Connector(colorSpaces.getSrgb(), colorSpaces.getOklab(), companion.m6690getPerceptualuksYyKA(), jh2Var), colorSpaces.getOklab().getId$ui_graphics() | (colorSpaces.getSrgb().getId$ui_graphics() << 6) | (companion.m6690getPerceptualuksYyKA() << 12), new Connector(colorSpaces.getOklab(), colorSpaces.getSrgb(), companion.m6690getPerceptualuksYyKA(), jh2Var));
    }

    /* JADX INFO: renamed from: connectorKey-YBCOT_4, reason: not valid java name */
    public static final int m6681connectorKeyYBCOT_4(int i, int i2, int i3) {
        return i | (i2 << 6) | (i3 << 12);
    }

    public static final MutableIntObjectMap<Connector> getConnectors() {
        return Connectors;
    }
}
