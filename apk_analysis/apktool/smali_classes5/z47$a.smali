.class public final Lz47$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb37;

.field public b:Lts6;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Llu3;

.field public f:Ljv3$a;

.field public g:Lb57;

.field public h:Lz47;

.field public i:Lz47;

.field public j:Lz47;

.field public k:J

.field public l:J

.field public m:Ln13;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz47$a;->c:I

    new-instance v0, Ljv3$a;

    invoke-direct {v0}, Ljv3$a;-><init>()V

    iput-object v0, p0, Lz47$a;->f:Ljv3$a;

    return-void
.end method

.method public static b(Lz47;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_4

    iget-object v0, p0, Lz47;->h:Lb57;

    if-nez v0, :cond_3

    iget-object v0, p0, Lz47;->i:Lz47;

    if-nez v0, :cond_2

    iget-object v0, p0, Lz47;->j:Lz47;

    if-nez v0, :cond_1

    iget-object p0, p0, Lz47;->k:Lz47;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ".priorResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, ".cacheResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p0, ".networkResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, ".body != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lz47;
    .locals 16

    move-object/from16 v0, p0

    iget v4, v0, Lz47$a;->c:I

    const/4 v1, 0x0

    if-ltz v4, :cond_3

    move-object v2, v1

    iget-object v1, v0, Lz47$a;->a:Lb37;

    if-eqz v1, :cond_2

    move-object v3, v2

    iget-object v2, v0, Lz47$a;->b:Lts6;

    move-object v5, v3

    if-eqz v2, :cond_1

    iget-object v3, v0, Lz47$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, v0, Lz47$a;->e:Llu3;

    iget-object v6, v0, Lz47$a;->f:Ljv3$a;

    invoke-virtual {v6}, Ljv3$a;->e()Ljv3;

    move-result-object v6

    iget-object v7, v0, Lz47$a;->g:Lb57;

    iget-object v8, v0, Lz47$a;->h:Lz47;

    iget-object v9, v0, Lz47$a;->i:Lz47;

    iget-object v10, v0, Lz47$a;->j:Lz47;

    iget-wide v11, v0, Lz47$a;->k:J

    iget-wide v13, v0, Lz47$a;->l:J

    iget-object v15, v0, Lz47$a;->m:Ln13;

    new-instance v0, Lz47;

    invoke-direct/range {v0 .. v15}, Lz47;-><init>(Lb37;Lts6;Ljava/lang/String;ILlu3;Ljv3;Lb57;Lz47;Lz47;Lz47;JJLn13;)V

    return-object v0

    :cond_0
    const-string v0, "message == null"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    const-string v0, "protocol == null"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    move-object v5, v2

    const-string v0, "request == null"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_3
    move-object v5, v1

    const-string v1, "code < 0: "

    iget v0, v0, Lz47$a;->c:I

    invoke-static {v0, v1}, Ljs2;->c(ILjava/lang/String;)V

    return-object v5
.end method
