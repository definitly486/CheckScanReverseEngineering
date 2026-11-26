.class public final synthetic Lc26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;ILjava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc26;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc26;->e:Ljava/lang/Object;

    iput p2, p0, Lc26;->c:I

    iput-object p3, p0, Lc26;->f:Ljava/lang/Object;

    iput p4, p0, Lc26;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;II)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lc26;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc26;->e:Ljava/lang/Object;

    iput-object p2, p0, Lc26;->f:Ljava/lang/Object;

    iput p3, p0, Lc26;->c:I

    iput p4, p0, Lc26;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lc26;->b:I

    iget-object v1, p0, Lc26;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lc26;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lbm3;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v4, p0, Lc26;->c:I

    iget v5, p0, Lc26;->d:I

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->b(Landroidx/compose/ui/Modifier;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v1, p0, Lc26;->c:I

    iget-object v2, p0, Lc26;->f:Ljava/lang/Object;

    iget v3, p0, Lc26;->d:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->b(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;ILjava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
