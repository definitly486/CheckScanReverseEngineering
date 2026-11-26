package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.ZslControlNoOpImpl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.TemplateParamsQuirkOverride;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConfigQueryResult;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.SessionConfig;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.kn1;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FeatureCombinationQueryImpl implements FeatureCombinationQuery {
    private final CameraMetadata cameraMetadata;
    private final CameraPipe cameraPipe;
    private final CameraQuirks cameraQuirks;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FeatureCombinationQueryImpl$isSupported$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.FeatureCombinationQueryImpl$isSupported$1", f = "FeatureCombinationQueryImpl.kt", l = {59}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
        final /* synthetic */ CameraGraphConfigProvider.CameraGraphCreationResult $creationResult;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$creationResult = cameraGraphCreationResult;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return FeatureCombinationQueryImpl.this.new AnonymousClass1(this.$creationResult, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                CameraPipe cameraPipe = FeatureCombinationQueryImpl.this.cameraPipe;
                CameraGraph.Config config = this.$creationResult.getConfig();
                this.label = 1;
                obj = cameraPipe.mo376isConfigSupportedNpXggIU(config, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult = this.$creationResult;
            ConfigQueryResult configQueryResult = (ConfigQueryResult) obj;
            int iM407unboximpl = configQueryResult.m407unboximpl();
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                String str = Camera2Logger.TRUNCATED_TAG;
                List<CameraStream.Config> streams = cameraGraphCreationResult.getConfig().getStreams();
                ArrayList arrayList = new ArrayList(kn1.q(streams, 10));
                Iterator<T> it = streams.iterator();
                while (it.hasNext()) {
                    List<OutputStream.Config> outputs = ((CameraStream.Config) it.next()).getOutputs();
                    ArrayList arrayList2 = new ArrayList(kn1.q(outputs, 10));
                    for (OutputStream.Config config2 : outputs) {
                        arrayList2.add("size=" + config2.getSize() + ", format=" + ((Object) StreamFormat.m684toStringimpl(config2.m534getFormat8FPWQzE())) + ", dynamicRangeProfile" + config2.m533getDynamicRangeProfileOoVcG5w());
                    }
                    arrayList.add(arrayList2);
                }
                android.util.Log.d(str, "FeatureCombinationQueryImpl#isSupported: result = " + ((Object) ConfigQueryResult.m406toStringimpl(iM407unboximpl)) + " for sessionParameters = " + cameraGraphCreationResult.getConfig().getSessionParameters() + " and streams = " + arrayList);
            }
            return Boolean.valueOf(ConfigQueryResult.m404equalsimpl0(configQueryResult.m407unboximpl(), ConfigQueryResult.Companion.m408getSUPPORTEDXp6DSB4()));
        }
    }

    public FeatureCombinationQueryImpl(CameraMetadata cameraMetadata, CameraPipe cameraPipe, CameraQuirks cameraQuirks) {
        cameraMetadata.getClass();
        cameraPipe.getClass();
        cameraQuirks.getClass();
        this.cameraMetadata = cameraMetadata;
        this.cameraPipe = cameraPipe;
        this.cameraQuirks = cameraQuirks;
    }

    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public boolean isSupported(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        return ((Boolean) bv0.a(gx2.b, new AnonymousClass1(CameraGraphConfigProvider.m45create79VDu0o$default(new CameraGraphConfigProvider(new CameraCallbackMap(), new ComboRequestListener(), new CameraConfig(this.cameraMetadata.mo370getCameraDz_R5H8(), null), this.cameraQuirks, new ZslControlNoOpImpl(), new TemplateParamsQuirkOverride(this.cameraQuirks.getQuirks()), this.cameraMetadata, null, null, RendererCapabilities.DECODER_SUPPORT_MASK, null), CameraGraph.OperatingMode.Companion.m342getNORMAL2uNL3no(), sessionConfig, true, null, null, null, null, 120, null), null))).booleanValue();
    }
}
