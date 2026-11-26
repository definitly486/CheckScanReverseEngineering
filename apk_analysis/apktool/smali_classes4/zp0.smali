.class public final synthetic Lzp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/my/tracker/obfuscated/d3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lzp0;->b:I

    iput-object p1, p0, Lzp0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzp0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/tracker/obfuscated/p2;

    check-cast p1, Lcom/my/tracker/obfuscated/u2;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Lcom/my/tracker/obfuscated/f3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/p2;->b(Lcom/my/tracker/obfuscated/u2;Ljava/lang/Boolean;Lcom/my/tracker/obfuscated/f3;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzp0;->b:I

    iget-object p0, p0, Lzp0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lol6;

    invoke-virtual {p0, p1}, Lol6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laz8;

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzp0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->V(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
