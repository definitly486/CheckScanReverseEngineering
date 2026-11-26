.class public final Lyads/sv;
.super Lyads/r75;
.source "SourceFile"


# instance fields
.field public final s:Lyads/ty2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/ty2;Lyads/uy2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lyads/r75;-><init>(ILjava/lang/String;Lyads/x85;)V

    iput-object p2, p0, Lyads/sv;->s:Lyads/ty2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Lyads/z85;
    .locals 1

    :try_start_0
    iget-object p0, p1, Lyads/en4;->b:[B

    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p1

    new-instance v0, Lyads/z85;

    invoke-direct {v0, p0, p1}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lyads/hi6;

    invoke-direct {p1, p0}, Lyads/hi6;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lyads/z85;

    invoke-direct {p0, p1}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, [B

    .line 25
    iget-object p0, p0, Lyads/sv;->s:Lyads/ty2;

    invoke-virtual {p0, p1}, Lyads/ty2;->a(Ljava/lang/Object;)V

    return-void
.end method
