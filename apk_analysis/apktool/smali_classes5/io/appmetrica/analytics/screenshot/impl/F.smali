.class public final Lio/appmetrica/analytics/screenshot/impl/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/f;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/I;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/o;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/screenshot/impl/F;-><init>(Lio/appmetrica/analytics/screenshot/impl/f;Lio/appmetrica/analytics/screenshot/impl/I;Lio/appmetrica/analytics/screenshot/impl/o;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/f;Lio/appmetrica/analytics/screenshot/impl/I;Lio/appmetrica/analytics/screenshot/impl/o;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/F;->a:Lio/appmetrica/analytics/screenshot/impl/f;

    .line 33
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/F;->b:Lio/appmetrica/analytics/screenshot/impl/I;

    .line 34
    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/F;->c:Lio/appmetrica/analytics/screenshot/impl/o;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/f;Lio/appmetrica/analytics/screenshot/impl/I;Lio/appmetrica/analytics/screenshot/impl/o;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/f;

    invoke-direct {p1}, Lio/appmetrica/analytics/screenshot/impl/f;-><init>()V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Lio/appmetrica/analytics/screenshot/impl/I;

    invoke-direct {p2}, Lio/appmetrica/analytics/screenshot/impl/I;-><init>()V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Lio/appmetrica/analytics/screenshot/impl/o;

    invoke-direct {p3}, Lio/appmetrica/analytics/screenshot/impl/o;-><init>()V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/screenshot/impl/F;-><init>(Lio/appmetrica/analytics/screenshot/impl/f;Lio/appmetrica/analytics/screenshot/impl/I;Lio/appmetrica/analytics/screenshot/impl/o;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/impl/A;
    .locals 5

    .line 69
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/A;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/A;-><init>()V

    .line 70
    iget-boolean v1, p1, Lio/appmetrica/analytics/screenshot/impl/P;->a:Z

    .line 71
    iput-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/A;->a:Z

    .line 72
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/z;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/z;-><init>()V

    .line 73
    iget-object v2, p1, Lio/appmetrica/analytics/screenshot/impl/P;->b:Lio/appmetrica/analytics/screenshot/impl/N;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 74
    iget-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/F;->a:Lio/appmetrica/analytics/screenshot/impl/f;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/screenshot/impl/f;->a(Lio/appmetrica/analytics/screenshot/impl/N;)Lio/appmetrica/analytics/screenshot/impl/w;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 75
    :goto_0
    iput-object v2, v1, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    .line 76
    iget-object v2, p1, Lio/appmetrica/analytics/screenshot/impl/P;->c:Lio/appmetrica/analytics/screenshot/impl/U;

    if-eqz v2, :cond_1

    .line 77
    iget-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/F;->b:Lio/appmetrica/analytics/screenshot/impl/I;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/screenshot/impl/I;->a(Lio/appmetrica/analytics/screenshot/impl/U;)Lio/appmetrica/analytics/screenshot/impl/y;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 78
    :goto_1
    iput-object v2, v1, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    .line 79
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/P;->d:Lio/appmetrica/analytics/screenshot/impl/O;

    if-eqz p1, :cond_2

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/F;->c:Lio/appmetrica/analytics/screenshot/impl/o;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/o;->a(Lio/appmetrica/analytics/screenshot/impl/O;)Lio/appmetrica/analytics/screenshot/impl/x;

    move-result-object v3

    .line 81
    :cond_2
    iput-object v3, v1, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    .line 82
    iput-object v1, v0, Lio/appmetrica/analytics/screenshot/impl/A;->b:Lio/appmetrica/analytics/screenshot/impl/z;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/A;)Lio/appmetrica/analytics/screenshot/impl/P;
    .locals 8

    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/A;->a:Z

    iget-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/A;->b:Lio/appmetrica/analytics/screenshot/impl/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lio/appmetrica/analytics/screenshot/impl/F;->a:Lio/appmetrica/analytics/screenshot/impl/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/appmetrica/analytics/screenshot/impl/N;

    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    invoke-direct {v3, v1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/A;->b:Lio/appmetrica/analytics/screenshot/impl/z;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/F;->b:Lio/appmetrica/analytics/screenshot/impl/I;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lio/appmetrica/analytics/screenshot/impl/U;

    iget-boolean v5, v1, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    iget-wide v6, v1, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    invoke-direct {v4, v5, v6, v7}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>(ZJ)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/A;->b:Lio/appmetrica/analytics/screenshot/impl/z;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/F;->c:Lio/appmetrica/analytics/screenshot/impl/o;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/o;->a(Lio/appmetrica/analytics/screenshot/impl/x;)Lio/appmetrica/analytics/screenshot/impl/O;

    move-result-object v2

    :cond_2
    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/P;

    invoke-direct {p0, v0, v3, v4, v2}, Lio/appmetrica/analytics/screenshot/impl/P;-><init>(ZLio/appmetrica/analytics/screenshot/impl/N;Lio/appmetrica/analytics/screenshot/impl/U;Lio/appmetrica/analytics/screenshot/impl/O;)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/P;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/impl/A;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/A;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/A;)Lio/appmetrica/analytics/screenshot/impl/P;

    move-result-object p0

    return-object p0
.end method
