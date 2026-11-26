.class public final synthetic Lnh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/window/PopupPositionProvider;

.field public final synthetic c:Landroidx/compose/material3/TooltipState;

.field public final synthetic d:Lll3;

.field public final synthetic e:Ly22;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipState;Lll3;Ly22;ZLandroidx/compose/runtime/MutableState;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p2, p0, Lnh0;->c:Landroidx/compose/material3/TooltipState;

    iput-object p3, p0, Lnh0;->d:Lll3;

    iput-object p4, p0, Lnh0;->e:Ly22;

    iput-boolean p5, p0, Lnh0;->f:Z

    iput-object p6, p0, Lnh0;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lnh0;->h:Lbm3;

    iput p8, p0, Lnh0;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lnh0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v1, p0, Lnh0;->c:Landroidx/compose/material3/TooltipState;

    iget-object v2, p0, Lnh0;->d:Lll3;

    iget-object v3, p0, Lnh0;->e:Ly22;

    iget-boolean v4, p0, Lnh0;->f:Z

    iget-object v5, p0, Lnh0;->g:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lnh0;->h:Lbm3;

    iget v7, p0, Lnh0;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/internal/BasicTooltipKt;->b(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipState;Lll3;Ly22;ZLandroidx/compose/runtime/MutableState;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
