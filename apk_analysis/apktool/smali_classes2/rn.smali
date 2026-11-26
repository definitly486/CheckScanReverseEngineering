.class public final synthetic Lrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Ldm3;

.field public final synthetic f:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic g:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic h:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn;->b:Lbm3;

    iput-object p2, p0, Lrn;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lrn;->d:Lbm3;

    iput-object p4, p0, Lrn;->e:Ldm3;

    iput-object p5, p0, Lrn;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Lrn;->g:Landroidx/compose/material3/TopAppBarColors;

    iput-object p7, p0, Lrn;->h:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p8, p0, Lrn;->i:I

    iput p9, p0, Lrn;->j:I

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

    iget-object v0, p0, Lrn;->b:Lbm3;

    iget-object v1, p0, Lrn;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lrn;->d:Lbm3;

    iget-object v3, p0, Lrn;->e:Ldm3;

    iget-object v4, p0, Lrn;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, p0, Lrn;->g:Landroidx/compose/material3/TopAppBarColors;

    iget-object v6, p0, Lrn;->h:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget v7, p0, Lrn;->i:I

    iget v8, p0, Lrn;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->s(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
