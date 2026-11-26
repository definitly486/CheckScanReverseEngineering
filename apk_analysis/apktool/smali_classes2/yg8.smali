.class public final synthetic Lyg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Density;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;Lnl3;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyg8;->b:Landroidx/compose/ui/unit/Density;

    iput-object p1, p0, Lyg8;->c:Lnl3;

    iput-object p2, p0, Lyg8;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyg8;->d:Lnl3;

    check-cast p1, Landroidx/compose/material3/SwipeToDismissBoxValue;

    iget-object v1, p0, Lyg8;->b:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Lyg8;->c:Lnl3;

    invoke-static {p1, v1, p0, v0}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->a(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0
.end method
