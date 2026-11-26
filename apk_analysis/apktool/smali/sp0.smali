.class public final synthetic Lsp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lsp0;->b:I

    iput-object p1, p0, Lsp0;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsp0;->b:I

    iget-object p0, p0, Lsp0;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    iget-object p0, p0, Lsp0;->c:Lnl3;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->a(Lnl3;Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method
