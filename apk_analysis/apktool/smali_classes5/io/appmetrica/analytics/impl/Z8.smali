.class public final Lio/appmetrica/analytics/impl/Z8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Long;

.field public final g:Lio/appmetrica/analytics/impl/v7;

.field public final h:Lio/appmetrica/analytics/impl/pb;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Integer;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lio/appmetrica/analytics/impl/U8;

.field public final p:Lio/appmetrica/analytics/impl/sa;

.field public final q:Lio/appmetrica/analytics/impl/y9;

.field public final r:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Integer;

.field public final t:[B

.field public final u:Ljava/lang/String;

.field public final v:J

.field public final w:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/s7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/p7;ILjh2;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/s7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/r7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->c:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->b()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->m()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->k()Lio/appmetrica/analytics/impl/v7;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->g:Lio/appmetrica/analytics/impl/v7;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->e()Lio/appmetrica/analytics/impl/pb;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->h:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->f()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->q()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->k:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->e()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->g()Lio/appmetrica/analytics/impl/U8;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lio/appmetrica/analytics/impl/U8;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/U8;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->o:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->j()Lio/appmetrica/analytics/impl/sa;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lio/appmetrica/analytics/impl/sa;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/sa;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->p:Lio/appmetrica/analytics/impl/sa;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->p()Lio/appmetrica/analytics/impl/y9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->q:Lio/appmetrica/analytics/impl/y9;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->r:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->n()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->s:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->i()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->t:[B

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "{}"

    :cond_2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z8;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/q7;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Z8;->v:J

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/r7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/q7;->s()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Z8;->w:Ljava/lang/Integer;

    return-void
.end method
