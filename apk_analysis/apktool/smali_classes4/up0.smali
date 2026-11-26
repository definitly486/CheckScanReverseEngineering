.class public final synthetic Lup0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Leh8$a;
.implements Lcom/tapjoy/TJTaskHandler;
.implements Lyads/d85;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lup0;->b:I

    iput-object p1, p0, Lup0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/r75;)Z
    .locals 0

    iget-object p0, p0, Lup0;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lyads/z75;->a(Ljava/lang/Object;Lyads/r75;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lup0;->b:I

    iget-object p0, p0, Lup0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->e(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)Ldt6;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lzv2;

    invoke-virtual {p0, p1}, Lzv2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhl3;

    return-object p0

    :pswitch_1
    check-cast p0, Lwg1;

    invoke-virtual {p0, p1}, Lwg1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_2
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lup0;->c:Ljava/lang/Object;

    check-cast p0, Ljk9;

    iget-object v0, p0, Ljk9;->b:Lf13;

    invoke-interface {v0}, Lf13;->R()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls29;

    iget-object v2, p0, Ljk9;->c:Lpk9;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lpk9;->a(Ls29;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lup0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->B(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lup0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/tapjoy/a0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/tapjoy/internal/p1;->a(Lcom/tapjoy/TJPlacementRequestListener;Ljava/lang/Boolean;)V

    return-void
.end method
