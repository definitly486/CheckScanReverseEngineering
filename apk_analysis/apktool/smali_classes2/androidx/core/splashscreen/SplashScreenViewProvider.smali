.class public final Landroidx/core/splashscreen/SplashScreenViewProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;,
        Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;
    }
.end annotation


# instance fields
.field private final impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;

    invoke-direct {v0, p1}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-direct {v0, p1}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;-><init>(Landroid/app/Activity;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->createSplashScreenView()V

    iput-object v0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    return-void
.end method

.method public constructor <init>(Landroid/window/SplashScreenView;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0, p2}, Landroidx/core/splashscreen/SplashScreenViewProvider;-><init>(Landroid/app/Activity;)V

    .line 30
    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;

    invoke-virtual {p0, p1}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;->setPlatformView(Landroid/window/SplashScreenView;)V

    return-void
.end method


# virtual methods
.method public final getIconAnimationDurationMillis()J
    .locals 2

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->getIconAnimationDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getIconAnimationStartMillis()J
    .locals 2

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->getIconAnimationStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->getIconView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->getSplashScreenView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreenViewProvider;->impl:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->remove()V

    return-void
.end method
