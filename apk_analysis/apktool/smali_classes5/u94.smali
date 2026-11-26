.class public final Lu94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp94;


# direct methods
.method public constructor <init>(Lp94;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu94;->b:Lp94;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lu94;->b:Lp94;

    iget-object v0, p0, Lp94;->j:Ln91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Ln91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object v0, p0, Lp94;->d:Lez4$p$a;

    iget-object v0, v0, Lez4$p$a;->b:Lez4$p;

    iget-object v0, v0, Lez4$p;->j:Lez4;

    iget-object v1, v0, Lez4;->A:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lez4;->N:Li94;

    iget-object v1, v1, Li94;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lp94;->c()Lm94;

    move-result-object p0

    iget-wide v2, p0, Lm94;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll94;

    invoke-virtual {v0}, Lez4;->i()V

    return-void
.end method
