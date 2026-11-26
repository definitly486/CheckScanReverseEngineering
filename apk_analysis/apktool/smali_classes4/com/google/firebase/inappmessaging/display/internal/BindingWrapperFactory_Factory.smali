.class public final Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;",
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


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->applicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;-><init>(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->applicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->newInstance(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->get()Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    move-result-object p0

    return-object p0
.end method
