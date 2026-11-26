.class public final Lwc5$a$u0;
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
.field public static final f:Lwc5$a$u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$u0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$u0;->f:Lwc5$a$u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KOIN: plain retrofit created"

    invoke-static {p0}, Ls0;->c(Ljava/lang/String;)V

    sget-object p0, Lon;->b:Lon;

    const-string p0, "server_host"

    invoke-virtual {p1, p0}, Lze7;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p2, Lp72;->c:Lba8;

    const-class v0, Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/OkHttpClient;

    invoke-static {p0, p1}, Lon;->a(Ljava/lang/String;Lokhttp3/OkHttpClient;)Ln67;

    move-result-object p0

    return-object p0
.end method
