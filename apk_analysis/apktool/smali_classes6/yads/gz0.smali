.class public final Lyads/gz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/zv0;Lyads/vq0;Lyads/fs2;)V
    .locals 2

    iget-object v0, p0, Lyads/zv0;->a:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lyads/zv0;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :try_start_0
    invoke-static {v0}, Lyads/m32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object p2
    :try_end_0
    .catch Lyads/pt4; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2, p0}, Lyads/vq0;->a(Lyads/n32;Z)V

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format of "

    invoke-static {v1, v0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    .line 44
    instance-of p0, p2, Lyads/jy0;

    if-eqz p0, :cond_0

    .line 45
    check-cast p2, Lyads/jy0;

    .line 46
    iget-object p0, p2, Lyads/jy0;->a:Lyads/zv0;

    .line 47
    invoke-static {p0, p3, p4}, Lyads/gz0;->a(Lyads/zv0;Lyads/vq0;Lyads/fs2;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
