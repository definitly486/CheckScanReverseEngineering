.class public final Lgo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo3;


# instance fields
.field public final a:Lo87;

.field public final b:Ljf6;


# direct methods
.method public constructor <init>(Lo87;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgo3;->a:Lo87;

    iput-object p2, p0, Lgo3;->b:Ljf6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const-string v2, "checkscan://games-tab?play=true"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    iget-object p0, p0, Lgo3;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Ljg7;

    iget-object v1, p0, Lgo3;->b:Ljf6;

    invoke-interface {v1}, Ljf6;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljg7;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lgo3;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method
