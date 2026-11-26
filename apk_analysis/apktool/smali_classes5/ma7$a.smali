.class public final Lma7$a;
.super Ly14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma7;-><init>(Lcom/google/gson/Gson;Lb37;Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lma7;


# direct methods
.method public constructor <init>(Lma7;)V
    .locals 0

    iput-object p1, p0, Lma7$a;->o:Lma7;

    invoke-direct {p0}, Ly14;-><init>()V

    return-void
.end method


# virtual methods
.method public final F(Lry6;)V
    .locals 1

    const-string p1, "SSERepository"

    const-string v0, "onClosed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lka7$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lka7$a;-><init>(Ly97;)V

    iget-object p0, p0, Lma7$a;->o:Lma7;

    iget-object v0, p0, Lma7;->d:Lzs7;

    invoke-virtual {v0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lma7;->b()V

    return-void
.end method

.method public final G(Lry6;Ljava/lang/String;)V
    .locals 2

    const-string p1, "onEvent: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSERepository"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lma7$a;->o:Lma7;

    :try_start_0
    iget-object p1, p0, Lma7;->a:Lcom/google/gson/Gson;

    new-instance v0, Lla7;

    invoke-direct {v0}, Lla7;-><init>()V

    iget-object v0, v0, Lx39;->b:Ljava/lang/reflect/Type;

    new-instance v1, Lx39;

    invoke-direct {v1, v0}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly97;

    new-instance p2, Lka7$a;

    invoke-direct {p2, p1}, Lka7$a;-><init>(Ly97;)V

    iget-object p0, p0, Lma7;->d:Lzs7;

    invoke-virtual {p0, p2}, Lzs7;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final H(Lry6;Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "SSERepository"

    const-string v0, "onFailure"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lma7$a;->o:Lma7;

    iget-object p0, p0, Lma7;->d:Lzs7;

    new-instance p1, Lka7$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lka7$a;-><init>(Ly97;)V

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final I(Lry6;Lz47;)V
    .locals 0

    const-string p1, "SSERepository"

    const-string p2, "onOpen"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lma7$a;->o:Lma7;

    iget-object p0, p0, Lma7;->d:Lzs7;

    new-instance p1, Lka7$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lka7$a;-><init>(Ly97;)V

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    return-void
.end method
