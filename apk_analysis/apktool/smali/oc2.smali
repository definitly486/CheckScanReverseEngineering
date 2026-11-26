.class public final Loc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loc2;->a:Ljava/lang/String;

    iput-object p2, p0, Loc2;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Loc2;

    if-eqz v0, :cond_0

    check-cast p1, Loc2;

    iget-object v0, p1, Loc2;->a:Ljava/lang/String;

    iget-object v1, p0, Loc2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Loc2;->b:Ljava/util/Date;

    iget-object p0, p0, Loc2;->b:Ljava/util/Date;

    invoke-static {p0}, Lm92$a;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p1}, Lm92$a;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loc2;->a:Ljava/lang/String;

    return-object p0
.end method
