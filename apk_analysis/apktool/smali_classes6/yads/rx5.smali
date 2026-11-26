.class public final synthetic Lyads/rx5;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# direct methods
.method public constructor <init>(Lyads/sx5;)V
    .locals 7

    const-string v5, "onTick(J)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lyads/sx5;

    const-string v4, "onTick"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lyads/sx5;

    iget-object p1, p0, Lyads/sx5;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lyads/sx5;->e:Lyads/vq0;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lyads/vq0;->z:Lyads/ub5;

    invoke-static {v1}, Lyads/vq0;->a(Lyads/ub5;)Lyads/fs2;

    move-result-object v1

    invoke-static {v2, p1, v0, v1}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;

    :cond_0
    iget-object p1, p0, Lyads/sx5;->e:Lyads/vq0;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/sx5;->b:Lyads/bt0;

    iget-object v1, p1, Lyads/vq0;->z:Lyads/ub5;

    invoke-static {v1}, Lyads/vq0;->a(Lyads/ub5;)Lyads/fs2;

    move-result-object v1

    iget-object p0, p0, Lyads/sx5;->h:Ljava/util/List;

    invoke-static {v0, p1, v1, p0}, Lyads/bt0;->a(Lyads/bt0;Lyads/vh2;Lyads/fs2;Ljava/util/List;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
