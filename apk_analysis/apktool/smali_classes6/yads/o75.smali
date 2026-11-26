.class public abstract Lyads/o75;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vz2;

.field public final b:Lyads/oe3;

.field public final c:J

.field public final d:Ljava/util/List;

.field public final e:Lyads/y35;


# direct methods
.method public constructor <init>(Lyads/vz2;Lyads/oe3;Lyads/ei5;Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lyads/o75;->a:Lyads/vz2;

    invoke-static {p2}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p1

    iput-object p1, p0, Lyads/o75;->b:Lyads/oe3;

    if-nez p4, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/o75;->d:Ljava/util/List;

    invoke-virtual {p3, p0}, Lyads/ei5;->a(Lyads/o75;)Lyads/y35;

    move-result-object p1

    iput-object p1, p0, Lyads/o75;->e:Lyads/y35;

    iget-wide v0, p3, Lyads/ei5;->c:J

    iget-wide v4, p3, Lyads/ei5;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lyads/u56;->a(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lyads/o75;->c:J

    return-void

    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lyads/qc0;
.end method

.method public abstract e()Lyads/y35;
.end method
