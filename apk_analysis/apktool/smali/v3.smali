.class public final synthetic Lv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;)V
    .locals 0

    iput-object p1, p0, Lv3;->b:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv3;->b:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    iget-object p0, p0, Lv3;->b:Lnl3;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Lnl3;Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method
