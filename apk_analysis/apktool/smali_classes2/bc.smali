.class public final synthetic Lbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lbc;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/g05;->a()[B

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/activity/compose/ReportDrawnKt;->e()Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->e()Z

    move-result p0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroidx/compose/material3/AlertDialogKt;->b()Landroidx/compose/material3/BasicAlertDialogOverride;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
