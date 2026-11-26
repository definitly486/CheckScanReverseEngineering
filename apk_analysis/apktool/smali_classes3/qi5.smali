.class public final synthetic Lqi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lp07;

.field public final synthetic e:Landroidx/navigation/internal/NavControllerImpl;

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqi5;->b:Ln07;

    iput-object p2, p0, Lqi5;->c:Ljava/util/List;

    iput-object p3, p0, Lqi5;->d:Lp07;

    iput-object p4, p0, Lqi5;->e:Landroidx/navigation/internal/NavControllerImpl;

    iput-object p5, p0, Lqi5;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lqi5;->f:Landroid/os/Bundle;

    move-object v5, p1

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, p0, Lqi5;->b:Ln07;

    iget-object v1, p0, Lqi5;->c:Ljava/util/List;

    iget-object v2, p0, Lqi5;->d:Lp07;

    iget-object v3, p0, Lqi5;->e:Landroidx/navigation/internal/NavControllerImpl;

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->i(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method
