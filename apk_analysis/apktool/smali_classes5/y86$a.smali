.class public final Ly86$a;
.super Ly86;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lvz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvz5<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lvz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvz5<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lvz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvz5<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lvz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvz5<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ly86$e;


# direct methods
.method public constructor <init>(Lvz5;Lvz5;Lvz5;Lvz5;Ljava/security/Provider;Ly86$e;)V
    .locals 0

    invoke-direct {p0, p5}, Ly86;-><init>(Ljava/security/Provider;)V

    iput-object p1, p0, Ly86$a;->e:Lvz5;

    iput-object p2, p0, Ly86$a;->f:Lvz5;

    iput-object p3, p0, Ly86$a;->g:Lvz5;

    iput-object p4, p0, Ly86$a;->h:Lvz5;

    iput-object p6, p0, Ly86$a;->i:Ly86$e;

    return-void
.end method


# virtual methods
.method public final c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus6;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ly86$a;->e:Lvz5;

    invoke-virtual {v1, p1, v0}, Lvz5;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Ly86$a;->f:Lvz5;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lvz5;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object p0, p0, Ly86$a;->h:Lvz5;

    invoke-virtual {p0, p2}, Lvz5;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Ly86;->b(Ljava/util/List;)[B

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvz5;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Ly86$a;->g:Lvz5;

    invoke-virtual {p0, v0}, Lvz5;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lvz5;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lfb9;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final e()Ly86$e;
    .locals 0

    iget-object p0, p0, Ly86$a;->i:Ly86$e;

    return-object p0
.end method
