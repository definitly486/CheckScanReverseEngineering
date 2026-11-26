.class public final Lp94$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:Lp94$c;

.field public b:Z

.field public final synthetic c:Lp94;


# direct methods
.method public constructor <init>(Lp94;Lp94$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$f;->c:Lp94;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp94$f;->b:Z

    iput-object p2, p0, Lp94$f;->a:Lp94$c;

    return-void
.end method

.method public static a(Lfl7;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lp94$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string p0, "privacy_and_integrity"

    return-object p0

    :cond_1
    const-string v0, "Unknown SecurityLevel: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "integrity_only"

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "none"

    return-object p0
.end method

.method public static b(Lio/grpc/a;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/grpc/d;->f:Lio/grpc/a$b;

    iget-object v1, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/l;->a:Lio/grpc/a$b;

    iget-object p0, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c(Z)V
    .locals 3

    iget-object v0, p0, Lp94$f;->c:Lp94;

    iget-object v1, v0, Lp94;->m:Lch8;

    new-instance v2, Lv94;

    iget-object p0, p0, Lp94$f;->a:Lp94$c;

    invoke-direct {v2, v0, p0, p1}, Lv94;-><init>(Lp94;Lp94$c;Z)V

    invoke-virtual {v1, v2}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lh88;Lmn2;)V
    .locals 5

    iget-object v0, p0, Lp94$f;->c:Lp94;

    iget-object v1, v0, Lp94;->j:Ln91;

    sget-object v2, Ln91$a;->INFO:Ln91$a;

    iget-object v3, p0, Lp94$f;->a:Lp94$c;

    invoke-virtual {v3}, Ldj3;->c()Lm94;

    move-result-object v3

    invoke-static {p1}, Lp94;->h(Lh88;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{0} SHUTDOWN with {1}"

    invoke-virtual {v1, v2, v4, v3}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp94$f;->b:Z

    iget-object v0, v0, Lp94;->m:Lch8;

    new-instance v1, Lp94$f$a;

    invoke-direct {v1, p0, p2, p1}, Lp94$f$a;-><init>(Lp94$f;Lmn2;Lh88;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-boolean v0, p0, Lp94$f;->b:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lp94$f;->c:Lp94;

    iget-object v1, v0, Lp94;->j:Ln91;

    sget-object v2, Ln91$a;->INFO:Ln91$a;

    iget-object v3, p0, Lp94$f;->a:Lp94$c;

    invoke-virtual {v3}, Ldj3;->c()Lm94;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "{0} Terminated"

    invoke-virtual {v1, v2, v5, v4}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lp94;->g:Li94;

    iget-object v1, v1, Li94;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ldj3;->c()Lm94;

    move-result-object v2

    iget-wide v4, v2, Lm94;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll94;

    iget-object v1, v0, Lp94;->m:Lch8;

    new-instance v2, Lv94;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lv94;-><init>(Lp94;Lp94$c;Z)V

    invoke-virtual {v1, v2}, Lch8;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lp94;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgm1;

    invoke-virtual {v3}, Ldj3;->getAttributes()Lio/grpc/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance v0, Lp94$f$b;

    invoke-direct {v0, p0}, Lp94$f$b;-><init>(Lp94$f;)V

    invoke-virtual {v1, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
