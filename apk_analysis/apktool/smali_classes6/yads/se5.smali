.class public final Lyads/se5;
.super Lyads/es;
.source "SourceFile"


# instance fields
.field public final w:Landroid/content/Context;

.field public final x:Lyads/a85;

.field public final y:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyads/a85;Ljava/util/Map;Lyads/ue5;Lyads/ue5;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lyads/es;-><init>(Landroid/content/Context;ILjava/lang/String;Lyads/ds;Lyads/w75;)V

    iput-object v1, v0, Lyads/se5;->w:Landroid/content/Context;

    iput-object p3, v0, Lyads/se5;->x:Lyads/a85;

    iput-object p4, v0, Lyads/se5;->y:Ljava/util/Map;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lyads/r75;->n:Z

    iput-boolean p0, v0, Lyads/r75;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)Lyads/hi6;
    .locals 1

    sget p0, Lyads/i4;->d:I

    iget-object p0, p1, Lyads/hi6;->b:Lyads/en4;

    if-eqz p0, :cond_0

    iget v0, p0, Lyads/en4;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    instance-of v0, p1, Lyads/do4;

    if-eqz v0, :cond_1

    sget-object p1, Lyads/o4;->l:Lyads/o4;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lyads/mx5;

    if-eqz v0, :cond_2

    sget-object p1, Lyads/o4;->m:Lyads/o4;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lyads/ym;

    if-eqz v0, :cond_3

    sget-object p1, Lyads/o4;->n:Lyads/o4;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lyads/o00;

    if-eqz v0, :cond_4

    sget-object p1, Lyads/o4;->o:Lyads/o4;

    goto :goto_1

    :cond_4
    instance-of p1, p1, Lyads/rs4;

    if-eqz p1, :cond_5

    sget-object p1, Lyads/o4;->p:Lyads/o4;

    goto :goto_1

    :cond_5
    sget-object p1, Lyads/o4;->q:Lyads/o4;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_7

    const/16 v0, 0x257

    if-gt p1, v0, :cond_7

    sget-object p1, Lyads/o4;->f:Lyads/o4;

    goto :goto_1

    :cond_7
    sget-object p1, Lyads/o4;->e:Lyads/o4;

    :goto_1
    new-instance v0, Lyads/i4;

    invoke-direct {v0, p1, p0}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    return-object v0
.end method

.method public final a(Lyads/en4;)Lyads/z85;
    .locals 2

    .line 77
    iget v0, p1, Lyads/en4;->a:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_2

    .line 78
    iget-object v0, p0, Lyads/se5;->x:Lyads/a85;

    invoke-interface {v0, p1}, Lyads/a85;->a(Lyads/en4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/fe5;

    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    sget-object v1, Lmx2;->b:Lmx2;

    :cond_0
    invoke-virtual {p0, v1}, Lyads/es;->a(Ljava/util/Map;)V

    .line 80
    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p0

    .line 81
    new-instance p1, Lyads/z85;

    invoke-direct {p1, v0, p0}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object p1

    .line 82
    :cond_1
    sget-object p0, Lyads/o4;->c:Lyads/o4;

    goto :goto_0

    .line 83
    :cond_2
    sget-object p0, Lyads/o4;->e:Lyads/o4;

    .line 84
    :goto_0
    new-instance v0, Lyads/i4;

    invoke-direct {v0, p0, p1}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    .line 85
    new-instance p0, Lyads/z85;

    invoke-direct {p0, v0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lyads/se5;->w:Landroid/content/Context;

    invoke-static {v1, v0}, Lyads/qa3;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    sget-object v1, Lyads/oa3;->c:Lyads/oa3;

    iget-object v1, p0, Lyads/se5;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/se5;->w:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    sget-object v2, Lyads/oa3;->c:Lyads/oa3;

    const-string v2, "app-version-name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lyads/se5;->y:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
