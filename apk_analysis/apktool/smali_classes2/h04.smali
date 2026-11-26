.class public final synthetic Lh04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lh04;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lh04;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/jq1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lyads/l20;

    invoke-static {p1}, Lyads/a30;->a(Lyads/l20;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Landroidx/compose/material3/TextKt;->m(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->B(Ljava/lang/Object;)Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-static {p1}, Landroidx/compose/material3/ProgressIndicatorKt;->f(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/navigation/PopUpToBuilder;

    invoke-static {p1}, Landroidx/navigation/NavOptionsBuilder;->b(Landroidx/navigation/PopUpToBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p1}, Landroidx/compose/material3/IconButtonKt;->h(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
