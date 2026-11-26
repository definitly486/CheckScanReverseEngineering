.class public final Lon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg4;


# static fields
.field public static final b:Lon;

.field public static final c:Lbz3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lon;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lon;->b:Lon;

    new-instance v0, Lbz3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbz3;-><init>(I)V

    sget-object v1, Lbz3$a;->NONE:Lbz3$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lbz3;->c:Lbz3$a;

    sput-object v0, Lon;->c:Lbz3;

    return-void
.end method

.method public static a(Ljava/lang/String;Lokhttp3/OkHttpClient;)Ln67;
    .locals 2

    new-instance v0, Ln67$b;

    invoke-direct {v0}, Ln67$b;-><init>()V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln67$b;->b(Ljava/lang/String;)V

    iput-object p1, v0, Ln67$b;->a:Lokhttp3/a$a;

    sget-object p0, Lay3;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li02$a;

    invoke-virtual {v0, p0}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lxs3;

    invoke-direct {p1, p0}, Lxs3;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {v0, p1}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lc97;

    invoke-direct {p0}, Lgy0$a;-><init>()V

    iget-object p1, v0, Ln67$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ln67$b;->c()Ln67;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(ZZ)Lokhttp3/OkHttpClient$a;
    .locals 5

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x1e

    invoke-static {v2, v3, v1}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v4

    iput v4, v0, Lokhttp3/OkHttpClient$a;->x:I

    invoke-static {v2, v3, v1}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v0, Lokhttp3/OkHttpClient$a;->z:I

    const-wide/16 v2, 0x5a

    invoke-static {v2, v3, v1}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/OkHttpClient$a;->y:I

    sget-object v1, Lon;->c:Lbz3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, p0, Log4;

    const-class v3, Lev3;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v4}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lf94;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lon;->b:Lon;

    if-eqz p1, :cond_2

    instance-of p1, p0, Log4;

    const-class v1, La59;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Log4;

    invoke-interface {p1}, Log4;->getScope()Lze7;

    move-result-object p1

    invoke-static {v1, p1, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Ljg4;->b()Lhg4;

    move-result-object p1

    iget-object p1, p1, Lhg4;->c:Lbf7;

    iget-object p1, p1, Lbf7;->d:Lze7;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v4}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lf94;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_4

    instance-of p1, p0, Log4;

    const-class p2, Lqx;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Log4;

    invoke-interface {p1}, Log4;->getScope()Lze7;

    move-result-object p1

    invoke-static {p2, p1, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-super {p0}, Ljg4;->b()Lhg4;

    move-result-object p1

    iget-object p1, p1, Lhg4;->c:Lbf7;

    iget-object p1, p1, Lbf7;->d:Lze7;

    invoke-static {p2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v4}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Ll02;

    iput-object p1, v0, Lokhttp3/OkHttpClient$a;->j:Ll02;

    :cond_4
    sget-object p1, Lp72;->i:Lba8;

    instance-of p2, p0, Log4;

    const-class v1, Ljava/util/List;

    if-eqz p2, :cond_5

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v1, p0, p1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-super {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    invoke-virtual {p0, p2, v4, p1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf94;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v0
.end method
