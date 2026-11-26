.class public final synthetic Lau0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lau0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lau0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/zg1;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/tz1;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Landroidx/compose/ui/text/Savers_androidKt;->h(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextMotion$Linearity;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/internal/NavControllerImpl;->k(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a(Landroidx/compose/runtime/CompositionLocalAccessorScope;)Landroidx/compose/foundation/gestures/BringIntoViewSpec;

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
