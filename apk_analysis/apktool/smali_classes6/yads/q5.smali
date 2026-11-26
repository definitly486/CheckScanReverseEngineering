.class public final Lyads/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g4;


# instance fields
.field public final a:Lyads/h9;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lyads/lf4;)V
    .locals 2

    new-instance v0, Lyads/h9;

    invoke-direct {v0}, Lyads/h9;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/q5;->a:Lyads/h9;

    iput-object v1, p0, Lyads/q5;->b:Ljava/lang/ref/WeakReference;

    iget-object p1, v0, Lyads/h9;->a:Lyads/e55;

    sget-object v0, Lyads/h9;->b:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lyads/q5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lf4;

    if-eqz p0, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->a()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object p1, Lyads/q1;->d:Lyads/q1;

    invoke-virtual {p0, p1}, Lyads/r1;->a(Lyads/q1;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p1}, Lyads/nf4;->b()V

    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->c()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p1}, Lyads/nf4;->b()V

    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object p1, Lyads/q1;->d:Lyads/q1;

    invoke-virtual {p0, p1}, Lyads/r1;->b(Lyads/q1;)V

    return-void

    :cond_0
    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object p1, Lyads/q1;->e:Lyads/q1;

    invoke-virtual {p0, p1}, Lyads/r1;->a(Lyads/q1;)V

    return-void

    :cond_1
    iget-object p1, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p1}, Lyads/nf4;->b()V

    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object p1, Lyads/q1;->e:Lyads/q1;

    invoke-virtual {p0, p1}, Lyads/r1;->b(Lyads/q1;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
