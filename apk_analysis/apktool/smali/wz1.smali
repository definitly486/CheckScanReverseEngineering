.class public final synthetic Lwz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic f:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;

.field public final synthetic j:Lfm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lfm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwz1;->b:I

    iput-object p2, p0, Lwz1;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lwz1;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p4, p0, Lwz1;->e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p5, p0, Lwz1;->f:Landroidx/compose/ui/Alignment$Horizontal;

    iput p6, p0, Lwz1;->g:I

    iput p7, p0, Lwz1;->h:I

    iput-object p8, p0, Lwz1;->i:Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;

    iput-object p9, p0, Lwz1;->j:Lfm3;

    iput p10, p0, Lwz1;->k:I

    iput p11, p0, Lwz1;->l:I

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

    iget v0, p0, Lwz1;->b:I

    iget-object v1, p0, Lwz1;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lwz1;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v3, p0, Lwz1;->e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v4, p0, Lwz1;->f:Landroidx/compose/ui/Alignment$Horizontal;

    iget v5, p0, Lwz1;->g:I

    iget v6, p0, Lwz1;->h:I

    iget-object v7, p0, Lwz1;->i:Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;

    iget-object v8, p0, Lwz1;->j:Lfm3;

    iget v9, p0, Lwz1;->k:I

    iget v10, p0, Lwz1;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt;->d(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lfm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
