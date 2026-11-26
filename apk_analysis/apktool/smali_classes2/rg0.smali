.class public final synthetic Lrg0;
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

    iput p2, p0, Lrg0;->b:I

    iput-object p1, p0, Lrg0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrg0;->b:I

    iget-object p0, p0, Lrg0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/e42;

    invoke-static {p0}, Lyads/e42;->a(Lyads/e42;)Lyads/te;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/SheetState;

    invoke-static {p0}, Landroidx/compose/material3/SheetState;->b(Landroidx/compose/material3/SheetState;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    invoke-static {p0}, Landroidx/compose/material3/OutlinedTextFieldKt;->b(Landroidx/compose/material3/internal/FloatProducer;)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->c(Lll3;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/foundation/text/TextLinkScope;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
