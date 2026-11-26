.class public final La57;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lz47;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lb57;


# direct methods
.method public constructor <init>(Lz47;Ljava/lang/Object;Lc57;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La57;->a:Lz47;

    iput-object p2, p0, La57;->b:Ljava/lang/Object;

    iput-object p3, p0, La57;->c:Lb57;

    return-void
.end method

.method public static a(ILc57;)La57;
    .locals 5

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    new-instance v0, Lz47$a;

    invoke-direct {v0}, Lz47$a;-><init>()V

    new-instance v1, Lgv5$c;

    iget-object v2, p1, Lc57;->c:Lj95;

    iget-wide v3, p1, Lc57;->d:J

    invoke-direct {v1, v2, v3, v4}, Lgv5$c;-><init>(Lj95;J)V

    iput-object v1, v0, Lz47$a;->g:Lb57;

    iput p0, v0, Lz47$a;->c:I

    const-string p0, "Response.error()"

    iput-object p0, v0, Lz47$a;->d:Ljava/lang/String;

    sget-object p0, Lts6;->HTTP_1_1:Lts6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lz47$a;->b:Lts6;

    new-instance p0, Lb37$a;

    invoke-direct {p0}, Lb37$a;-><init>()V

    const-string v1, "http://localhost/"

    invoke-virtual {p0, v1}, Lb37$a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb37$a;->a()Lb37;

    move-result-object p0

    iput-object p0, v0, Lz47$a;->a:Lb37;

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object p0

    invoke-static {p1, p0}, La57;->b(Lc57;Lz47;)La57;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "code < 400: "

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lc57;Lz47;)La57;
    .locals 2

    invoke-virtual {p1}, Lz47;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, La57;

    invoke-direct {v0, p1, v1, p0}, La57;-><init>(Lz47;Ljava/lang/Object;Lc57;)V

    return-object v0

    :cond_0
    const-string p0, "rawResponse should not be successful response"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(ILiv6;)La57;
    .locals 2

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    new-instance v0, Lz47$a;

    invoke-direct {v0}, Lz47$a;-><init>()V

    iput p0, v0, Lz47$a;->c:I

    const-string p0, "Response.success()"

    iput-object p0, v0, Lz47$a;->d:Ljava/lang/String;

    sget-object p0, Lts6;->HTTP_1_1:Lts6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lz47$a;->b:Lts6;

    new-instance p0, Lb37$a;

    invoke-direct {p0}, Lb37$a;-><init>()V

    const-string v1, "http://localhost/"

    invoke-virtual {p0, v1}, Lb37$a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb37$a;->a()Lb37;

    move-result-object p0

    iput-object p0, v0, Lz47$a;->a:Lb37;

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object p0

    invoke-static {p1, p0}, La57;->d(Ljava/lang/Object;Lz47;)La57;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "code < 200 or >= 300: "

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Lz47;)La57;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz47;",
            ")",
            "La57<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lz47;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, La57;

    invoke-direct {v0, p1, p0, v1}, La57;-><init>(Lz47;Ljava/lang/Object;Lc57;)V

    return-object v0

    :cond_0
    const-string p0, "rawResponse must be successful response"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La57;->a:Lz47;

    invoke-virtual {p0}, Lz47;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
