.class public interface abstract Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/sessions/dagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract appContext(Landroid/content/Context;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation
.end method

.method public abstract backgroundDispatcher(Lo22;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .param p1    # Lo22;
        .annotation runtime Lcom/google/firebase/annotations/concurrent/Background;
        .end annotation
    .end param
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation
.end method

.method public abstract blockingDispatcher(Lo22;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .param p1    # Lo22;
        .annotation runtime Lcom/google/firebase/annotations/concurrent/Blocking;
        .end annotation
    .end param
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation
.end method

.method public abstract build()Lcom/google/firebase/sessions/FirebaseSessionsComponent;
.end method

.method public abstract firebaseApp(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation
.end method

.method public abstract firebaseInstallationsApi(Lcom/google/firebase/installations/FirebaseInstallationsApi;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation
.end method

.method public abstract transportFactoryProvider(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
    .annotation runtime Lcom/google/firebase/sessions/dagger/BindsInstance;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;)",
            "Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;"
        }
    .end annotation
.end method
