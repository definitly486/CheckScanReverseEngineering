.class public final synthetic Lg22;
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

    iput p2, p0, Lg22;->b:I

    iput-object p1, p0, Lg22;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg22;->b:I

    iget-object p0, p0, Lg22;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/um6;

    invoke-static {p0}, Lyads/um6;->a(Lyads/um6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->d(Lyads/nq0;)Lyads/or0;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/bo6;

    invoke-static {p0}, Lyads/bo6;->b(Lyads/bo6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/unit/IntRect;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextLinkScope;->j(Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->f(Lll3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->k(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
