.class public final synthetic Lkg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkg0;->b:I

    iput-object p1, p0, Lkg0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkg0;->b:I

    iget-object p0, p0, Lkg0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->q(Lyads/gf0;)Lyads/xt5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/bo1;

    invoke-static {p0}, Lyads/bo1;->d(Lyads/bo1;)Lyads/dp3;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lda6;

    sget-object v0, Lba6$a;->a:Lba6$a;

    const/4 v1, 0x0

    new-array v1, v1, [Lmp7;

    new-instance v2, Lnk;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lnk;-><init>(Ljava/lang/Object;I)V

    const-string v3, "kotlinx.serialization.Polymorphic"

    invoke-static {v3, v0, v1, v2}, Lrp7;->e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;

    move-result-object v0

    iget-object p0, p0, Lda6;->a:Lne4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lmy1;

    invoke-direct {v1, v0, p0}, Lmy1;-><init>(Lop7;Lne4;)V

    return-object v1

    :pswitch_2
    check-cast p0, Lnl3;

    sget-object v0, Lun3$a;->a:Lun3$a;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->i(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->n(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
