.class public final synthetic Lvg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SwipeToDismissBoxValue;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxValue;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvg8;->b:Landroidx/compose/material3/SwipeToDismissBoxValue;

    iput-object p2, p0, Lvg8;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvg8;->b:Landroidx/compose/material3/SwipeToDismissBoxValue;

    iget-object p0, p0, Lvg8;->c:Lnl3;

    invoke-static {p0, v0}, Landroidx/compose/material3/SwipeToDismissBoxKt;->f(Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0
.end method
