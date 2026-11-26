.class final Landroidx/compose/material3/AppBarColumnScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/AppBarColumnScope;
.implements Landroidx/compose/material3/AppBarScope;
.implements Landroidx/compose/material3/AppBarItemProvider;


# instance fields
.field private final impl:Landroidx/compose/material3/AppBarScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/AppBarScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    return-void
.end method


# virtual methods
.method public clickableItem(Lll3;Lbm3;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/AppBarScopeImpl;->clickableItem(Lll3;Lbm3;Ljava/lang/String;Z)V

    return-void
.end method

.method public customItem(Lbm3;Ldm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/AppBarMenuState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/AppBarScopeImpl;->customItem(Lbm3;Ldm3;)V

    return-void
.end method

.method public final getImpl()Landroidx/compose/material3/AppBarScopeImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/AppBarItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItemsCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItemsCount()I

    move-result p0

    return p0
.end method

.method public toggleableItem(ZLnl3;Lbm3;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AppBarColumnScopeImpl;->impl:Landroidx/compose/material3/AppBarScopeImpl;

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/AppBarScopeImpl;->toggleableItem(ZLnl3;Lbm3;Ljava/lang/String;Z)V

    return-void
.end method
