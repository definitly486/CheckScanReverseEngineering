.class public final Lcom/my/tracker/obfuscated/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/h2;


# instance fields
.field private final a:I

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/my/tracker/obfuscated/j2;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/tracker/obfuscated/j2;->a:I

    iput-wide p2, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    iput-wide p4, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/my/tracker/obfuscated/j2;->a:I

    return p0
.end method

.method public a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    return-wide v0
.end method

.method public c(J)V
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    return-void
.end method

.method public bridge synthetic clone()Lcom/my/tracker/obfuscated/h2;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/j2;->clone()Lcom/my/tracker/obfuscated/j2;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/my/tracker/obfuscated/j2;
    .locals 9

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/j2;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/j2;->g()V

    iget-wide v1, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/my/tracker/obfuscated/j2;->a(J)V

    iget-wide v1, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/my/tracker/obfuscated/j2;->c(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v3, Lcom/my/tracker/obfuscated/j2;

    iget v4, p0, Lcom/my/tracker/obfuscated/j2;->a:I

    iget-wide v5, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    iget-wide v7, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    invoke-direct/range {v3 .. v8}, Lcom/my/tracker/obfuscated/j2;-><init>(IJJ)V

    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/j2;->clone()Lcom/my/tracker/obfuscated/j2;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    iput-wide v0, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "total time = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    iget-wide v3, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    add-long/2addr v1, v3

    const-string v3, " ms : "

    invoke-static {v1, v2, v3, v0}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foreground = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/my/tracker/obfuscated/j2;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/my/tracker/obfuscated/j2;->a:I

    iget v3, p0, Lcom/my/tracker/obfuscated/j2;->a:I

    if-nez v2, :cond_0

    const-string v2, "[App Time   TS] id = "

    invoke-static {v3, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "useful background = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v2, "[Time Based TS] id = "

    invoke-static {v3, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "background = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/my/tracker/obfuscated/j2;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v3, ", "

    invoke-static {v2, v3, v0, v1, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
