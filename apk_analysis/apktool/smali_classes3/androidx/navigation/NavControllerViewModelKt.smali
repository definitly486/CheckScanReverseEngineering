.class public final Landroidx/navigation/NavControllerViewModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    new-instance v1, Lgf0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgf0;-><init>(I)V

    const-class v2, Landroidx/navigation/NavControllerViewModel;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lne4;Lnl3;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavControllerViewModelKt;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method private static final FACTORY$lambda$1$lambda$0(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/NavControllerViewModel;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/navigation/NavControllerViewModel;

    invoke-direct {p0}, Landroidx/navigation/NavControllerViewModel;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/NavControllerViewModel;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavControllerViewModelKt;->FACTORY$lambda$1$lambda$0(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/NavControllerViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFACTORY$p()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    sget-object v0, Landroidx/navigation/NavControllerViewModelKt;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method
