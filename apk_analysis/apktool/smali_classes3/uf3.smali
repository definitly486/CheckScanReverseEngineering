.class public final Luf3;
.super Lo87;
.source "SourceFile"


# instance fields
.field public final c:Lo87;


# direct methods
.method public constructor <init>(Lo87;)V
    .locals 0

    invoke-direct {p0}, Lo87;-><init>()V

    iput-object p1, p0, Luf3;->c:Lo87;

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 0

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final varargs j([Llk3;)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldf7;

    invoke-virtual {p0, p1}, Lo87;->e([Ldf7;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lo87;->b:Ly57;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ly57;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt57;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lt57;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lt57;)V
    .locals 1

    iget-object p0, p0, Luf3;->c:Lo87;

    iget-object p0, p0, Lo87;->b:Ly57;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ly57;->a:Ljava/util/LinkedHashMap;

    const-string v0, "auth_verification_result"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
