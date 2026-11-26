.class public final Lio/appmetrica/analytics/impl/Hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tn;

.field public final b:Lio/appmetrica/analytics/impl/Z;

.field public final c:Lio/appmetrica/analytics/impl/s6;

.field public final d:Lio/appmetrica/analytics/impl/Rl;

.field public final e:Lio/appmetrica/analytics/impl/Re;

.field public final f:Lio/appmetrica/analytics/impl/Ue;


# direct methods
.method public constructor <init>()V
    .locals 7

    new-instance v1, Lio/appmetrica/analytics/impl/Tn;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Tn;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Z;

    new-instance v0, Lio/appmetrica/analytics/impl/Ln;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ln;-><init>()V

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/Z;-><init>(Lio/appmetrica/analytics/impl/Ln;)V

    new-instance v3, Lio/appmetrica/analytics/impl/s6;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/s6;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/Rl;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Rl;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/Re;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Re;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/Ue;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Ue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Hg;-><init>(Lio/appmetrica/analytics/impl/Tn;Lio/appmetrica/analytics/impl/Z;Lio/appmetrica/analytics/impl/s6;Lio/appmetrica/analytics/impl/Rl;Lio/appmetrica/analytics/impl/Re;Lio/appmetrica/analytics/impl/Ue;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Tn;Lio/appmetrica/analytics/impl/Z;Lio/appmetrica/analytics/impl/s6;Lio/appmetrica/analytics/impl/Rl;Lio/appmetrica/analytics/impl/Re;Lio/appmetrica/analytics/impl/Ue;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hg;->a:Lio/appmetrica/analytics/impl/Tn;

    .line 42
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hg;->b:Lio/appmetrica/analytics/impl/Z;

    .line 43
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Hg;->c:Lio/appmetrica/analytics/impl/s6;

    .line 44
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Hg;->d:Lio/appmetrica/analytics/impl/Rl;

    .line 45
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Hg;->e:Lio/appmetrica/analytics/impl/Re;

    .line 46
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Hg;->f:Lio/appmetrica/analytics/impl/Ue;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/i6;)Lio/appmetrica/analytics/impl/Gg;
    .locals 0

    .line 136
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Gg;)Lio/appmetrica/analytics/impl/i6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/i6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/i6;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Gg;->a:Ljava/lang/String;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/i6;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->f:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Gg;->b:Lio/appmetrica/analytics/impl/co;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->a:Lio/appmetrica/analytics/impl/Un;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hg;->a:Lio/appmetrica/analytics/impl/Tn;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Tn;->a(Lio/appmetrica/analytics/impl/Un;)Lio/appmetrica/analytics/impl/m6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->a:Lio/appmetrica/analytics/impl/m6;

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->b:Lio/appmetrica/analytics/impl/Y;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hg;->b:Lio/appmetrica/analytics/impl/Z;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Z;->a(Lio/appmetrica/analytics/impl/Y;)Lio/appmetrica/analytics/impl/c6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->b:Lio/appmetrica/analytics/impl/c6;

    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hg;->d:Lio/appmetrica/analytics/impl/Rl;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Rl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->e:[Lio/appmetrica/analytics/impl/k6;

    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->g:Ljava/lang/String;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/i6;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hg;->c:Lio/appmetrica/analytics/impl/s6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/co;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/we;->a(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/i6;->d:I

    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hg;->e:Lio/appmetrica/analytics/impl/Re;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/co;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Re;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->i:[B

    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i6;->j:[B

    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/co;->f:Ljava/util/Map;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hg;->f:Lio/appmetrica/analytics/impl/Ue;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/co;->f:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ue;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/i6;->k:[Lio/appmetrica/analytics/impl/e6;

    :cond_5
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Gg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Hg;->a(Lio/appmetrica/analytics/impl/Gg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/i6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
