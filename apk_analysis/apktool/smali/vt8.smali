.class public final synthetic Lvt8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lvt8;->b:I

    iput-object p2, p0, Lvt8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lvt8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lvt8;->b:I

    iget-object v1, p0, Lvt8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lvt8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/impl/od;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/impl/od;->a(Lio/appmetrica/analytics/impl/od;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/lang/Runnable;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-static {p0, v1}, Landroidx/camera/core/impl/utils/Threads;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
