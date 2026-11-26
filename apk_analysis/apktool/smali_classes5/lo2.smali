.class public final Llo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final b:Lr22;


# direct methods
.method public constructor <init>(Lr22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo2;->b:Lr22;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Llo2;->b:Lr22;

    sget-object v0, Lgx2;->b:Lgx2;

    invoke-static {p0, v0}, Lgo2;->h(Lr22;Lo22;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0, p1}, Lgo2;->g(Lr22;Lo22;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llo2;->b:Lr22;

    invoke-virtual {p0}, Lr22;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
