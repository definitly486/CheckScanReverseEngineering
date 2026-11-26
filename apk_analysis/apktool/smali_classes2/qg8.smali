.class public final synthetic Lqg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SwipeToDismissBoxValue;

.field public final synthetic c:Landroidx/compose/ui/unit/Density;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg8;->b:Landroidx/compose/material3/SwipeToDismissBoxValue;

    iput-object p2, p0, Lqg8;->c:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Lqg8;->d:Lnl3;

    iput-object p4, p0, Lqg8;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lqg8;->d:Lnl3;

    iget-object v1, p0, Lqg8;->e:Lnl3;

    iget-object v2, p0, Lqg8;->b:Landroidx/compose/material3/SwipeToDismissBoxValue;

    iget-object p0, p0, Lqg8;->c:Landroidx/compose/ui/unit/Density;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/SwipeToDismissBoxKt;->h(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0
.end method
