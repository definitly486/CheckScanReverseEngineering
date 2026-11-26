.class public final Lyads/ar0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lll3;

.field public final b:Lll3;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Long;

.field public final l:Lcl4;


# direct methods
.method public constructor <init>(Lll3;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ar0;->a:Lll3;

    iput-object p2, p0, Lyads/ar0;->b:Lll3;

    sget-object p1, Lpo4;->NONE:Lpo4;

    sget-object p2, Lyads/zq0;->b:Lyads/zq0;

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lyads/ar0;->l:Lcl4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lyads/ar0;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lyads/ar0;->l:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g65;

    iget-wide v4, v0, Lyads/g65;->e:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lyads/g65;->e:J

    :cond_0
    iget-boolean v0, p0, Lyads/ar0;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/ar0;->l:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g65;

    iget-object v1, p0, Lyads/ar0;->a:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/n93;

    iget-object v1, p0, Lyads/ar0;->b:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/f65;

    iget-wide v3, v0, Lyads/g65;->a:J

    iget-wide v5, v0, Lyads/g65;->b:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lyads/g65;->c:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lyads/g65;->d:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lyads/g65;->e:J

    add-long v4, v3, v5

    iget-object v6, p0, Lyads/ar0;->c:Ljava/lang/String;

    iget-object v8, v1, Lyads/f65;->d:Lyads/j93;

    const/16 v9, 0x8

    const-string v3, "Div.Render.Total"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lyads/n93;->a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V

    iget-wide v4, v0, Lyads/g65;->c:J

    iget-object v6, p0, Lyads/ar0;->c:Ljava/lang/String;

    iget-object v8, v1, Lyads/f65;->a:Lyads/j93;

    const-string v3, "Div.Render.Measure"

    invoke-static/range {v2 .. v9}, Lyads/n93;->a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V

    iget-wide v4, v0, Lyads/g65;->d:J

    iget-object v6, p0, Lyads/ar0;->c:Ljava/lang/String;

    iget-object v8, v1, Lyads/f65;->b:Lyads/j93;

    const-string v3, "Div.Render.Layout"

    invoke-static/range {v2 .. v9}, Lyads/n93;->a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V

    iget-wide v4, v0, Lyads/g65;->e:J

    iget-object v6, p0, Lyads/ar0;->c:Ljava/lang/String;

    iget-object v8, v1, Lyads/f65;->c:Lyads/j93;

    const-string v3, "Div.Render.Draw"

    invoke-static/range {v2 .. v9}, Lyads/n93;->a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/ar0;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/ar0;->j:Ljava/lang/Long;

    iput-object v0, p0, Lyads/ar0;->i:Ljava/lang/Long;

    iput-object v0, p0, Lyads/ar0;->k:Ljava/lang/Long;

    iget-object p0, p0, Lyads/ar0;->l:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g65;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/g65;->c:J

    iput-wide v0, p0, Lyads/g65;->d:J

    iput-wide v0, p0, Lyads/g65;->e:J

    iput-wide v0, p0, Lyads/g65;->a:J

    iput-wide v0, p0, Lyads/g65;->b:J

    return-void
.end method

.method public final b()V
    .locals 14

    iget-object v0, p0, Lyads/ar0;->h:Ljava/lang/Long;

    iget-object v1, p0, Lyads/ar0;->l:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g65;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v8, v2, v4

    iput-wide v8, v1, Lyads/g65;->b:J

    iget-object v0, p0, Lyads/ar0;->a:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lyads/n93;

    iget-object v10, p0, Lyads/ar0;->c:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0x18

    const-string v7, "Div.Rebinding"

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lyads/n93;->a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/ar0;->h:Ljava/lang/Long;

    return-void
.end method
