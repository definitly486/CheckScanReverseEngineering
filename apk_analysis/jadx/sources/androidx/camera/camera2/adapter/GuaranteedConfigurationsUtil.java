package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import defpackage.cl4;
import defpackage.fg;
import defpackage.fh8;
import defpackage.j59;
import defpackage.pt3;
import defpackage.qt3;
import defpackage.u96;
import defpackage.xy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GuaranteedConfigurationsUtil {
    public static final GuaranteedConfigurationsUtil INSTANCE = new GuaranteedConfigurationsUtil();
    private static final cl4 QUERYABLE_VIC_FCQ_COMBINATIONS$delegate = new fh8(new pt3(0));
    private static final cl4 QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate = new fh8(new qt3(0));

    private GuaranteedConfigurationsUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0() {
        return INSTANCE.generateBaklavaQueryableFcqCombinations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0() {
        return INSTANCE.generateVicQueryableFcqCombinations();
    }

    private final List<SurfaceCombination> createPrivJpegXCombinations(SurfaceConfig.ConfigSize configSize, SurfaceConfig.ConfigSize configSize2) {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize2, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG_R, configSize2, null, 4, null));
        arrayList.add(surfaceCombinationB);
        return arrayList;
    }

    private final List<SurfaceCombination> generateBaklavaQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.S1440P_16_9, null, 4, null), arrayList, surfaceCombinationB);
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.UHD, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.YUV, configSize, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB3);
        return arrayList;
    }

    public static final List<SurfaceCombination> generateHighSpeedSupportedCombinationList(Size size, SurfaceSizeDefinition surfaceSizeDefinition) {
        size.getClass();
        surfaceSizeDefinition.getClass();
        ArrayList arrayList = new ArrayList();
        SurfaceConfig surfaceConfigTransformSurfaceConfig$default = SurfaceConfig.Companion.transformSurfaceConfig$default(SurfaceConfig.Companion, 34, size, surfaceSizeDefinition, 0, null, null, 56, null);
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        surfaceCombination.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    public static final List<SurfaceCombination> generateSupportedCombinationList(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getLegacySupportedCombinationList());
        if (i == 0 || i == 1 || i == 3 || i == 4) {
            arrayList.addAll(getLimitedSupportedCombinationList());
        }
        if (i == 1 || i == 3) {
            arrayList.addAll(getFullSupportedCombinationList());
        }
        if (z) {
            arrayList.addAll(getRAWSupportedCombinationList());
        }
        if (z2 && i == 0) {
            arrayList.addAll(getBurstSupportedCombinationList());
        }
        if (i == 3) {
            arrayList.addAll(getLevel3SupportedCombinationList());
        }
        return arrayList;
    }

    private final List<SurfaceCombination> generateVicQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombinationB);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM_16_9;
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize3));
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.UHD;
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize4));
        arrayList.addAll(createPrivJpegXCombinations(configSize, SurfaceConfig.ConfigSize.S1440P_16_9));
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize3));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize4));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize));
        SurfaceConfig.ConfigSize configSize5 = SurfaceConfig.ConfigSize.X_VGA;
        SurfaceConfig.ConfigSize configSize6 = SurfaceConfig.ConfigSize.MAXIMUM_4_3;
        arrayList.addAll(createPrivJpegXCombinations(configSize5, configSize6));
        arrayList.addAll(createPrivJpegXCombinations(SurfaceConfig.ConfigSize.S1080P_4_3, configSize6));
        return arrayList;
    }

    public static final List<SurfaceCombination> get10BitSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        j59 j59Var = j59.a;
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null));
        return u96.i(surfaceCombination, surfaceCombination2, surfaceCombination3, surfaceCombination4, surfaceCombination5, surfaceCombination6, surfaceCombination7, surfaceCombination8);
    }

    public static final List<SurfaceCombination> getBurstSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB);
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombinationB2);
        return arrayList;
    }

    public static final List<SurfaceCombination> getConcurrentSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null), arrayList, surfaceCombinationB2);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB6 = xy.b(surfaceCombinationB5, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB5);
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB7 = xy.b(surfaceCombinationB6, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB6);
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB8 = xy.b(surfaceCombinationB7, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB7);
        surfaceCombinationB8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombinationB8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB8);
        return arrayList;
    }

    public static final List<SurfaceCombination> getFullSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB);
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize2, null, 4, null), arrayList, surfaceCombinationB3);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.VGA;
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombinationB5);
        return arrayList;
    }

    public static final List<SurfaceCombination> getLegacySupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null), arrayList, surfaceCombinationB2);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB6 = xy.b(surfaceCombinationB5, SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null), arrayList, surfaceCombinationB5);
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB7 = xy.b(surfaceCombinationB6, SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null), arrayList, surfaceCombinationB6);
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB7);
        return arrayList;
    }

    public static final List<SurfaceCombination> getLevel3SupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.VGA;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.RAW;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize3, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null));
        arrayList.add(surfaceCombinationB);
        return arrayList;
    }

    public static final List<SurfaceCombination> getLimitedSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB);
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
        arrayList.add(surfaceCombinationB5);
        return arrayList;
    }

    public static final List<SurfaceCombination> getPreviewStabilizationSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB);
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB6 = xy.b(surfaceCombinationB5, SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null), arrayList, surfaceCombinationB5);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        SurfaceCombination surfaceCombinationB7 = xy.b(surfaceCombinationB6, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB6);
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        SurfaceCombination surfaceCombinationB8 = xy.b(surfaceCombinationB7, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB7);
        surfaceCombinationB8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        SurfaceCombination surfaceCombinationB9 = xy.b(surfaceCombinationB8, SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null), arrayList, surfaceCombinationB8);
        surfaceCombinationB9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombinationB9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB9);
        return arrayList;
    }

    public static final List<SurfaceCombination> getRAWSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.RAW;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB6 = xy.b(surfaceCombinationB5, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB5);
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        SurfaceCombination surfaceCombinationB7 = xy.b(surfaceCombinationB6, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombinationB6);
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB7);
        return arrayList;
    }

    public static final List<SurfaceCombination> getUltraHdrSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.JPEG_R;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null), arrayList, surfaceCombination);
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombinationB);
        return arrayList;
    }

    public static final List<SurfaceCombination> getUltraHighResolutionSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.ULTRA_MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        SurfaceCombination surfaceCombinationB = xy.b(surfaceCombination, SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null), arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombinationB.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB2 = xy.b(surfaceCombinationB, SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null), arrayList, surfaceCombinationB);
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.RAW;
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombinationB2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB3 = xy.b(surfaceCombinationB2, SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null), arrayList, surfaceCombinationB2);
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination surfaceCombinationB4 = xy.b(surfaceCombinationB3, SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null), arrayList, surfaceCombinationB3);
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombinationB4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB5 = xy.b(surfaceCombinationB4, SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null), arrayList, surfaceCombinationB4);
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombinationB5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB6 = xy.b(surfaceCombinationB5, SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null), arrayList, surfaceCombinationB5);
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB7 = xy.b(surfaceCombinationB6, SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null), arrayList, surfaceCombinationB6);
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombinationB7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB8 = xy.b(surfaceCombinationB7, SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null), arrayList, surfaceCombinationB7);
        surfaceCombinationB8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombinationB8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB9 = xy.b(surfaceCombinationB8, SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null), arrayList, surfaceCombinationB8);
        surfaceCombinationB9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombinationB9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB10 = xy.b(surfaceCombinationB9, SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null), arrayList, surfaceCombinationB9);
        surfaceCombinationB10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombinationB10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceCombination surfaceCombinationB11 = xy.b(surfaceCombinationB10, SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null), arrayList, surfaceCombinationB10);
        surfaceCombinationB11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombinationB11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombinationB11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null));
        arrayList.add(surfaceCombinationB11);
        return arrayList;
    }

    public final List<SurfaceCombination> getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate.getValue();
    }

    public final List<SurfaceCombination> getQUERYABLE_VIC_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_VIC_FCQ_COMBINATIONS$delegate.getValue();
    }

    public final List<SurfaceCombination> getQueryableFcqCombinations$camera_camera2(CameraMetadata cameraMetadata, VideoStabilization videoStabilization) {
        cameraMetadata.getClass();
        videoStabilization.getClass();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 35) {
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SESSION_CONFIGURATION_QUERY_VERSION;
            key.getClass();
            Object obj = cameraMetadata.get((CameraCharacteristics.Key<Object>) key);
            if (obj == null) {
                fg.c("Required value was null.");
                return null;
            }
            int iIntValue = ((Number) obj).intValue();
            if (iIntValue >= 35 && videoStabilization != VideoStabilization.ON) {
                arrayList.addAll(getQUERYABLE_VIC_FCQ_COMBINATIONS());
            }
            if (iIntValue >= 36 && videoStabilization != VideoStabilization.PREVIEW) {
                arrayList.addAll(getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS());
                return arrayList;
            }
        }
        return arrayList;
    }

    public final List<SurfaceCombination> getStreamUseCaseSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        StreamUseCase streamUseCase = StreamUseCase.PREVIEW_VIDEO_STILL;
        surfaceCombination.addSurfaceConfig(companion.create(configType, configSize, streamUseCase));
        j59 j59Var = j59.a;
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(companion.create(configType2, configSize, streamUseCase));
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        StreamUseCase streamUseCase2 = StreamUseCase.VIDEO_RECORD;
        surfaceCombination3.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        StreamUseCase streamUseCase3 = StreamUseCase.STILL_CAPTURE;
        surfaceCombination5.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(companion.create(configType2, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.PREVIEW;
        StreamUseCase streamUseCase4 = StreamUseCase.PREVIEW;
        surfaceCombination7.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination7.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination8.addSurfaceConfig(companion.create(configType2, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination9.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination10 = new SurfaceCombination();
        surfaceCombination10.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination10.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination11 = new SurfaceCombination();
        surfaceCombination11.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination11.addSurfaceConfig(companion.create(configType2, configSize4, streamUseCase4));
        SurfaceCombination surfaceCombination12 = new SurfaceCombination();
        surfaceCombination12.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination12.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        surfaceCombination12.addSurfaceConfig(companion.create(configType3, configSize2, streamUseCase3));
        SurfaceCombination surfaceCombination13 = new SurfaceCombination();
        surfaceCombination13.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination13.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        surfaceCombination13.addSurfaceConfig(companion.create(configType3, configSize2, streamUseCase3));
        SurfaceCombination surfaceCombination14 = new SurfaceCombination();
        surfaceCombination14.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination14.addSurfaceConfig(companion.create(configType2, configSize4, streamUseCase4));
        surfaceCombination14.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        return u96.i(surfaceCombination, surfaceCombination2, surfaceCombination3, surfaceCombination4, surfaceCombination5, surfaceCombination6, surfaceCombination7, surfaceCombination8, surfaceCombination9, surfaceCombination10, surfaceCombination11, surfaceCombination12, surfaceCombination13, surfaceCombination14);
    }
}
