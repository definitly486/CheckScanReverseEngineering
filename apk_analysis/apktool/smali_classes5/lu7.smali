.class public Llu7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "build"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "city"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "type"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field e:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private f:Ldu4;
    .annotation runtime Lbq7;
        value = "location"
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "name"
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "street"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "region"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldu4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Llu7;->a:Ljava/lang/String;

    iput-object p6, p0, Llu7;->b:Ljava/lang/String;

    iput-object p1, p0, Llu7;->e:Ljava/lang/Integer;

    iput-object p5, p0, Llu7;->f:Ldu4;

    iput-object p2, p0, Llu7;->g:Ljava/lang/String;

    iput-object p3, p0, Llu7;->h:Ljava/lang/String;

    iput-object p7, p0, Llu7;->c:Ljava/lang/String;

    iput-object p8, p0, Llu7;->d:Ljava/lang/String;

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llu7;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Llu7;->h:Ljava/lang/String;

    iget-object v1, p0, Llu7;->a:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1, v0}, Llu7;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Llu7;->b:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, " \u2022 "

    invoke-static {v0, p0}, Llu7;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
