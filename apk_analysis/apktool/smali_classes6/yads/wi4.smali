.class public final synthetic Lyads/wi4;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# direct methods
.method public constructor <init>(Lyads/xi4;)V
    .locals 7

    const-string v5, "stopCountdownTimer()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lyads/xi4;

    const-string v4, "stopCountdownTimer"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lyads/xi4;

    iget-object v0, p0, Lyads/xi4;->e:Lyads/z95;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/z95;->c:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/xi4;->e:Lyads/z95;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
