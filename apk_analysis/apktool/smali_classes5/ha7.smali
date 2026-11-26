.class public final Lha7;
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
        "Lka7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lha7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lha7;->f:Lha7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lma7;

    sget-object p2, Lx97;->b:Lba8;

    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/Gson;

    sget-object v0, Lx97;->d:Lba8;

    const-class v2, Lb37;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb37;

    sget-object v2, Lx97;->c:Lba8;

    const-class v3, Lokhttp3/OkHttpClient;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/OkHttpClient;

    invoke-direct {p0, p2, v0, p1}, Lma7;-><init>(Lcom/google/gson/Gson;Lb37;Lokhttp3/OkHttpClient;)V

    return-object p0
.end method
