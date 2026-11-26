.class public final synthetic Lai0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/window/PopupPositionProvider;

.field public final synthetic c:Landroidx/compose/foundation/BasicTooltipState;

.field public final synthetic d:Ly22;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Ly22;ZLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p2, p0, Lai0;->c:Landroidx/compose/foundation/BasicTooltipState;

    iput-object p3, p0, Lai0;->d:Ly22;

    iput-boolean p4, p0, Lai0;->e:Z

    iput-object p5, p0, Lai0;->f:Lbm3;

    iput p6, p0, Lai0;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lai0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v1, p0, Lai0;->c:Landroidx/compose/foundation/BasicTooltipState;

    iget-object v2, p0, Lai0;->d:Ly22;

    iget-boolean v3, p0, Lai0;->e:Z

    iget-object v4, p0, Lai0;->f:Lbm3;

    iget v5, p0, Lai0;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/BasicTooltipKt;->e(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Ly22;ZLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
