.class public final synthetic Lch1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lze6;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lyads/tt3;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lch1;->b:I

    iput-object p1, p0, Lch1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lch1;->c:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgf9;

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 0

    iget-object p0, p0, Lch1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/a0;

    iput-object p1, p0, Lcom/my/target/a0;->e:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lch1;->b:I

    iget-object p0, p0, Lch1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bw4;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->e(Lyads/bw4;Lyads/iw4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->H(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lch1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lm21;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->j(Ljava/lang/String;Lm21;)Z

    move-result p0

    return p0
.end method
