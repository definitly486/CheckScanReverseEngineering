package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.ah;
import defpackage.kn1;
import defpackage.mz0;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidPSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidPSessionFactory(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl) {
        threads.getClass();
        config.getClass();
        streamGraphImpl.getClass();
        this.threads = threads;
        this.graphConfig = config;
        this.streamGraph = streamGraphImpl;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState) {
        int iM314getSessionMode2uNL3no;
        int i;
        ArrayList arrayList;
        CaptureSessionState captureSessionState2;
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        int iM314getSessionMode2uNL3no2 = this.graphConfig.m314getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m342getNORMAL2uNL3no())) {
            i = 0;
        } else {
            if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m341getHIGH_SPEED2uNL3no())) {
                iM314getSessionMode2uNL3no = 1;
            } else {
                boolean zM335equalsimpl0 = CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m340getEXTENSION2uNL3no());
                CameraGraph.Config config = this.graphConfig;
                if (zM335equalsimpl0) {
                    mz0.c(CameraGraph.OperatingMode.m337toStringimpl(config.m314getSessionMode2uNL3no()), "Unsupported session mode: ");
                    return null;
                }
                iM314getSessionMode2uNL3no = config.m314getSessionMode2uNL3no();
            }
            i = iM314getSessionMode2uNL3no;
        }
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, map);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        List<InputStream.Config> input = this.graphConfig.getInput();
        if (input != null) {
            List<InputStream.Config> list = input;
            ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                OutputStream.Config config2 = (OutputStream.Config) qn1.k0(((InputStream.Config) it.next()).getStream().getOutputs());
                arrayList2.add(new InputConfigData(config2.getSize().getWidth(), config2.getSize().getHeight(), config2.m534getFormat8FPWQzE()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (((InputConfigData) it2.next()).getFormat() != ((InputConfigData) arrayList.get(0)).getFormat()) {
                    ah.f("All InputStream.Config objects must have the same format for multi resolution");
                    return null;
                }
            }
        }
        if (cameraDeviceWrapper.createCaptureSession(new SessionConfigData(i, arrayList, outputConfigurationsBuildOutputConfigurations.getAll(), this.threads.getCamera2Executor(), captureSessionState, this.graphConfig.m315getSessionTemplatefGx8uWA(), this.graphConfig.getSessionParameters(), this.graphConfig.m313getSessionColorSpacedxVZaPA(), null))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            StringBuilder sb = new StringBuilder("Failed to create capture session from ");
            sb.append(cameraDeviceWrapper);
            sb.append(" for ");
            captureSessionState2 = captureSessionState;
            sb.append(captureSessionState2);
            sb.append('!');
            android.util.Log.w(Log.TAG, sb.toString());
        } else {
            captureSessionState2 = captureSessionState;
        }
        captureSessionState2.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
