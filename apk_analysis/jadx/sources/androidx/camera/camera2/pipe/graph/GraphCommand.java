package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Request;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface GraphCommand {

    public static final class Abort implements GraphCommand {
        public static final Abort INSTANCE = new Abort();

        private Abort() {
        }
    }

    public static final class Capture implements GraphCommand {
        private final List<Request> requests;

        public Capture(List<Request> list) {
            list.getClass();
            this.requests = list;
        }

        public final List<Request> getRequests() {
            return this.requests;
        }
    }

    public static final class Invalidate implements GraphCommand {
        public static final Invalidate INSTANCE = new Invalidate();

        private Invalidate() {
        }
    }

    public static final class Listeners implements GraphCommand {
        private final List<Request.Listener> listeners;

        /* JADX WARN: Multi-variable type inference failed */
        public Listeners(List<? extends Request.Listener> list) {
            list.getClass();
            this.listeners = list;
        }

        public final List<Request.Listener> getListeners() {
            return this.listeners;
        }
    }

    public static final class Parameters implements GraphCommand {
        private final Map<?, Object> graph3AParameters;
        private final Map<?, Object> graphParameters;

        public Parameters(Map<?, ? extends Object> map, Map<?, ? extends Object> map2) {
            map.getClass();
            map2.getClass();
            this.graphParameters = map;
            this.graph3AParameters = map2;
        }

        public final Map<?, Object> getGraph3AParameters() {
            return this.graph3AParameters;
        }

        public final Map<?, Object> getGraphParameters() {
            return this.graphParameters;
        }
    }

    public static final class Repeat implements GraphCommand {
        private final Request request;

        public Repeat(Request request) {
            request.getClass();
            this.request = request;
        }

        public final Request getRequest() {
            return this.request;
        }
    }

    public static final class RequestProcessor implements GraphCommand {

        /* JADX INFO: renamed from: new, reason: not valid java name */
        private final GraphRequestProcessor f0new;
        private final GraphRequestProcessor old;

        public RequestProcessor(GraphRequestProcessor graphRequestProcessor, GraphRequestProcessor graphRequestProcessor2) {
            this.old = graphRequestProcessor;
            this.f0new = graphRequestProcessor2;
        }

        public final GraphRequestProcessor getNew() {
            return this.f0new;
        }

        public final GraphRequestProcessor getOld() {
            return this.old;
        }
    }

    public static final class Shutdown implements GraphCommand {
        public static final Shutdown INSTANCE = new Shutdown();

        private Shutdown() {
        }
    }

    public static final class Stop implements GraphCommand {
        public static final Stop INSTANCE = new Stop();

        private Stop() {
        }
    }

    public static final class Trigger implements GraphCommand {
        private final Map<?, Object> triggerParameters;

        public Trigger(Map<?, ? extends Object> map) {
            map.getClass();
            this.triggerParameters = map;
        }

        public final Map<?, Object> getTriggerParameters() {
            return this.triggerParameters;
        }
    }
}
