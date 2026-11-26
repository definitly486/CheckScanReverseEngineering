package androidx.datastore.preferences;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import defpackage.jh2;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesMapCompat {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final PreferencesProto.PreferenceMap readFrom(InputStream inputStream) throws CorruptionException {
            inputStream.getClass();
            try {
                PreferencesProto.PreferenceMap from = PreferencesProto.PreferenceMap.parseFrom(inputStream);
                from.getClass();
                return from;
            } catch (InvalidProtocolBufferException e) {
                throw new CorruptionException("Unable to parse preferences proto.", e);
            }
        }

        private Companion() {
        }
    }
}
