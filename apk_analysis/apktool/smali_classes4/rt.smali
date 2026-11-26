.class public final synthetic Lrt;
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

    iput p2, p0, Lrt;->b:I

    iput-object p1, p0, Lrt;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lrt;->b:I

    iget-object p0, p0, Lrt;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/w2;

    iget-object v0, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    iget-wide v1, p0, Lcom/my/target/w2;->l:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/my/target/m2$a;->n(D)V

    iget-wide v1, p0, Lcom/my/target/w2;->l:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const-wide/16 v3, 0xc8

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/my/target/w2;->l:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v1}, Lcom/my/target/l;->c()V

    iget-object v1, p0, Lcom/my/target/w2;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w2;->c:Lrt;

    invoke-virtual {v1, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/my/target/m2$a;->e()V

    const/4 p0, 0x1

    iget-object v0, v0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p0, v0, Lcom/my/target/r;->i:Z

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/window/area/WindowAreaPresentationSessionCallback;

    invoke-static {p0}, Landroidx/window/area/WindowAreaControllerImpl;->c(Landroidx/window/area/WindowAreaPresentationSessionCallback;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/search/SearchView;

    invoke-static {p0}, Lcom/google/android/material/search/SearchView;->k(Lcom/google/android/material/search/SearchView;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    invoke-static {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->d(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    invoke-static {p0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->b(Landroidx/media3/common/audio/AudioBecomingNoisyManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
