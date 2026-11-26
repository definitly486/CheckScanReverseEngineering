.class public final Lvc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lvc2;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lvc2;

    const-string v6, "Saturday"

    const-string v7, "Sunday"

    const-string v1, "Monday"

    const-string v2, "Tuesday"

    const-string v3, "Wednesday"

    const-string v4, "Thursday"

    const-string v5, "Friday"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc2;-><init>(Ljava/util/List;)V

    new-instance v0, Lvc2;

    const-string v6, "Sat"

    const-string v7, "Sun"

    const-string v1, "Mon"

    const-string v2, "Tue"

    const-string v3, "Wed"

    const-string v4, "Thu"

    const-string v5, "Fri"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc2;-><init>(Ljava/util/List;)V

    sput-object v0, Lvc2;->b:Lvc2;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    invoke-virtual {p1}, Lw74;->b()Lx74;

    move-result-object p1

    :cond_0
    iget-boolean v0, p1, Lx74;->d:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lu74;->nextInt()I

    move-result v0

    iget-object v1, p0, Lvc2;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lvc2;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lvc2;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Day-of-week names must be unique, but \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lvc2;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "\' was repeated"

    invoke-static {p1, p0, v0}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw v2

    :cond_2
    const-string p0, "A day-of-week name can not be empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void

    :cond_4
    const-string p0, "Day of week names must contain exactly 7 elements"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lvc2;

    if-eqz v0, :cond_0

    check-cast p1, Lvc2;

    iget-object p1, p1, Lvc2;->a:Ljava/util/List;

    iget-object p0, p0, Lvc2;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lvc2;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lvc2;->a:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v5, Lvc2$a;->c:Lvc2$a;

    const/16 v6, 0x18

    const-string v1, ", "

    const-string v2, "DayOfWeekNames("

    const-string v3, ")"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
