.class public final Ld86$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:Ld86$h;

.field public final synthetic b:Ld86;


# direct methods
.method public constructor <init>(Ld86;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld86$d;->b:Ld86;

    return-void
.end method


# virtual methods
.method public final a(Ldx1;)V
    .locals 6

    iget-object v0, p0, Ld86$d;->b:Ld86;

    iget-object v1, v0, Ld86;->i:Ld86$e;

    iget-boolean v2, v0, Ld86;->o:Z

    if-eqz v2, :cond_0

    sget-object v0, Ld86;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object p0, p0, Ld86$d;->a:Ld86$h;

    iget-object p0, p0, Ld86$h;->a:Lio/grpc/h$j;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring health status {0} for subchannel {1} as this is not under a petiole policy"

    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v2, Ld86;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v4, p0, Ld86$d;->a:Ld86$h;

    iget-object v4, v4, Ld86$h;->a:Lio/grpc/h$j;

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Received health status {0} for subchannel {1}"

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Ld86$d;->a:Ld86$h;

    iput-object p1, v2, Ld86$h;->d:Ldx1;

    invoke-virtual {v1}, Ld86$e;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld86$d;->a:Ld86$h;

    iget-object v2, v0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ld86$e;->a()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Ld86$d;->a:Ld86$h;

    invoke-virtual {v0, p0}, Ld86;->j(Ld86$h;)V

    :cond_1
    return-void
.end method
