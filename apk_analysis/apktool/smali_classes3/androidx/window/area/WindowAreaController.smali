.class public abstract Landroidx/window/area/WindowAreaController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/area/WindowAreaController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/area/WindowAreaController$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static decorator:Landroidx/window/area/WindowAreaControllerDecorator;

.field private static final windowAreaController$delegate:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/window/area/WindowAreaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/area/WindowAreaController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaController$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/window/area/WindowAreaController;->Companion:Landroidx/window/area/WindowAreaController$Companion;

    const-class v0, Landroidx/window/area/WindowAreaController;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {v0}, Lzk1;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/area/WindowAreaController;->TAG:Ljava/lang/String;

    sget-object v0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    sput-object v0, Landroidx/window/area/WindowAreaController;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    new-instance v0, Lnt6;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnt6;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/window/area/WindowAreaController;->windowAreaController$delegate:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroidx/window/area/WindowAreaController;
    .locals 1

    invoke-static {}, Landroidx/window/area/WindowAreaController;->windowAreaController_delegate$lambda$1()Landroidx/window/area/WindowAreaController;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDecorator$cp()Landroidx/window/area/WindowAreaControllerDecorator;
    .locals 1

    sget-object v0, Landroidx/window/area/WindowAreaController;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-object v0
.end method

.method public static final synthetic access$getWindowAreaController$delegate$cp()Lcl4;
    .locals 1

    sget-object v0, Landroidx/window/area/WindowAreaController;->windowAreaController$delegate:Lcl4;

    return-object v0
.end method

.method public static final synthetic access$setDecorator$cp(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 0

    sput-object p0, Landroidx/window/area/WindowAreaController;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method

.method public static final getOrCreate()Landroidx/window/area/WindowAreaController;
    .locals 1

    sget-object v0, Landroidx/window/area/WindowAreaController;->Companion:Landroidx/window/area/WindowAreaController$Companion;

    invoke-virtual {v0}, Landroidx/window/area/WindowAreaController$Companion;->getOrCreate()Landroidx/window/area/WindowAreaController;

    move-result-object v0

    return-object v0
.end method

.method public static final overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 1

    sget-object v0, Landroidx/window/area/WindowAreaController;->Companion:Landroidx/window/area/WindowAreaController$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/area/WindowAreaController$Companion;->overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V

    return-void
.end method

.method public static final reset()V
    .locals 1

    sget-object v0, Landroidx/window/area/WindowAreaController;->Companion:Landroidx/window/area/WindowAreaController$Companion;

    invoke-virtual {v0}, Landroidx/window/area/WindowAreaController$Companion;->reset()V

    return-void
.end method

.method private static final windowAreaController_delegate$lambda$1()Landroidx/window/area/WindowAreaController;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/window/area/WindowAreaController;->Companion:Landroidx/window/area/WindowAreaController$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/window/area/SafeWindowAreaComponentProvider;

    invoke-direct {v2, v1}, Landroidx/window/area/SafeWindowAreaComponentProvider;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v1, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {v1}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object v1

    sget-object v2, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroidx/window/area/WindowAreaController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load WindowExtensions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v1}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    new-instance v1, Landroidx/window/area/WindowAreaControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Landroidx/window/area/WindowAreaControllerImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/window/area/EmptyWindowAreaControllerImpl;

    invoke-direct {v1}, Landroidx/window/area/EmptyWindowAreaControllerImpl;-><init>()V

    :goto_1
    return-object v1
.end method


# virtual methods
.method public abstract getWindowAreaInfos()Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/window/area/WindowAreaInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract presentContentOnWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V
.end method

.method public abstract transferActivityToWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V
.end method
