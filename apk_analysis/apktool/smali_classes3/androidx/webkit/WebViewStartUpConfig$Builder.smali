.class public final Landroidx/webkit/WebViewStartUpConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewStartUpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mProfilesToLoadDuringStartup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/WebViewStartUpConfig;
    .locals 3

    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Can\'t specify profiles to load without running UI thread startup tasks"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    new-instance v1, Landroidx/webkit/WebViewStartUpConfig;

    iget-object v2, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-boolean p0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    invoke-direct {v1, v2, p0, v0}, Landroidx/webkit/WebViewStartUpConfig;-><init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;)V

    return-object v1
.end method

.method public setProfilesToLoadDuringStartup(Ljava/util/Set;)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/WebViewStartUpConfig$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-object p0
.end method

.method public setShouldRunUiThreadStartUpTasks(Z)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    return-object p0
.end method
