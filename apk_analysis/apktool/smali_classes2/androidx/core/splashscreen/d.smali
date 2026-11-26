.class public final synthetic Landroidx/core/splashscreen/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/splashscreen/d;->b:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/d;->b:Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;

    invoke-static {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;->a(Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method
