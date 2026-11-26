.class public final Landroidx/webkit/WebViewStartUpConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewStartUpConfig$Builder;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mProfilesToLoadDuringStartup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig;->mExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Landroidx/webkit/WebViewStartUpConfig;->mShouldRunUiThreadStartUpTasks:Z

    iput-object p3, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/WebViewStartUpConfig;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig;->mShouldRunUiThreadStartUpTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/WebViewStartUpConfig;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getProfilesToLoadDuringStartup()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-object p0
.end method

.method public shouldRunUiThreadStartUpTasks()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/webkit/WebViewStartUpConfig;->mShouldRunUiThreadStartUpTasks:Z

    return p0
.end method
