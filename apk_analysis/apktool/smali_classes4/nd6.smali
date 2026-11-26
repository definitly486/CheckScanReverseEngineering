.class public final synthetic Lnd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lnd6;->b:I

    iput-object p2, p0, Lnd6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lnd6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lnd6;->b:I

    iget-object v1, p0, Lnd6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lnd6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lfr;

    check-cast v1, Lyads/fs2;

    check-cast p1, Lyads/br0;

    invoke-static {p0, v1, p1}, Lyads/vq0;->a(Lfr;Lyads/fs2;Lyads/br0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lod6;

    iget-object v2, p0, Lod6;->c:Lta6;

    check-cast v1, Landroid/view/Window;

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v5, p0, Lod6;->d:Laz4;

    iget-object v6, v2, Lnb6;->I:Lqb6;

    iget-object p1, v2, Lta6;->N:Laq5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lx16;

    const/4 p1, 0x1

    invoke-direct {v7, p1, p0, v4}, Lx16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lzt0;

    invoke-direct {v8, p0, v4, v1, p1}, Lzt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lpn5;

    invoke-direct/range {v3 .. v8}, Lpn5;-><init>(Landroid/view/View;Laz4;Lqb6;Lx16;Lzt0;)V

    invoke-static {v4}, Ltl;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    new-instance p1, Lxe9;

    invoke-direct {p1, v3}, Lxe9;-><init>(Lpn5;)V

    iget-object p0, p0, Lod6;->e:Ljava/util/Map;

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    iget-object p1, v2, Lnb6;->v:Lic6;

    const-string v0, "Session Replay onDecorViewReady failed: "

    const/16 v1, 0x2e

    invoke-static {v0, p0, v1, p1}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
