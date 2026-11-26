.class public final Landroidx/navigation/NavGraphViewModelLazyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$navGraphViewModels$lambda-0(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels$lambda-0(Lcl4;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navGraphViewModels$lambda-1(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels$lambda-1(Lcl4;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navGraphViewModels$lambda-2(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels$lambda-2(Lcl4;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navGraphViewModels$lambda-3(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels$lambda-3(Lcl4;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final navGraphViewModels(Landroidx/fragment/app/Fragment;ILll3;)Lcl4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lcl4<",
            "TVM;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 31
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 32
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1;-><init>(Lcl4;)V

    .line 33
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final navGraphViewModels(Landroidx/fragment/app/Fragment;ILll3;Lll3;)Lcl4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lcl4<",
            "TVM;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 27
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 28
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2;-><init>(Lcl4;)V

    .line 29
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final navGraphViewModels(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lll3;)Lcl4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lcl4<",
            "TVM;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3;-><init>(Lcl4;)V

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final navGraphViewModels(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lll3;Lll3;)Lcl4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lll3<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lcl4<",
            "TVM;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 35
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 36
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4;-><init>(Lcl4;)V

    .line 37
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static navGraphViewModels$default(Landroidx/fragment/app/Fragment;ILll3;ILjava/lang/Object;)Lcl4;
    .locals 0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 33
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 34
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1;-><init>(Lcl4;)V

    .line 35
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static navGraphViewModels$default(Landroidx/fragment/app/Fragment;ILll3;Lll3;ILjava/lang/Object;)Lcl4;
    .locals 0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 28
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 29
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2;-><init>(Lcl4;)V

    .line 30
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static navGraphViewModels$default(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lll3;ILjava/lang/Object;)Lcl4;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3;-><init>(Lcl4;)V

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static navGraphViewModels$default(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lll3;Lll3;ILjava/lang/Object;)Lcl4;
    .locals 0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance p2, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11;

    invoke-direct {p2, p0, p1}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 38
    new-instance p0, Lfh8;

    invoke-direct {p0, p2}, Lfh8;-><init>(Lll3;)V

    .line 39
    new-instance p1, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4;

    invoke-direct {p1, p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4;-><init>(Lcl4;)V

    .line 40
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final navGraphViewModels$lambda-0(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method private static final navGraphViewModels$lambda-1(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method private static final navGraphViewModels$lambda-2(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method private static final navGraphViewModels$lambda-3(Lcl4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method
