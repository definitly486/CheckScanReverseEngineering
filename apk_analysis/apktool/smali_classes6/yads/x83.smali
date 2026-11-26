.class public final Lyads/x83;
.super Lyads/z35;
.source "SourceFile"


# static fields
.field public static final e:Lyads/jv;


# instance fields
.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg2;-><init>(I)V

    sput-object v0, Lyads/x83;->e:Lyads/jv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/z35;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/x83;->c:Z

    iput-boolean v0, p0, Lyads/x83;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lyads/z35;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lyads/x83;->c:Z

    .line 11
    iput-boolean p1, p0, Lyads/x83;->d:Z

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lyads/x83;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lyads/x83;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v2, p0}, Lyads/x83;-><init>(Z)V

    return-object v2

    :cond_0
    new-instance p0, Lyads/x83;

    invoke-direct {p0}, Lyads/x83;-><init>()V

    return-object p0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lyads/x83;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lyads/x83;

    iget-boolean v0, p0, Lyads/x83;->d:Z

    iget-boolean v2, p1, Lyads/x83;->d:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lyads/x83;->c:Z

    iget-boolean p1, p1, Lyads/x83;->c:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lyads/x83;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Lyads/x83;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
