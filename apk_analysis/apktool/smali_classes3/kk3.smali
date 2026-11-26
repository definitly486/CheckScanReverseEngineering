.class public final synthetic Lkk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic c:Landroidx/navigation/NavigatorState;

.field public final synthetic d:Landroidx/navigation/fragment/FragmentNavigator;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk3;->b:Landroidx/navigation/NavBackStackEntry;

    iput-object p2, p0, Lkk3;->c:Landroidx/navigation/NavigatorState;

    iput-object p3, p0, Lkk3;->d:Landroidx/navigation/fragment/FragmentNavigator;

    iput-object p4, p0, Lkk3;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkk3;->d:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v1, p0, Lkk3;->e:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lkk3;->b:Landroidx/navigation/NavBackStackEntry;

    iget-object p0, p0, Lkk3;->c:Landroidx/navigation/NavigatorState;

    invoke-static {v2, p0, v0, v1}, Landroidx/navigation/fragment/FragmentNavigator;->j(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)Lj59;

    move-result-object p0

    return-object p0
.end method
