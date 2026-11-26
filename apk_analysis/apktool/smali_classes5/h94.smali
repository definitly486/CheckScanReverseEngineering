.class public final Lh94;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh94$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lh94$a;

.field public final c:J

.field public final d:Ll94;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh94$a;JLp94;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh94;->a:Ljava/lang/String;

    const-string p1, "severity"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lh94;->b:Lh94$a;

    iput-wide p3, p0, Lh94;->c:J

    iput-object p5, p0, Lh94;->d:Ll94;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lh94;

    if-eqz v0, :cond_0

    check-cast p1, Lh94;

    iget-object v0, p0, Lh94;->a:Ljava/lang/String;

    iget-object v1, p1, Lh94;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh94;->b:Lh94$a;

    iget-object v1, p1, Lh94;->b:Lh94$a;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lh94;->c:J

    iget-wide v2, p1, Lh94;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lh94;->d:Ll94;

    iget-object p1, p1, Lh94;->d:Ll94;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lh94;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lh94;->d:Ll94;

    iget-object v3, p0, Lh94;->a:Ljava/lang/String;

    iget-object p0, p0, Lh94;->b:Lh94$a;

    filled-new-array {v3, p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lh94;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "severity"

    iget-object v2, p0, Lh94;->b:Lh94$a;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timestampNanos"

    iget-wide v2, p0, Lh94;->c:J

    invoke-virtual {v0, v2, v3, v1}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "channelRef"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subchannelRef"

    iget-object p0, p0, Lh94;->d:Ll94;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
