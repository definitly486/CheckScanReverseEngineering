.class public final synthetic Lsg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SwipeToDismissBoxState;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iput-boolean p2, p0, Lsg8;->c:Z

    iput-boolean p3, p0, Lsg8;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lsg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iget-boolean v1, p0, Lsg8;->c:Z

    iget-boolean p0, p0, Lsg8;->d:Z

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/SwipeToDismissBoxKt;->c(Landroidx/compose/material3/SwipeToDismissBoxState;ZZLandroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;

    move-result-object p0

    return-object p0
.end method
