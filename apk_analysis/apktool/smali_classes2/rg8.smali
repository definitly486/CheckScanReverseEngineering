.class public final synthetic Lrg8;
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

.field public final synthetic h:Ldm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;Ldm3;Landroidx/compose/ui/Modifier;ZZZLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iput-object p2, p0, Lrg8;->c:Ldm3;

    iput-object p3, p0, Lrg8;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lrg8;->e:Z

    iput-boolean p5, p0, Lrg8;->f:Z

    iput-boolean p6, p0, Lrg8;->g:Z

    iput-object p7, p0, Lrg8;->h:Ldm3;

    iput p8, p0, Lrg8;->i:I

    iput p9, p0, Lrg8;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lrg8;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iget-object v1, p0, Lrg8;->c:Ldm3;

    iget-object v2, p0, Lrg8;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lrg8;->e:Z

    iget-boolean v4, p0, Lrg8;->f:Z

    iget-boolean v5, p0, Lrg8;->g:Z

    iget-object v6, p0, Lrg8;->h:Ldm3;

    iget v7, p0, Lrg8;->i:I

    iget v8, p0, Lrg8;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SwipeToDismissBoxKt;->i(Landroidx/compose/material3/SwipeToDismissBoxState;Ldm3;Landroidx/compose/ui/Modifier;ZZZLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
