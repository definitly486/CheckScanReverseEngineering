.class public final Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
        ">;"
    }
.end annotation


# instance fields
.field private final computeSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;"
        }
    .end annotation
.end field

.field private final ioSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->ioSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->computeSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->mainThreadSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lhe7;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;-><init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lhe7;Lhe7;Lhe7;)Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/Schedulers;-><init>(Lhe7;Lhe7;Lhe7;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->ioSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe7;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->computeSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhe7;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->mainThreadSchedulerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhe7;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->newInstance(Lhe7;Lhe7;Lhe7;)Lcom/google/firebase/inappmessaging/internal/Schedulers;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->get()Lcom/google/firebase/inappmessaging/internal/Schedulers;

    move-result-object p0

    return-object p0
.end method
