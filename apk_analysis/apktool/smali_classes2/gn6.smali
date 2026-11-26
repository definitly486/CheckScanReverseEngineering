.class public final synthetic Lgn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgn6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lgn6;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lyads/mh0;

    invoke-static {p1}, Lyads/ig6;->a(Lyads/mh0;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/f11;->a(Ljava/lang/String;)Lyads/f11;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/v14;

    invoke-static {p1}, Lyads/e14;->a(Lyads/v14;)Lyads/by3;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/a92;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->e(F)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->d(Landroidx/compose/ui/text/input/TextFieldValue;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->b0(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextDirection;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-static {p1}, Landroidx/compose/material3/ProgressIndicatorKt;->p(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
