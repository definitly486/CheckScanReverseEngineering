.class public final synthetic Landroidx/compose/foundation/lazy/grid/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/c;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/c;->c:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/c;->d:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/c;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/c;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/c;->c:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/c;->d:Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/foundation/lazy/grid/c;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;ILjava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
