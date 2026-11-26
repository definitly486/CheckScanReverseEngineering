.class public final Lju4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhu4;


# instance fields
.field public final a:Ljf6;

.field public final b:Leu4;

.field public final c:Landroid/content/Context;

.field public final d:Lfh8;

.field public e:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method public constructor <init>(Ljf6;Leu4;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju4;->a:Ljf6;

    iput-object p2, p0, Lju4;->b:Leu4;

    iput-object p3, p0, Lju4;->c:Landroid/content/Context;

    sget-object p1, Lju4$a;->f:Lju4$a;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lju4;->d:Lfh8;

    return-void
.end method


# virtual methods
.method public final a()Lhi0;
    .locals 4

    iget-object v0, p0, Lju4;->c:Landroid/content/Context;

    invoke-static {v0}, Laq;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lju4;->e:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lmu4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmu4;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Liu4;

    invoke-direct {v3, v2}, Liu4;-><init>(Lmu4;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lci;

    invoke-direct {v2, p0}, Lci;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iput-object v0, p0, Lju4;->e:Lcom/google/android/gms/location/FusedLocationProviderClient;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lju4;->e()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lju4;->d:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lhi0;

    return-object p0
.end method

.method public final b()Lhu4$a;
    .locals 0

    new-instance p0, Lhu4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final c()D
    .locals 2

    iget-object p0, p0, Lju4;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()D
    .locals 2

    iget-object p0, p0, Lju4;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lju4;->b:Leu4;

    invoke-interface {v0}, Leu4;->a()Lmz7;

    move-result-object v0

    new-instance v1, Llu4;

    invoke-direct {v1, p0}, Llu4;-><init>(Lju4;)V

    new-instance v2, Luo0;

    invoke-direct {v2, v1}, Luo0;-><init>(Lcm3;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    new-instance v1, Lju4$b;

    invoke-direct {v1, p0}, Lju4$b;-><init>(Lju4;)V

    new-instance p0, Lzd0;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lzd0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lwz7;

    invoke-direct {v1, v0, p0}, Lwz7;-><init>(Lmz7;Lqx1;)V

    sget-object p0, Lrm3;->d:Lrm3$e;

    sget-object v0, Lrm3;->e:Lrm3$l;

    invoke-virtual {v1, p0, v0}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    return-void
.end method

.method public final f(DD)V
    .locals 10

    iget-object v0, p0, Lju4;->a:Ljf6;

    invoke-interface {v0, p1, p2}, Ljf6;->b0(D)V

    invoke-interface {v0, p3, p4}, Ljf6;->q(D)V

    iget-object p0, p0, Lju4;->d:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lhi0;

    new-instance v0, Ldu4;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v9}, Ldu4;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
