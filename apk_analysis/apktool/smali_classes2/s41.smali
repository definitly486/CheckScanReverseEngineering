.class public final synthetic Ls41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ls41;->b:I

    iput-object p1, p0, Ls41;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ls41;->b:I

    iget-object p0, p0, Ls41;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/x1;->a([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/s25;

    invoke-static {p0}, Lyads/s25;->a(Lyads/s25;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->a(Landroidx/constraintlayout/helper/widget/Carousel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
