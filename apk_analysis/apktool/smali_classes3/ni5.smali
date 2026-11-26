.class public final synthetic Lni5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Landroidx/navigation/internal/NavControllerImpl;

.field public final synthetic d:Landroidx/navigation/NavDestination;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni5;->b:Ln07;

    iput-object p2, p0, Lni5;->c:Landroidx/navigation/internal/NavControllerImpl;

    iput-object p3, p0, Lni5;->d:Landroidx/navigation/NavDestination;

    iput-object p4, p0, Lni5;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lni5;->e:Landroid/os/Bundle;

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, p0, Lni5;->b:Ln07;

    iget-object v2, p0, Lni5;->c:Landroidx/navigation/internal/NavControllerImpl;

    iget-object p0, p0, Lni5;->d:Landroidx/navigation/NavDestination;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/navigation/internal/NavControllerImpl;->b(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method
