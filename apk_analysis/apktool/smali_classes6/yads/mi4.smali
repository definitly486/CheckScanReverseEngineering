.class public final Lyads/mi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pg4;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lyads/pg4;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/mi4;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/pg4;

    iput-object p1, p0, Lyads/mi4;->b:Lyads/pg4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/ih4;)Lyads/g70;
    .locals 1

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lyads/pg4;->a(Lyads/ih4;)Lyads/g70;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lyads/e70;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No native ad available for binding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lyads/e70;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final a(Lyads/h80;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/pg4;->a(Lyads/h80;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/ih4;Lyads/pz;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/pg4;->a(Lyads/ih4;Lyads/pz;)V

    :cond_0
    return-void
.end method

.method public final b()Lyads/vg4;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->b()Lyads/vg4;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final d()Lyads/sj4;
    .locals 1

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/pg4;->d()Lyads/sj4;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lyads/sj4;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lyads/sj4;-><init>(Lyads/el4;Lyads/lm4;)V

    return-object p0
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->destroy()V

    :cond_0
    return-void
.end method

.method public final e()Lyads/s70;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->e()Lyads/s70;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAdAssets()Lyads/f80;
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/pg4;->getAdAssets()Lyads/f80;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Lyads/f80;

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v17}, Lyads/f80;-><init>(Lyads/p80;Lyads/i80;Lyads/i80;Lyads/i80;Lyads/u80;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/r80;Z)V

    return-object v1
.end method

.method public final getAdType()Lyads/f95;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/pg4;->getAdType()Lyads/f95;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lyads/f95;->d:Lyads/f95;

    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->getInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadImages()V
    .locals 0

    iget-object p0, p0, Lyads/mi4;->b:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->loadImages()V

    :cond_0
    return-void
.end method
