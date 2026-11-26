.class public final Lwc5$a$t0;
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
        "Ln67;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$t0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$t0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$t0;->f:Lwc5$a$t0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KOIN: bonuses retrofit created"

    invoke-static {p0}, Ls0;->c(Ljava/lang/String;)V

    sget-object p0, Lon;->b:Lon;

    const-string p2, "server_host"

    invoke-virtual {p1, p2}, Lze7;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-class v0, Ldf5;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldf5;

    new-instance p1, Ln67$b;

    invoke-direct {p1}, Ln67$b;-><init>()V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln67$b;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lon;->c(ZZ)Lokhttp3/OkHttpClient$a;

    move-result-object p0

    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    iput-object p2, p1, Ln67$b;->a:Lokhttp3/a$a;

    sget-object p0, Lay3;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li02$a;

    invoke-virtual {p1, p0}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lxs3;

    invoke-direct {p2, p0}, Lxs3;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {p1, p2}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lc97;

    invoke-direct {p0}, Lgy0$a;-><init>()V

    iget-object p2, p1, Ln67$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ln67$b;->c()Ln67;

    move-result-object p0

    return-object p0
.end method
