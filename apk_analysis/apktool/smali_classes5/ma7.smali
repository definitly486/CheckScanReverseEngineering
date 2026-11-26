.class public final Lma7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lka7;


# instance fields
.field public final a:Lcom/google/gson/Gson;

.field public final b:Lb37;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Lzs7;

.field public e:Lry6;

.field public final f:Lma7$a;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lb37;Lokhttp3/OkHttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma7;->a:Lcom/google/gson/Gson;

    iput-object p2, p0, Lma7;->b:Lb37;

    iput-object p3, p0, Lma7;->c:Lokhttp3/OkHttpClient;

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/16 v0, 0x40

    invoke-static {p3, v0, p1, p2}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Lma7;->d:Lzs7;

    new-instance p1, Lma7$a;

    invoke-direct {p1, p0}, Lma7$a;-><init>(Lma7;)V

    iput-object p1, p0, Lma7;->f:Lma7$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lma7;->e:Lry6;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lma7;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lma7;->e:Lry6;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lry6;->b:Ljy6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljy6;->cancel()V

    goto :goto_0

    :cond_0
    const-string p0, "call"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lma7;->f:Lma7$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lma7;->b:Lb37;

    iget-object v2, v1, Lb37;->c:Ljv3;

    const-string v3, "Accept"

    invoke-virtual {v2, v3}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lb37;->a()Lb37$a;

    move-result-object v1

    const-string v2, "text/event-stream"

    iget-object v4, v1, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v4, v3, v2}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb37$a;->a()Lb37;

    move-result-object v1

    :cond_2
    new-instance v2, Lry6;

    invoke-direct {v2, v1, v0}, Lry6;-><init>(Lb37;Ly14;)V

    iget-object v0, p0, Lma7;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->e()Lokhttp3/OkHttpClient$a;

    move-result-object v0

    sget-object v3, Lokhttp3/b;->NONE:Lokhttp3/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lgb9;->a:[B

    new-instance v4, Ly52;

    invoke-direct {v4, v3}, Ly52;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/b$c;

    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    new-instance v0, Ljy6;

    invoke-direct {v0, v3, v1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    iput-object v0, v2, Lry6;->b:Ljy6;

    invoke-virtual {v0, v2}, Ljy6;->a(Lty0;)V

    iput-object v2, p0, Lma7;->e:Lry6;

    return-void
.end method

.method public final c()Lfy6;
    .locals 0

    iget-object p0, p0, Lma7;->d:Lzs7;

    invoke-static {p0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p0

    return-object p0
.end method
