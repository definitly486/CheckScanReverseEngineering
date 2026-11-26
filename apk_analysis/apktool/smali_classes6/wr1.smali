.class public final synthetic Lwr1;
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

    iput p2, p0, Lwr1;->b:I

    iput-object p1, p0, Lwr1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwr1;->b:I

    iget-object p0, p0, Lwr1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lws6;

    invoke-static {p0}, Lyads/x32;->b(Lws6;)Lyads/mt1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->w(Lyads/nq0;)Lyads/so1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->l(Landroidx/compose/foundation/text/selection/SelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/navigation/NavDeepLink;

    invoke-static {p0}, Landroidx/navigation/NavDeepLink;->e(Landroidx/navigation/NavDeepLink;)Lg17;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->c(Landroidx/activity/ComponentActivity;)Landroidx/activity/OnBackPressedDispatcher;

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
