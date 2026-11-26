.class public final synthetic Lmf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic e:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroidx/compose/foundation/layout/FlowRowOverflow;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf3;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lmf3;->c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p3, p0, Lmf3;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p4, p0, Lmf3;->e:Landroidx/compose/ui/Alignment$Vertical;

    iput p5, p0, Lmf3;->f:I

    iput p6, p0, Lmf3;->g:I

    iput-object p7, p0, Lmf3;->h:Landroidx/compose/foundation/layout/FlowRowOverflow;

    iput-object p8, p0, Lmf3;->i:Ldm3;

    iput p9, p0, Lmf3;->j:I

    iput p10, p0, Lmf3;->k:I

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

    iget-object v0, p0, Lmf3;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lmf3;->c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v2, p0, Lmf3;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v3, p0, Lmf3;->e:Landroidx/compose/ui/Alignment$Vertical;

    iget v4, p0, Lmf3;->f:I

    iget v5, p0, Lmf3;->g:I

    iget-object v6, p0, Lmf3;->h:Landroidx/compose/foundation/layout/FlowRowOverflow;

    iget-object v7, p0, Lmf3;->i:Ldm3;

    iget v8, p0, Lmf3;->j:I

    iget v9, p0, Lmf3;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
