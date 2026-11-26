.class public final Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

.field private static volatile b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;


# instance fields
.field private final a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;-><init>(Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    const-string p1, "IAA-NC"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    return-void
.end method

.method public static final getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    return-void
.end method

.method public static final init(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V
    .locals 1

    .line 6
    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->init(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V

    return-void
.end method


# virtual methods
.method public final getNetworkCore()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;->stopTasks()V

    return-void
.end method
