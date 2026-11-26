.class public final synthetic Landroidx/compose/foundation/lazy/grid/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/b;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/b;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/b;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/b;->c:I

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
