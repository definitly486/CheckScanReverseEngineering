.class public final Ldh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch8$b;

.field public final synthetic c:Lj06$b;

.field public final synthetic d:J

.field public final synthetic e:Lch8;


# direct methods
.method public constructor <init>(Lch8;Lch8$b;Lj06$b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh8;->e:Lch8;

    iput-object p2, p0, Ldh8;->b:Lch8$b;

    iput-object p3, p0, Ldh8;->c:Lj06$b;

    iput-wide p4, p0, Ldh8;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldh8;->e:Lch8;

    iget-object p0, p0, Ldh8;->b:Lch8$b;

    invoke-virtual {v0, p0}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldh8;->c:Lj06$b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(scheduled in SynchronizationContext with delay of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldh8;->d:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
