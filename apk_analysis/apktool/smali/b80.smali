.class public final synthetic Lb80;
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

    iput p2, p0, Lb80;->b:I

    iput-object p1, p0, Lb80;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb80;->b:I

    iget-object p0, p0, Lb80;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/x73;

    invoke-static {p0}, Lyads/x73;->a(Lyads/x73;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->u(Lyads/nq0;)Lyads/ii1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/n32;

    invoke-static {p0}, Lyads/n32;->a(Lyads/n32;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/b8;

    invoke-static {p0}, Lyads/b8;->a(Lyads/b8;)Lyads/i8;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/material3/TimePickerState;

    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt;->F(Landroidx/compose/material3/TimePickerState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->e(Landroidx/compose/runtime/Recomposer;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->a(Landroidx/paging/PagingDataPresenter;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/navigation/internal/NavDestinationImpl;->b(Ljava/lang/String;)Landroidx/navigation/NavDeepLink;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->c(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Li80;

    new-instance v0, Lhy;

    invoke-direct {v0, p0}, Lhy;-><init>(Li80;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
