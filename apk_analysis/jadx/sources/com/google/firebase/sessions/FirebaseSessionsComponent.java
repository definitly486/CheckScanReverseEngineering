package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.dagger.Binds;
import com.google.firebase.sessions.dagger.BindsInstance;
import com.google.firebase.sessions.dagger.Component;
import com.google.firebase.sessions.dagger.Module;
import com.google.firebase.sessions.dagger.Provides;
import com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher;
import com.google.firebase.sessions.settings.LocalOverrideSettings;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher;
import com.google.firebase.sessions.settings.SessionConfigs;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.google.firebase.sessions.settings.SettingsCache;
import com.google.firebase.sessions.settings.SettingsCacheImpl;
import com.google.firebase.sessions.settings.SettingsProvider;
import defpackage.aa4;
import defpackage.av;
import defpackage.gz0;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.ly2;
import defpackage.o22;
import defpackage.t29;
import defpackage.vy1;
import defpackage.xb3;
import defpackage.y22;
import defpackage.z22;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Component(modules = {MainModule.class})
public interface FirebaseSessionsComponent {

    @Component.Builder
    public interface Builder {
        @BindsInstance
        Builder appContext(Context context);

        @BindsInstance
        Builder backgroundDispatcher(@Background o22 o22Var);

        @BindsInstance
        Builder blockingDispatcher(@Blocking o22 o22Var);

        FirebaseSessionsComponent build();

        @BindsInstance
        Builder firebaseApp(FirebaseApp firebaseApp);

        @BindsInstance
        Builder firebaseInstallationsApi(FirebaseInstallationsApi firebaseInstallationsApi);

        @BindsInstance
        Builder transportFactoryProvider(Provider<t29> provider);
    }

    @Module
    public interface MainModule {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            private final <T> DataStore<T> createDataStore(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, y22 y22Var, ll3<? extends File> ll3Var) {
                return loadDataStoreSharedCounter() ? MultiProcessDataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, y22Var, ll3Var) : DataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, y22Var, ll3Var);
            }

            public static /* synthetic */ DataStore createDataStore$default(Companion companion, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, y22 y22Var, ll3 ll3Var, int i, Object obj) {
                if ((i & 4) != 0) {
                    list = kx2.b;
                }
                return companion.createDataStore(serializer, replaceFileCorruptionHandler, list, y22Var, ll3Var);
            }

            private final boolean loadDataStoreSharedCounter() {
                try {
                    System.loadLibrary("datastore_shared_counter");
                    return true;
                } catch (SecurityException | UnsatisfiedLinkError unused) {
                    return false;
                }
            }

            private final void prepDataStoreFile(File file) throws IOException {
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    return;
                }
                if (parentFile.exists() && !parentFile.isDirectory() && aa4.e(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
                    av.c(parentFile, "Failed to delete conflicting file: ");
                    return;
                }
                if (parentFile.isDirectory()) {
                    return;
                }
                try {
                    Files.createDirectories(parentFile.toPath(), new FileAttribute[0]);
                } catch (Exception e) {
                    throw new IOException("Failed to create directory: " + parentFile, e);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final SessionConfigs sessionConfigsDataStore$lambda$0(CorruptionException corruptionException) {
                corruptionException.getClass();
                Log.w(FirebaseSessions.TAG, "CorruptionException in session configs DataStore", corruptionException);
                return SessionConfigsSerializer.INSTANCE.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionConfigsDataStore$lambda$2(Context context) throws IOException {
                File fileDataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionConfigsDataStore.data");
                $$INSTANCE.prepDataStoreFile(fileDataStoreFile);
                return fileDataStoreFile;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final SessionData sessionDataStore$lambda$3(SessionDataSerializer sessionDataSerializer, CorruptionException corruptionException) {
                corruptionException.getClass();
                Log.w(FirebaseSessions.TAG, "CorruptionException in session data DataStore", corruptionException);
                return sessionDataSerializer.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionDataStore$lambda$5(Context context) throws IOException {
                File fileDataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionDataStore.data");
                $$INSTANCE.prepDataStoreFile(fileDataStoreFile);
                return fileDataStoreFile;
            }

            @Provides
            public final ApplicationInfo applicationInfo(FirebaseApp firebaseApp) {
                firebaseApp.getClass();
                return SessionEvents.INSTANCE.getApplicationInfo(firebaseApp);
            }

            @Provides
            public final DataStore<SessionConfigs> sessionConfigsDataStore(Context context, @Blocking o22 o22Var) {
                context.getClass();
                o22Var.getClass();
                int i = 1;
                return createDataStore$default(this, SessionConfigsSerializer.INSTANCE, new ReplaceFileCorruptionHandler(new ly2(i)), null, z22.a(o22Var), new gz0(context, i), 4, null);
            }

            @Provides
            public final DataStore<SessionData> sessionDataStore(Context context, @Blocking o22 o22Var, SessionDataSerializer sessionDataSerializer) {
                context.getClass();
                o22Var.getClass();
                sessionDataSerializer.getClass();
                return createDataStore$default(this, sessionDataSerializer, new ReplaceFileCorruptionHandler(new vy1(sessionDataSerializer, 2)), null, z22.a(o22Var), new xb3(context, 0), 4, null);
            }

            @Provides
            public final TimeProvider timeProvider() {
                return TimeProviderImpl.INSTANCE;
            }

            @Provides
            public final UuidGenerator uuidGenerator() {
                return UuidGeneratorImpl.INSTANCE;
            }
        }

        @Binds
        CrashlyticsSettingsFetcher crashlyticsSettingsFetcher(RemoteSettingsFetcher remoteSettingsFetcher);

        @Binds
        EventGDTLoggerInterface eventGDTLoggerInterface(EventGDTLogger eventGDTLogger);

        @Binds
        @LocalOverrideSettingsProvider
        SettingsProvider localOverrideSettings(LocalOverrideSettings localOverrideSettings);

        @Binds
        ProcessDataManager processDataManager(ProcessDataManagerImpl processDataManagerImpl);

        @RemoteSettingsProvider
        @Binds
        SettingsProvider remoteSettings(RemoteSettings remoteSettings);

        @Binds
        SessionFirelogPublisher sessionFirelogPublisher(SessionFirelogPublisherImpl sessionFirelogPublisherImpl);

        @Binds
        SettingsCache settingsCache(SettingsCacheImpl settingsCacheImpl);

        @Binds
        SharedSessionRepository sharedSessionRepository(SharedSessionRepositoryImpl sharedSessionRepositoryImpl);
    }

    FirebaseSessions getFirebaseSessions();

    SessionFirelogPublisher getSessionFirelogPublisher();

    SessionGenerator getSessionGenerator();

    SessionsSettings getSessionsSettings();

    SharedSessionRepository getSharedSessionRepository();
}
