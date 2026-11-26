.class public final Lfa7;
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
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lfa7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfa7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lfa7;->f:Lfa7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lx97;->e:Lba8;

    const-class p2, Lf94;

    invoke-static {p2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf94;

    sget-object p2, Lx97;->f:Lba8;

    const-class v1, Ll02;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll02;

    new-instance p2, Lokhttp3/OkHttpClient$a;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$a;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2, v0}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p2, Lokhttp3/OkHttpClient$a;->x:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v3

    iput v3, p2, Lokhttp3/OkHttpClient$a;->y:I

    invoke-static {v1, v2, v0}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p2, Lokhttp3/OkHttpClient$a;->z:I

    iget-object v0, p2, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p2, Lokhttp3/OkHttpClient$a;->j:Ll02;

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, p2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    return-object p0
.end method
