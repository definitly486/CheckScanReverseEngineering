.class public final synthetic Lpm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpm4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iput p3, p0, Lpm4;->c:I

    iput-object p2, p0, Lpm4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lpm4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget v1, p0, Lpm4;->c:I

    iget-object p0, p0, Lpm4;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->b(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
