.class public final Lj66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li66;


# instance fields
.field public final a:Lo87;


# direct methods
.method public constructor <init>(Lo87;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj66;->a:Lo87;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lj66;->a:Lo87;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lj66;->a:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lqh7;

    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeCity;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeCity;

    invoke-direct {v0, v1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    iget-object p0, p0, Lj66;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final d(Le66;)V
    .locals 1

    iget-object p0, p0, Lj66;->a:Lo87;

    iget-object p0, p0, Lo87;->b:Ly57;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ly57;->a:Ljava/util/LinkedHashMap;

    const-string v0, "PERSONAL_DATA_CITY_CHANGED_KEY"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lj66;->a:Lo87;

    sget-object v0, Llh7;->a:Llh7;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lix;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    iget-object p0, p0, Lj66;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method
