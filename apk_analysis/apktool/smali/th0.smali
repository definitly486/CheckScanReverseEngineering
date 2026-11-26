.class public final synthetic Lth0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/window/PopupPositionProvider;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/foundation/BasicTooltipState;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lbm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZZLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p2, p0, Lth0;->c:Lbm3;

    iput-object p3, p0, Lth0;->d:Landroidx/compose/foundation/BasicTooltipState;

    iput-object p4, p0, Lth0;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lth0;->f:Z

    iput-boolean p6, p0, Lth0;->g:Z

    iput-boolean p7, p0, Lth0;->h:Z

    iput-object p8, p0, Lth0;->i:Lbm3;

    iput p9, p0, Lth0;->j:I

    iput p10, p0, Lth0;->k:I

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

    iget-object v0, p0, Lth0;->b:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v1, p0, Lth0;->c:Lbm3;

    iget-object v2, p0, Lth0;->d:Landroidx/compose/foundation/BasicTooltipState;

    iget-object v3, p0, Lth0;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lth0;->f:Z

    iget-boolean v5, p0, Lth0;->g:Z

    iget-boolean v6, p0, Lth0;->h:Z

    iget-object v7, p0, Lth0;->i:Lbm3;

    iget v8, p0, Lth0;->j:I

    iget v9, p0, Lth0;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/BasicTooltipKt;->k(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
