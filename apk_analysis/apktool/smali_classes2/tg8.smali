.class public final synthetic Ltg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SwipeToDismissBoxState;

.field public final synthetic c:Ldm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lnl3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;Ldm3;Landroidx/compose/ui/Modifier;ZZZLnl3;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iput-object p2, p0, Ltg8;->c:Ldm3;

    iput-object p3, p0, Ltg8;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Ltg8;->e:Z

    iput-boolean p5, p0, Ltg8;->f:Z

    iput-boolean p6, p0, Ltg8;->g:Z

    iput-object p7, p0, Ltg8;->h:Lnl3;

    iput-object p8, p0, Ltg8;->i:Ldm3;

    iput p9, p0, Ltg8;->j:I

    iput p10, p0, Ltg8;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Ltg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iget-object v1, p0, Ltg8;->c:Ldm3;

    iget-object v2, p0, Ltg8;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Ltg8;->e:Z

    iget-boolean v4, p0, Ltg8;->f:Z

    iget-boolean v5, p0, Ltg8;->g:Z

    iget-object v6, p0, Ltg8;->h:Lnl3;

    iget-object v7, p0, Ltg8;->i:Ldm3;

    iget v8, p0, Ltg8;->j:I

    iget v9, p0, Ltg8;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SwipeToDismissBoxKt;->e(Landroidx/compose/material3/SwipeToDismissBoxState;Ldm3;Landroidx/compose/ui/Modifier;ZZZLnl3;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
