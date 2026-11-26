package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.core.Debug;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.mx2;
import defpackage.ul2;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Request {
    private final Map<Metadata.Key<?>, Object> extras;
    private final InputRequest inputRequest;
    private final List<Listener> listeners;
    private final Map<CaptureRequest.Key<?>, Object> parameters;
    private final List<StreamId> streams;
    private final RequestTemplate template;

    public interface Listener {

        public static final class DefaultImpls {
            @Deprecated
            public static void onAborted(Listener listener, Request request) {
                request.getClass();
                Listener.super.onAborted(request);
            }

            @ul2
            @Deprecated
            /* JADX INFO: renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
            public static void m629onBufferLostDlC0U5Y(Listener listener, RequestMetadata requestMetadata, long j, int i) {
                requestMetadata.getClass();
                Listener.super.m628onBufferLostDlC0U5Y(requestMetadata, j, i);
            }

            @Deprecated
            /* JADX INFO: renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
            public static void m630onBufferLostiiEMlm4(Listener listener, RequestMetadata requestMetadata, long j, int i, int i2) {
                requestMetadata.getClass();
                Listener.super.mo40onBufferLostiiEMlm4(requestMetadata, j, i, i2);
            }

            @Deprecated
            public static void onCaptureProgress(Listener listener, RequestMetadata requestMetadata, int i) {
                requestMetadata.getClass();
                Listener.super.onCaptureProgress(requestMetadata, i);
            }

            @Deprecated
            /* JADX INFO: renamed from: onComplete-CcXjc1I, reason: not valid java name */
            public static void m631onCompleteCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                requestMetadata.getClass();
                frameInfo.getClass();
                Listener.super.mo9onCompleteCcXjc1I(requestMetadata, j, frameInfo);
            }

            @Deprecated
            /* JADX INFO: renamed from: onFailed-CcXjc1I, reason: not valid java name */
            public static void m632onFailedCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                requestMetadata.getClass();
                requestFailure.getClass();
                Listener.super.mo10onFailedCcXjc1I(requestMetadata, j, requestFailure);
            }

            @Deprecated
            /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
            public static void m633onPartialCaptureResultCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
                requestMetadata.getClass();
                frameMetadata.getClass();
                Listener.super.mo41onPartialCaptureResultCcXjc1I(requestMetadata, j, frameMetadata);
            }

            @Deprecated
            /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
            public static void m634onReadoutStartedmP9r9w(Listener listener, RequestMetadata requestMetadata, long j, long j2) {
                requestMetadata.getClass();
                Listener.super.mo42onReadoutStartedmP9r9w(requestMetadata, j, j2);
            }

            @Deprecated
            public static void onRequestSequenceAborted(Listener listener, RequestMetadata requestMetadata) {
                requestMetadata.getClass();
                Listener.super.onRequestSequenceAborted(requestMetadata);
            }

            @Deprecated
            /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
            public static void m635onRequestSequenceCompletedRuT0dZU(Listener listener, RequestMetadata requestMetadata, long j) {
                requestMetadata.getClass();
                Listener.super.mo43onRequestSequenceCompletedRuT0dZU(requestMetadata, j);
            }

            @Deprecated
            public static void onRequestSequenceCreated(Listener listener, RequestMetadata requestMetadata) {
                requestMetadata.getClass();
                Listener.super.onRequestSequenceCreated(requestMetadata);
            }

            @Deprecated
            public static void onRequestSequenceSubmitted(Listener listener, RequestMetadata requestMetadata) {
                requestMetadata.getClass();
                Listener.super.onRequestSequenceSubmitted(requestMetadata);
            }

            @Deprecated
            /* JADX INFO: renamed from: onStarted-uGKBvU4, reason: not valid java name */
            public static void m636onStarteduGKBvU4(Listener listener, RequestMetadata requestMetadata, long j, long j2) {
                requestMetadata.getClass();
                Listener.super.mo44onStarteduGKBvU4(requestMetadata, j, j2);
            }

            @Deprecated
            /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I, reason: not valid java name */
            public static void m637onTotalCaptureResultCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                requestMetadata.getClass();
                frameInfo.getClass();
                Listener.super.mo11onTotalCaptureResultCcXjc1I(requestMetadata, j, frameInfo);
            }
        }

        default void onAborted(Request request) {
            request.getClass();
        }

        @ul2
        /* JADX INFO: renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
        default void m628onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
            requestMetadata.getClass();
        }

        /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
        default void mo40onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
            requestMetadata.getClass();
        }

        default void onCaptureProgress(RequestMetadata requestMetadata, int i) {
            requestMetadata.getClass();
        }

        /* JADX INFO: renamed from: onComplete-CcXjc1I */
        default void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
            requestMetadata.getClass();
            frameInfo.getClass();
        }

        /* JADX INFO: renamed from: onFailed-CcXjc1I */
        default void mo10onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
            requestMetadata.getClass();
            requestFailure.getClass();
        }

        /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
        default void mo41onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
            requestMetadata.getClass();
            frameMetadata.getClass();
        }

        /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
        default void mo42onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
            requestMetadata.getClass();
        }

        default void onRequestSequenceAborted(RequestMetadata requestMetadata) {
            requestMetadata.getClass();
        }

        /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
        default void mo43onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
            requestMetadata.getClass();
        }

        default void onRequestSequenceCreated(RequestMetadata requestMetadata) {
            requestMetadata.getClass();
        }

        default void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
            requestMetadata.getClass();
        }

        /* JADX INFO: renamed from: onStarted-uGKBvU4 */
        default void mo44onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
            requestMetadata.getClass();
        }

        /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
        default void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
            requestMetadata.getClass();
            frameInfo.getClass();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, int i, jh2 jh2Var) {
        int i2 = i & 2;
        mx2 mx2Var = mx2.b;
        this(list, i2 != 0 ? mx2Var : map, (i & 4) != 0 ? mx2Var : map2, (i & 8) != 0 ? kx2.b : list2, (i & 16) != 0 ? null : requestTemplate, (i & 32) != 0 ? null : inputRequest, null);
    }

    private final <T> T getUnchecked(Metadata.Key<T> key) {
        return (T) this.extras.get(key);
    }

    private final String toStringInternal(boolean z) {
        String str;
        String str2;
        String str3 = "";
        if (this.template == null) {
            str = "";
        } else {
            str = ", template=" + ((Object) RequestTemplate.m652toStringimpl(this.template.m653unboximpl()));
        }
        if (!z || this.parameters.isEmpty()) {
            str2 = "";
        } else {
            str2 = ", parameters=" + Debug.INSTANCE.formatParameterMap(this.parameters, 5);
        }
        if (z && !this.extras.isEmpty()) {
            str3 = ", extras=" + Debug.INSTANCE.formatParameterMap(this.extras, 5);
        }
        return "Request(streams=" + this.streams + str + str2 + str3 + ")@" + Integer.toHexString(hashCode());
    }

    public final <T> T get(CaptureRequest.Key<T> key) {
        key.getClass();
        return (T) getUnchecked(key);
    }

    public final Map<Metadata.Key<?>, Object> getExtras() {
        return this.extras;
    }

    public final InputRequest getInputRequest() {
        return this.inputRequest;
    }

    public final List<Listener> getListeners() {
        return this.listeners;
    }

    public final Map<CaptureRequest.Key<?>, Object> getParameters() {
        return this.parameters;
    }

    public final List<StreamId> getStreams() {
        return this.streams;
    }

    /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name */
    public final RequestTemplate m618getTemplateejQnlcg() {
        return this.template;
    }

    public String toString() {
        return toStringInternal(false);
    }

    public final String toStringVerbose() {
        return toStringInternal(true);
    }

    private final <T> T getUnchecked(CaptureRequest.Key<T> key) {
        return (T) this.parameters.get(key);
    }

    public final <T> T get(Metadata.Key<T> key) {
        key.getClass();
        return (T) getUnchecked(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Request(List<StreamId> list, Map<CaptureRequest.Key<?>, ? extends Object> map, Map<Metadata.Key<?>, ? extends Object> map2, List<? extends Listener> list2, RequestTemplate requestTemplate, InputRequest inputRequest) {
        list.getClass();
        map.getClass();
        map2.getClass();
        list2.getClass();
        this.streams = list;
        this.parameters = map;
        this.extras = map2;
        this.listeners = list2;
        this.template = requestTemplate;
        this.inputRequest = inputRequest;
    }

    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, jh2 jh2Var) {
        this(list, map, map2, list2, requestTemplate, inputRequest);
    }
}
