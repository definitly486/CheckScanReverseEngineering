.class public final Lg15;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg15$a;
    }
.end annotation


# instance fields
.field public final a:Lx05;

.field public final b:Lg27;

.field public final c:Lf58;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lzn5;",
            ">;",
            "Le15<",
            "+",
            "Lzn5;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx05;Lg27;Lf58;Ljava/util/Map;Lsj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg15;->a:Lx05;

    iput-object p2, p0, Lg15;->b:Lg27;

    iput-object p3, p0, Lg15;->c:Lf58;

    iput-object p4, p0, Lg15;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lzn5;)V
    .locals 0

    iget-object p1, p1, Lzn5;->e:Lzn5;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg15;->b()V

    iget-object p0, p0, Lg15;->c:Lf58;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lf58;->a(C)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lg15;->c:Lf58;

    iget-object v0, p0, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lf58;->a(C)V

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lg15;->c:Lf58;

    iget-object p0, p0, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public final d(Lzn5;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lzn5;",
            ">(TN;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lg15;->a:Lx05;

    iget-object v1, v0, Lx05;->e:Lc15;

    iget-object v1, v1, Lc15;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le58;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lg15;->b:Lg27;

    invoke-interface {p1, v0, v1}, Le58;->a(Lx05;Lg27;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lg15;->c:Lf58;

    iget-object v0, p0, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v1, p2, :cond_0

    if-ltz p2, :cond_0

    if-gt v1, v0, :cond_0

    invoke-static {p0, p1, p2, v1}, Lf58;->c(Lf58;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final e(Lzn5;)V
    .locals 2

    iget-object v0, p0, Lg15;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le15;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Le15;->a(Lg15;Lzn5;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lg15;->f(Lzn5;)V

    return-void
.end method

.method public final f(Lzn5;)V
    .locals 1

    iget-object p1, p1, Lzn5;->b:Lzn5;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lzn5;->e:Lzn5;

    invoke-virtual {p1, p0}, Lzn5;->a(Lg15;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
