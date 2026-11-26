.class public final synthetic Lmh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/BasicTooltipState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/BasicTooltipState;ZLandroidx/compose/ui/Modifier;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmh0;->b:Z

    iput-object p2, p0, Lmh0;->c:Landroidx/compose/foundation/BasicTooltipState;

    iput-boolean p3, p0, Lmh0;->d:Z

    iput-object p4, p0, Lmh0;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lmh0;->f:Lbm3;

    iput p6, p0, Lmh0;->g:I

    iput p7, p0, Lmh0;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-boolean v0, p0, Lmh0;->b:Z

    iget-object v1, p0, Lmh0;->c:Landroidx/compose/foundation/BasicTooltipState;

    iget-boolean v2, p0, Lmh0;->d:Z

    iget-object v3, p0, Lmh0;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lmh0;->f:Lbm3;

    iget v5, p0, Lmh0;->g:I

    iget v6, p0, Lmh0;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/BasicTooltipKt;->g(ZLandroidx/compose/foundation/BasicTooltipState;ZLandroidx/compose/ui/Modifier;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
