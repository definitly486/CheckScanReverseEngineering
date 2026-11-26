.class public final synthetic Lre0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lre0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lre0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/ee0;->a()Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->a()Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->d()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->a()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->a()Ljava/util/UUID;

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
