.class public final synthetic Lp89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh8$a;


# instance fields
.field public final synthetic b:Lr89;

.field public final synthetic c:Lhz;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lr89;Lhz;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp89;->b:Lr89;

    iput-object p2, p0, Lp89;->c:Lhz;

    iput-wide p3, p0, Lp89;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lp89;->b:Lr89;

    iget-object v1, v0, Lr89;->c:Lf13;

    iget-object v0, v0, Lr89;->g:Lhm1;

    invoke-interface {v0}, Lhm1;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lp89;->d:J

    add-long/2addr v2, v4

    iget-object p0, p0, Lp89;->c:Lhz;

    invoke-interface {v1, v2, v3, p0}, Lf13;->B(JLhz;)V

    const/4 p0, 0x0

    return-object p0
.end method
