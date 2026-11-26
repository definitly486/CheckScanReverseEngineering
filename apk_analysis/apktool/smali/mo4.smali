.class public final synthetic Lmo4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmo4;->b:I

    iput p2, p0, Lmo4;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmo4;->b:I

    iget p0, p0, Lmo4;->c:I

    invoke-static {v0, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->a(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object p0

    return-object p0
.end method
