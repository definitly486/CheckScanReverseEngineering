.class public final synthetic Lji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lji;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lji;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/zd2;->a(Ljava/lang/String;)Lyads/zd2;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/yw1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/cz2;

    invoke-static {p1}, Lyads/ry2;->d(Lyads/cz2;)Lyg5;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/az1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroidx/compose/ui/text/Savers_androidKt;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextMotion;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/internal/NavControllerImpl;->j(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroid/view/SurfaceView;

    invoke-static {p1}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->f(Landroid/view/SurfaceView;)Lj59;

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
