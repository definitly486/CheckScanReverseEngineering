.class public final Lez5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez5$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lm88;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lqy5;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm88;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqy5;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lez5;->a:J

    iput-object p3, p0, Lez5;->b:Ljava/lang/String;

    iput-object p4, p0, Lez5;->c:Ljava/lang/String;

    iput-object p5, p0, Lez5;->d:Ljava/lang/String;

    iput-object p6, p0, Lez5;->e:Ljava/lang/String;

    iput-object p7, p0, Lez5;->f:Lm88;

    iput-object p8, p0, Lez5;->g:Ljava/lang/String;

    iput-object p9, p0, Lez5;->h:Ljava/lang/String;

    iput-object p10, p0, Lez5;->i:Ljava/lang/String;

    iput-object p11, p0, Lez5;->j:Ljava/lang/String;

    iput-object p12, p0, Lez5;->k:Lqy5;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 4

    sget-object v0, Lez5$a;->a:[I

    iget-object v1, p0, Lez5;->k:Lqy5;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lez5;->g:Ljava/lang/String;

    const-string v3, ""

    if-ne v0, v1, :cond_3

    sget-object v0, Lm88;->PENDING:Lm88;

    iget-object p0, p0, Lez5;->f:Lm88;

    if-eq p0, v0, :cond_2

    sget-object v0, Lm88;->UNKNOWN:Lm88;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v3

    :cond_3
    if-nez v2, :cond_4

    return-object v3

    :cond_4
    return-object v2
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lez5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lez5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lez5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lez5;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lez5;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lez5;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lez5;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
