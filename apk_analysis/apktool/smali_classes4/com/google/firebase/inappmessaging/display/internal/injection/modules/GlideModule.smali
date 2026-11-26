.class public Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesGlideRequestManager(Landroid/app/Application;)Lp37;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    return-object p0
.end method
