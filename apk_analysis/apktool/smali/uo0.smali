.class public final synthetic Luo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;
.implements Lxl3;
.implements Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;


# instance fields
.field public final synthetic b:Lcm3;


# direct methods
.method public synthetic constructor <init>(Lcm3;)V
    .locals 0

    iput-object p1, p0, Luo0;->b:Lcm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luo0;->b:Lcm3;

    check-cast p0, Ldm3;

    invoke-interface {p0, p1, p2, p3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luo0;->b:Lcm3;

    check-cast p0, Llu4;

    invoke-virtual {p0, p1}, Llu4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldu4;

    return-object p0
.end method

.method public calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    iget-object p0, p0, Luo0;->b:Lcm3;

    check-cast p0, Lnl3;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Lnl3;Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method
