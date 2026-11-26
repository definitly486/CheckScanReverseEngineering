.class public final Lnw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmw5;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Z


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnw5;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnw5;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnw5;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lnw5;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lnw5;->b:Z

    return p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lnw5;->b:Z

    return-void
.end method
