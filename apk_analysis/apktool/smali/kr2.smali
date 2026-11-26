.class public final synthetic Lkr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkr2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkr2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/m64;->a()Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_0
    :try_start_0
    new-instance p0, Lnv5;

    invoke-direct {p0}, Lnv5;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lv83;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ldp7;->f(Ljava/util/Iterator;)Lzo7;

    move-result-object p0

    invoke-static {p0}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/util/ServiceConfigurationError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1
    invoke-static {}, Landroidx/compose/material3/SearchBarDefaults;->i()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->q()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->h()Lj59;

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
