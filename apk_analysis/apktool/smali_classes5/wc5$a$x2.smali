.class public final Lwc5$a$x2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Leu4;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$x2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$x2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$x2;->f:Lwc5$a$x2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lon;->b:Lon;

    const-string p2, "location_by_ip_base_url"

    invoke-virtual {p1, p2}, Lze7;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Lokhttp3/OkHttpClient$a;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$a;-><init>()V

    sget-object v0, Lon;->c:Lbz3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lp72;->i:Lba8;

    instance-of v2, p0, Log4;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v4, p0, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf94;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, p2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    invoke-static {p1, p0}, Lon;->a(Ljava/lang/String;Lokhttp3/OkHttpClient;)Ln67;

    move-result-object p0

    const-class p1, Leu4;

    invoke-virtual {p0, p1}, Ln67;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Leu4;

    return-object p0
.end method
