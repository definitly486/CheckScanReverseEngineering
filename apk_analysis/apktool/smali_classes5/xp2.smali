.class public final Lxp2;
.super Lio/grpc/m;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lxp2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.Application"

    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    sput-boolean v1, Lxp2;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La99;Lio/grpc/l$a;)Lio/grpc/l;
    .locals 7

    const-string p0, "dns"

    iget-object v0, p1, La99;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    new-instance p0, Lcom/google/common/collect/j$a;

    invoke-direct {p0}, Lcom/google/common/collect/j$a;-><init>()V

    iget-object v1, p1, La99;->e:Ljava/lang/String;

    invoke-static {v1, p0}, La99;->c(Ljava/lang/String;Lcom/google/common/collect/j$a;)V

    invoke-virtual {p0}, Lcom/google/common/collect/j$a;->g()Lcom/google/common/collect/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "expected 1 path segment in target %s but found %s"

    invoke-static {v1, v2, p1, p0}, Lo8;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/w;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    new-instance v1, Lwp2;

    iget-object p0, p1, La99;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, La99;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, La99;->e(Ljava/lang/String;)Ljava/lang/String;

    sget-object v4, Lvs3;->p:Lvs3$b;

    new-instance v5, La98;

    invoke-direct {v5}, La98;-><init>()V

    sget-boolean v6, Lxp2;->a:Z

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lwp2;-><init>(Ljava/lang/String;Lio/grpc/l$a;Lyt7$c;La98;Z)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/net/URI;Lio/grpc/l$a;)Lio/grpc/l;
    .locals 7

    const-string p0, "dns"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "targetPath"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v0, v1, p0, p1}, Lo8;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lwp2;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    sget-object v4, Lvs3;->p:Lvs3$b;

    new-instance v5, La98;

    invoke-direct {v5}, La98;-><init>()V

    sget-boolean v6, Lxp2;->a:Z

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lwp2;-><init>(Ljava/lang/String;Lio/grpc/l$a;Lyt7$c;La98;Z)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/util/Set;
    .locals 0

    const-class p0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
