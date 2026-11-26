.class public final Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Lp37;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;",
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->applicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;",
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static providesGlideRequestManager(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Landroid/app/Application;)Lp37;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;->providesGlideRequestManager(Landroid/app/Application;)Lp37;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp37;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->get()Lp37;

    move-result-object p0

    return-object p0
.end method

.method public get()Lp37;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->applicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->providesGlideRequestManager(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Landroid/app/Application;)Lp37;

    move-result-object p0

    return-object p0
.end method
