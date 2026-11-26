.class public final Landroidx/lifecycle/ViewModelLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcl4<",
        "TVM;>;"
    }
.end annotation


# instance fields
.field private cached:Landroidx/lifecycle/ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field private final extrasProducer:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProducer:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final storeProducer:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelClass:Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne4<",
            "TVM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lne4;Lll3;Lll3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "TVM;>;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lne4;Lll3;Lll3;Lll3;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lne4;Lll3;Lll3;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "TVM;>;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lne4;

    iput-object p2, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lll3;

    iput-object p3, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lll3;

    iput-object p4, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lll3;

    return-void
.end method

.method public synthetic constructor <init>(Lne4;Lll3;Lll3;Lll3;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 25
    new-instance p4, Lz52;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Lz52;-><init>(I)V

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lne4;Lll3;Lll3;Lll3;)V

    return-void
.end method

.method private static final _init_$lambda$0()Landroidx/lifecycle/viewmodel/CreationExtras$Empty;
    .locals 1

    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    return-object v0
.end method

.method public static synthetic a()Landroidx/lifecycle/viewmodel/CreationExtras$Empty;
    .locals 1

    invoke-static {}, Landroidx/lifecycle/ViewModelLazy;->_init_$lambda$0()Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getValue()Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    iget-object v2, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lll3;

    invoke-interface {v2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    sget-object v3, Landroidx/lifecycle/ViewModelProvider;->Companion:Landroidx/lifecycle/ViewModelProvider$Companion;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider$Companion;->create(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lne4;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lne4;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
