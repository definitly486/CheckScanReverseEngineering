.class public final synthetic Lan4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan4;->b:Ljava/lang/Object;

    iput p2, p0, Lan4;->c:I

    iput-object p3, p0, Lan4;->d:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iput-object p4, p0, Lan4;->e:Lbm3;

    iput p5, p0, Lan4;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lan4;->b:Ljava/lang/Object;

    iget v1, p0, Lan4;->c:I

    iget-object v2, p0, Lan4;->d:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v3, p0, Lan4;->e:Lbm3;

    iget v4, p0, Lan4;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->b(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
