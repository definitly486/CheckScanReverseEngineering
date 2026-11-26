.class public final Lio/appmetrica/analytics/impl/g9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Map;

.field public static final i:Lio/appmetrica/analytics/impl/g9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Jd;

.field public final b:Lio/appmetrica/analytics/impl/Co;

.field public final c:Lio/appmetrica/analytics/impl/J8;

.field public final d:Lio/appmetrica/analytics/impl/F9;

.field public final e:Lio/appmetrica/analytics/impl/kc;

.field public final f:Lio/appmetrica/analytics/impl/he;

.field public final g:Lio/appmetrica/analytics/impl/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/sa;->c:Lio/appmetrica/analytics/impl/sa;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/sa;->d:Lio/appmetrica/analytics/impl/sa;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/sa;->b:Lio/appmetrica/analytics/impl/sa;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/g9;->h:Ljava/util/Map;

    new-instance v1, Lio/appmetrica/analytics/impl/g9;

    new-instance v2, Lio/appmetrica/analytics/impl/gj;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/gj;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/nn;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/nn;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/me;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/me;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/fj;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/fj;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/ya;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/ya;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/za;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/za;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/xa;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/xa;-><init>()V

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/g9;-><init>(Lio/appmetrica/analytics/impl/Jd;Lio/appmetrica/analytics/impl/Co;Lio/appmetrica/analytics/impl/J8;Lio/appmetrica/analytics/impl/F9;Lio/appmetrica/analytics/impl/kc;Lio/appmetrica/analytics/impl/he;Lio/appmetrica/analytics/impl/aa;)V

    sput-object v1, Lio/appmetrica/analytics/impl/g9;->i:Lio/appmetrica/analytics/impl/g9;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Jd;Lio/appmetrica/analytics/impl/Co;Lio/appmetrica/analytics/impl/J8;Lio/appmetrica/analytics/impl/F9;Lio/appmetrica/analytics/impl/kc;Lio/appmetrica/analytics/impl/he;Lio/appmetrica/analytics/impl/aa;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/appmetrica/analytics/impl/g9;->a:Lio/appmetrica/analytics/impl/Jd;

    .line 35
    iput-object p2, p0, Lio/appmetrica/analytics/impl/g9;->b:Lio/appmetrica/analytics/impl/Co;

    .line 36
    iput-object p3, p0, Lio/appmetrica/analytics/impl/g9;->c:Lio/appmetrica/analytics/impl/J8;

    .line 37
    iput-object p4, p0, Lio/appmetrica/analytics/impl/g9;->d:Lio/appmetrica/analytics/impl/F9;

    .line 38
    iput-object p5, p0, Lio/appmetrica/analytics/impl/g9;->e:Lio/appmetrica/analytics/impl/kc;

    .line 39
    iput-object p6, p0, Lio/appmetrica/analytics/impl/g9;->f:Lio/appmetrica/analytics/impl/he;

    .line 40
    iput-object p7, p0, Lio/appmetrica/analytics/impl/g9;->g:Lio/appmetrica/analytics/impl/aa;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/f9;)V
    .locals 8

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->f(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/Jd;

    move-result-object v1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->g(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/Co;

    move-result-object v2

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->a(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/J8;

    move-result-object v3

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->b(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/F9;

    move-result-object v4

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->c(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/kc;

    move-result-object v5

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->d(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/he;

    move-result-object v6

    invoke-static {p1}, Lio/appmetrica/analytics/impl/f9;->e(Lio/appmetrica/analytics/impl/f9;)Lio/appmetrica/analytics/impl/aa;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/g9;-><init>(Lio/appmetrica/analytics/impl/Jd;Lio/appmetrica/analytics/impl/Co;Lio/appmetrica/analytics/impl/J8;Lio/appmetrica/analytics/impl/F9;Lio/appmetrica/analytics/impl/kc;Lio/appmetrica/analytics/impl/he;Lio/appmetrica/analytics/impl/aa;)V

    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/Jd;
    .locals 0

    .line 242
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->a:Lio/appmetrica/analytics/impl/Jd;

    return-object p0
.end method

.method public static a()Lio/appmetrica/analytics/impl/f9;
    .locals 2

    .line 243
    new-instance v0, Lio/appmetrica/analytics/impl/f9;

    sget-object v1, Lio/appmetrica/analytics/impl/g9;->i:Lio/appmetrica/analytics/impl/g9;

    .line 244
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/f9;-><init>(Lio/appmetrica/analytics/impl/g9;)V

    return-object v0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/Co;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->b:Lio/appmetrica/analytics/impl/Co;

    return-object p0
.end method

.method public static synthetic c(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/J8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->c:Lio/appmetrica/analytics/impl/J8;

    return-object p0
.end method

.method public static synthetic d(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/F9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->d:Lio/appmetrica/analytics/impl/F9;

    return-object p0
.end method

.method public static synthetic e(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/kc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->e:Lio/appmetrica/analytics/impl/kc;

    return-object p0
.end method

.method public static synthetic f(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/he;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->f:Lio/appmetrica/analytics/impl/he;

    return-object p0
.end method

.method public static synthetic g(Lio/appmetrica/analytics/impl/g9;)Lio/appmetrica/analytics/impl/aa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->g:Lio/appmetrica/analytics/impl/aa;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)Lio/appmetrica/analytics/impl/q9;
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/q9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/q9;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g9;->f:Lio/appmetrica/analytics/impl/he;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Z8;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Z8;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lio/appmetrica/analytics/impl/he;->a(Ljava/lang/Integer;Ljava/lang/String;)Lio/appmetrica/analytics/impl/p9;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g9;->e:Lio/appmetrica/analytics/impl/kc;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Z8;->g:Lio/appmetrica/analytics/impl/v7;

    invoke-interface {v2, v3}, Lio/appmetrica/analytics/impl/kc;->a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/l9;

    move-result-object v2

    if-eqz v1, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/impl/q9;->g:Lio/appmetrica/analytics/impl/p9;

    :cond_0
    if-eqz v2, :cond_1

    iput-object v2, v0, Lio/appmetrica/analytics/impl/q9;->f:Lio/appmetrica/analytics/impl/l9;

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g9;->a:Lio/appmetrica/analytics/impl/Jd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Z8;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/Jd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, v0, Lio/appmetrica/analytics/impl/q9;->d:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g9;->b:Lio/appmetrica/analytics/impl/Co;

    invoke-interface {v1, p1, p2}, Lio/appmetrica/analytics/impl/Co;->a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B

    move-result-object p2

    iput-object p2, v0, Lio/appmetrica/analytics/impl/q9;->e:[B

    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->j:Ljava/lang/String;

    if-eqz p2, :cond_3

    iput-object p2, v0, Lio/appmetrica/analytics/impl/q9;->h:Ljava/lang/String;

    :cond_3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/g9;->d:Lio/appmetrica/analytics/impl/F9;

    invoke-interface {p2, p1}, Lio/appmetrica/analytics/impl/F9;->a(Lio/appmetrica/analytics/impl/Z8;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->c:I

    :cond_4
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->c:Ljava/lang/Long;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->a:J

    :cond_5
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->d:Ljava/lang/Long;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->n:J

    :cond_6
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->e:Ljava/lang/Long;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->o:J

    :cond_7
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->f:Ljava/lang/Long;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->b:J

    :cond_8
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->k:Ljava/lang/Integer;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->i:I

    :cond_9
    iget-object p2, p0, Lio/appmetrica/analytics/impl/g9;->c:Lio/appmetrica/analytics/impl/J8;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Z8;->o:Lio/appmetrica/analytics/impl/U8;

    invoke-interface {p2, v1}, Lio/appmetrica/analytics/impl/J8;->a(Lio/appmetrica/analytics/impl/U8;)I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->j:I

    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->g:Lio/appmetrica/analytics/impl/v7;

    if-eqz p2, :cond_a

    new-instance v1, Lio/appmetrica/analytics/impl/s6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s6;-><init>()V

    iget-object p2, p2, Lio/appmetrica/analytics/impl/v7;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/we;->a(Ljava/lang/Boolean;)I

    move-result p2

    goto :goto_0

    :cond_a
    const/4 p2, -0x1

    :goto_0
    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->k:I

    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->n:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lio/appmetrica/analytics/impl/q9;->l:[B

    :cond_b
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->p:Lio/appmetrica/analytics/impl/sa;

    if-eqz p2, :cond_c

    sget-object v1, Lio/appmetrica/analytics/impl/g9;->h:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    goto :goto_1

    :cond_c
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->m:I

    :cond_d
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->q:Lio/appmetrica/analytics/impl/y9;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_10

    const/4 v1, 0x1

    if-eq p2, v1, :cond_f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_e

    goto :goto_2

    :cond_e
    iput v1, v0, Lio/appmetrica/analytics/impl/q9;->p:I

    goto :goto_2

    :cond_f
    iput v1, v0, Lio/appmetrica/analytics/impl/q9;->p:I

    goto :goto_2

    :cond_10
    const/4 p2, 0x0

    iput p2, v0, Lio/appmetrica/analytics/impl/q9;->p:I

    :cond_11
    :goto_2
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->r:Ljava/lang/Boolean;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lio/appmetrica/analytics/impl/q9;->q:Z

    :cond_12
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->s:Ljava/lang/Integer;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->r:J

    :cond_13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g9;->g:Lio/appmetrica/analytics/impl/aa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z8;->t:[B

    check-cast p0, Lio/appmetrica/analytics/impl/xa;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xa;->a([B)[Lio/appmetrica/analytics/impl/o9;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/q9;->s:[Lio/appmetrica/analytics/impl/o9;

    return-object v0
.end method
