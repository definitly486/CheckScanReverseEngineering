.class public final Landroidx/compose/material3/AppBarScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/AppBarScope;
.implements Landroidx/compose/material3/AppBarItemProvider;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/AppBarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/material3/AppBarScopeImpl;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clickableItem(Lll3;Lbm3;Ljava/lang/String;Z)V
    .locals 1
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

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroidx/compose/material3/ClickableAppBarItem;

    invoke-direct {v0, p1, p2, p4, p3}, Landroidx/compose/material3/ClickableAppBarItem;-><init>(Lll3;Lbm3;ZLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public customItem(Lbm3;Ldm3;)V
    .locals 1
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

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroidx/compose/material3/CustomAppBarItem;

    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/CustomAppBarItem;-><init>(Lbm3;Ldm3;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    iget-object p0, p0, Landroidx/compose/material3/AppBarScopeImpl;->items:Ljava/util/List;

    return-object p0
.end method

.method public getItemsCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toggleableItem(ZLnl3;Lbm3;Ljava/lang/String;Z)V
    .locals 6
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

    invoke-virtual {p0}, Landroidx/compose/material3/AppBarScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroidx/compose/material3/ToggleableAppBarItem;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ToggleableAppBarItem;-><init>(ZLnl3;Lbm3;ZLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
