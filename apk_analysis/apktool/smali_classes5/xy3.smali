.class public final Lxy3;
.super Lys6;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:Ljava/net/InetSocketAddress;

.field public final c:Ljava/net/InetSocketAddress;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "The proxy address %s is not resolved"

    invoke-static {v2, v1, p1}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iput-object p1, p0, Lxy3;->b:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lxy3;->c:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lxy3;->d:Ljava/util/Map;

    iput-object p3, p0, Lxy3;->e:Ljava/lang/String;

    iput-object p4, p0, Lxy3;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lxy3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lxy3;

    iget-object v0, p0, Lxy3;->b:Ljava/net/InetSocketAddress;

    iget-object v1, p1, Lxy3;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxy3;->c:Ljava/net/InetSocketAddress;

    iget-object v1, p1, Lxy3;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxy3;->e:Ljava/lang/String;

    iget-object v1, p1, Lxy3;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lxy3;->f:Ljava/lang/String;

    iget-object p1, p1, Lxy3;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lxy3;->f:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v2, p0, Lxy3;->b:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lxy3;->c:Ljava/net/InetSocketAddress;

    iget-object p0, p0, Lxy3;->e:Ljava/lang/String;

    filled-new-array {v2, v3, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "proxyAddr"

    iget-object v2, p0, Lxy3;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetAddr"

    iget-object v2, p0, Lxy3;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lxy3;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lxy3;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "hasPassword"

    invoke-virtual {v0, v1, p0}, Lod5$a;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
