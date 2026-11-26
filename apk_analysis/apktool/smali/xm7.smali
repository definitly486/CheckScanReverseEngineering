.class public final synthetic Lxm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/Selection;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Lnl3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm7;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxm7;->c:Landroidx/compose/foundation/text/selection/Selection;

    iput-object p3, p0, Lxm7;->d:Lnl3;

    iput-object p4, p0, Lxm7;->e:Lbm3;

    iput p5, p0, Lxm7;->f:I

    iput p6, p0, Lxm7;->g:I

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

    iget-object v0, p0, Lxm7;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lxm7;->c:Landroidx/compose/foundation/text/selection/Selection;

    iget-object v2, p0, Lxm7;->d:Lnl3;

    iget-object v3, p0, Lxm7;->e:Lbm3;

    iget v4, p0, Lxm7;->f:I

    iget v5, p0, Lxm7;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Lnl3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
