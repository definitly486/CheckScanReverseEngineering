.class public final Lx96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lx96;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lx96;->a:J

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lx96;
    .locals 2

    const-string v0, "programId"

    const-class v1, Lx96;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    new-instance p0, Lx96;

    invoke-direct {p0, v0, v1}, Lx96;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx96;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lx96;

    iget-wide v3, p0, Lx96;->a:J

    iget-wide p0, p1, Lx96;->a:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lx96;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PointsProgramFragmentArgs(programId="

    const-string v1, ")"

    iget-wide v2, p0, Lx96;->a:J

    invoke-static {v2, v3, v0, v1}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
