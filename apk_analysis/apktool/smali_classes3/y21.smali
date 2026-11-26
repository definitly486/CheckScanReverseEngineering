.class public final synthetic Ly21;
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

    iput p1, p0, Ly21;->b:I

    iput-object p2, p0, Ly21;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly21;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ly21;->b:I

    iget-object v1, p0, Ly21;->d:Ljava/lang/Object;

    iget-object p0, p0, Ly21;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nn4;

    check-cast v1, Lyads/ln4;

    invoke-virtual {p0, v1}, Lyads/nn4;->a(Lyads/ln4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/work/impl/WorkDatabase;

    check-cast v1, Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable;->f(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/WorkManagerImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
