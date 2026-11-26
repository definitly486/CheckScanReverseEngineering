.class public final synthetic Lqh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/window/PopupPositionProvider;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/material3/TooltipState;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Lll3;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Lbm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;Lll3;ZZZLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p2, p0, Lqh0;->c:Lbm3;

    iput-object p3, p0, Lqh0;->d:Landroidx/compose/material3/TooltipState;

    iput-object p4, p0, Lqh0;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lqh0;->f:Lll3;

    iput-boolean p6, p0, Lqh0;->g:Z

    iput-boolean p7, p0, Lqh0;->h:Z

    iput-boolean p8, p0, Lqh0;->i:Z

    iput-object p9, p0, Lqh0;->j:Lbm3;

    iput p10, p0, Lqh0;->k:I

    iput p11, p0, Lqh0;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lqh0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v1, p0, Lqh0;->c:Lbm3;

    iget-object v2, p0, Lqh0;->d:Landroidx/compose/material3/TooltipState;

    iget-object v3, p0, Lqh0;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lqh0;->f:Lll3;

    iget-boolean v5, p0, Lqh0;->g:Z

    iget-boolean v6, p0, Lqh0;->h:Z

    iget-boolean v7, p0, Lqh0;->i:Z

    iget-object v8, p0, Lqh0;->j:Lbm3;

    iget v9, p0, Lqh0;->k:I

    iget v10, p0, Lqh0;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/internal/BasicTooltipKt;->f(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;Lll3;ZZZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
