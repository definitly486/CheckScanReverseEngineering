.class public final synthetic Lcs4;
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

    iput p2, p0, Lcs4;->b:I

    iput-object p1, p0, Lcs4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcs4;->b:I

    iget-object p0, p0, Lcs4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/r85;

    invoke-virtual {p0}, Lyads/r85;->a()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {p0}, Landroidx/camera/core/processing/SurfaceEdge;->b(Landroidx/camera/core/processing/SurfaceEdge;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-static {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->a(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/paging/LivePagedList;

    invoke-static {p0}, Landroidx/paging/LivePagedList;->a(Landroidx/paging/LivePagedList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
